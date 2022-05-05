package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {

    /* renamed from: R */
    private static final String[] f5068R = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: S */
    private static final Property<Drawable, PointF> f5069S = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") { // from class: androidx.transition.ChangeBounds.1

        /* renamed from: a */
        private Rect f5079a = new Rect();

        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f5079a);
            Rect rect = this.f5079a;
            return new PointF(rect.left, rect.top);
        }

        /* renamed from: b */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f5079a);
            this.f5079a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f5079a);
        }
    };

    /* renamed from: T */
    private static final Property<ViewBounds, PointF> f5070T = new Property<ViewBounds, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.2
        /* renamed from: a */
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        /* renamed from: b */
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.m16886c(pointF);
        }
    };

    /* renamed from: U */
    private static final Property<ViewBounds, PointF> f5071U = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.3
        /* renamed from: a */
        public PointF get(ViewBounds viewBounds) {
            return null;
        }

        /* renamed from: b */
        public void set(ViewBounds viewBounds, PointF pointF) {
            viewBounds.m16888a(pointF);
        }
    };

    /* renamed from: V */
    private static final Property<View, PointF> f5072V = new Property<View, PointF>(PointF.class, "bottomRight") { // from class: androidx.transition.ChangeBounds.4
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            ViewUtils.m16685g(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };

    /* renamed from: W */
    private static final Property<View, PointF> f5073W = new Property<View, PointF>(PointF.class, "topLeft") { // from class: androidx.transition.ChangeBounds.5
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            ViewUtils.m16685g(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };

    /* renamed from: X */
    private static final Property<View, PointF> f5074X = new Property<View, PointF>(PointF.class, "position") { // from class: androidx.transition.ChangeBounds.6
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        /* renamed from: b */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            ViewUtils.m16685g(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    };

    /* renamed from: Y */
    private static RectEvaluator f5075Y = new RectEvaluator();

    /* renamed from: O */
    private int[] f5076O;

    /* renamed from: P */
    private boolean f5077P;

    /* renamed from: Q */
    private boolean f5078Q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$ViewBounds.class */
    public static class ViewBounds {

        /* renamed from: a */
        private int f5094a;

        /* renamed from: b */
        private int f5095b;

        /* renamed from: c */
        private int f5096c;

        /* renamed from: d */
        private int f5097d;

        /* renamed from: e */
        private View f5098e;

        /* renamed from: f */
        private int f5099f;

        /* renamed from: g */
        private int f5100g;

        ViewBounds(View view) {
            this.f5098e = view;
        }

        /* renamed from: b */
        private void m16887b() {
            ViewUtils.m16685g(this.f5098e, this.f5094a, this.f5095b, this.f5096c, this.f5097d);
            this.f5099f = 0;
            this.f5100g = 0;
        }

        /* renamed from: a */
        void m16888a(PointF pointF) {
            this.f5096c = Math.round(pointF.x);
            this.f5097d = Math.round(pointF.y);
            int i = this.f5100g + 1;
            this.f5100g = i;
            if (this.f5099f == i) {
                m16887b();
            }
        }

        /* renamed from: c */
        void m16886c(PointF pointF) {
            this.f5094a = Math.round(pointF.x);
            this.f5095b = Math.round(pointF.y);
            int i = this.f5099f + 1;
            this.f5099f = i;
            if (i == this.f5100g) {
                m16887b();
            }
        }
    }

    public ChangeBounds() {
        this.f5076O = new int[2];
        this.f5077P = false;
        this.f5078Q = false;
    }

    @SuppressLint({"RestrictedApi"})
    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5076O = new int[2];
        this.f5077P = false;
        this.f5078Q = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5200b);
        boolean a = TypedArrayUtils.m19602a(obtainStyledAttributes, (XmlResourceParser) attributeSet, "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        m16901r0(a);
    }

    /* renamed from: p0 */
    private void m16903p0(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        if (ViewCompat.m19218S(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            transitionValues.f5271a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            transitionValues.f5271a.put("android:changeBounds:parent", transitionValues.f5272b.getParent());
            if (this.f5078Q) {
                transitionValues.f5272b.getLocationInWindow(this.f5076O);
                transitionValues.f5271a.put("android:changeBounds:windowX", Integer.valueOf(this.f5076O[0]));
                transitionValues.f5271a.put("android:changeBounds:windowY", Integer.valueOf(this.f5076O[1]));
            }
            if (this.f5077P) {
                transitionValues.f5271a.put("android:changeBounds:clip", ViewCompat.m19172t(view));
            }
        }
    }

    /* renamed from: q0 */
    private boolean m16902q0(View view, View view2) {
        boolean z = true;
        if (this.f5078Q) {
            TransitionValues x = m16756x(view, true);
            if (x == null) {
                if (view == view2) {
                    z = true;
                }
                z = false;
            } else {
                if (view2 == x.f5272b) {
                    z = true;
                }
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.transition.Transition
    @Nullable
    /* renamed from: J */
    public String[] mo8629J() {
        return f5068R;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16903p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16903p0(transitionValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x011c, code lost:
        if (r0 != r0) goto L_0x011f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0146, code lost:
        if (r0 != null) goto L_0x0149;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03ae A[ORIG_RETURN, RETURN] */
    @Override // androidx.transition.Transition
    @androidx.annotation.Nullable
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator mo8625q(@androidx.annotation.NonNull final android.view.ViewGroup r12, @androidx.annotation.Nullable androidx.transition.TransitionValues r13, @androidx.annotation.Nullable androidx.transition.TransitionValues r14) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.mo8625q(android.view.ViewGroup, androidx.transition.TransitionValues, androidx.transition.TransitionValues):android.animation.Animator");
    }

    /* renamed from: r0 */
    public void m16901r0(boolean z) {
        this.f5077P = z;
    }
}
