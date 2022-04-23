package android.support.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.content.res.TypedArrayUtils;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
/* loaded from: classes-dex2jar.jar:android/support/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {
    private boolean mReparent;
    private boolean mResizeClip;
    private int[] mTempLocation;
    private static final String PROPNAME_BOUNDS = "android:changeBounds:bounds";
    private static final String PROPNAME_CLIP = "android:changeBounds:clip";
    private static final String PROPNAME_PARENT = "android:changeBounds:parent";
    private static final String PROPNAME_WINDOW_X = "android:changeBounds:windowX";
    private static final String PROPNAME_WINDOW_Y = "android:changeBounds:windowY";
    private static final String[] sTransitionProperties = {PROPNAME_BOUNDS, PROPNAME_CLIP, PROPNAME_PARENT, PROPNAME_WINDOW_X, PROPNAME_WINDOW_Y};
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: android.support.transition.ChangeBounds.1
        private Rect mBounds = new Rect();

        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.mBounds);
            return new PointF(this.mBounds.left, this.mBounds.top);
        }

        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.mBounds);
            this.mBounds.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.mBounds);
        }
    };
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.ChangeBounds.2
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setTopLeft(pointF);
        }
    };
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.ChangeBounds.3
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.setBottomRight(pointF);
        }
    };
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: android.support.transition.ChangeBounds.4
        public PointF get(View view) {
            return null;
        }

        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "topLeft") { // from class: android.support.transition.ChangeBounds.5
        public PointF get(View view) {
            return null;
        }

        public void set(View view, PointF pointF) {
            ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<View, PointF> POSITION_PROPERTY = new Property<View, PointF>(PointF.class, TextModalInteraction.EVENT_KEY_ACTION_POSITION) { // from class: android.support.transition.ChangeBounds.6
        public PointF get(View view) {
            return null;
        }

        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            ViewUtils.setLeftTopRightBottom(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };
    private static RectEvaluator sRectEvaluator = new RectEvaluator();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:android/support/transition/ChangeBounds$ViewBounds.class */
    public static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        ViewBounds(View view) {
            this.mView = view;
        }

        private void setLeftTopRightBottom() {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }

        void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            this.mBottomRightCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }

        void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            this.mTopLeftCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }
    }

    public ChangeBounds() {
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLocation = new int[2];
        this.mResizeClip = false;
        this.mReparent = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.CHANGE_BOUNDS);
        boolean namedBoolean = TypedArrayUtils.getNamedBoolean(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        setResizeClip(namedBoolean);
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (ViewCompat.isLaidOut(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            transitionValues.values.put(PROPNAME_BOUNDS, new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
            if (this.mReparent) {
                transitionValues.view.getLocationInWindow(this.mTempLocation);
                transitionValues.values.put(PROPNAME_WINDOW_X, Integer.valueOf(this.mTempLocation[0]));
                transitionValues.values.put(PROPNAME_WINDOW_Y, Integer.valueOf(this.mTempLocation[1]));
            }
            if (this.mResizeClip) {
                transitionValues.values.put(PROPNAME_CLIP, ViewCompat.getClipBounds(view));
            }
        }
    }

    private boolean parentMatches(View view, View view2) {
        boolean z = true;
        if (this.mReparent) {
            TransitionValues matchedTransitionValues = getMatchedTransitionValues(view, true);
            if (matchedTransitionValues == null) {
                if (view == view2) {
                    z = true;
                }
                z = false;
            } else {
                if (view2 == matchedTransitionValues.view) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // android.support.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x011c, code lost:
        if (r0 != r0) goto L_0x011f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0146, code lost:
        if (r0 != null) goto L_0x0149;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03ae A[ORIG_RETURN, RETURN] */
    @Override // android.support.transition.Transition
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator createAnimator(@android.support.annotation.NonNull final android.view.ViewGroup r12, @android.support.annotation.Nullable android.support.transition.TransitionValues r13, @android.support.annotation.Nullable android.support.transition.TransitionValues r14) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.ChangeBounds.createAnimator(android.view.ViewGroup, android.support.transition.TransitionValues, android.support.transition.TransitionValues):android.animation.Animator");
    }

    public boolean getResizeClip() {
        return this.mResizeClip;
    }

    @Override // android.support.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    public void setResizeClip(boolean z) {
        this.mResizeClip = z;
    }
}
