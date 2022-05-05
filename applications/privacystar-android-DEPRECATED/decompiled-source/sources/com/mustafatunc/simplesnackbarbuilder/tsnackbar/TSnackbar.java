package com.mustafatunc.simplesnackbarbuilder.tsnackbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.ViewPropertyAnimatorCompat;
import android.support.p001v4.view.ViewPropertyAnimatorListenerAdapter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mustafatunc.simplesnackbarbuilder.C1549R;
import com.mustafatunc.simplesnackbarbuilder.tsnackbar.SnackbarManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar.class */
public class TSnackbar {
    private static final int ANIMATION_DURATION = 250;
    private static final int ANIMATION_FADE_DURATION = 180;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    private static final int MSG_DISMISS = 1;
    private static final int MSG_SHOW = 0;
    private static final Handler sHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((TSnackbar) message.obj).showView();
                    return true;
                case 1:
                    ((TSnackbar) message.obj).hideView(message.arg1);
                    return true;
                default:
                    return false;
            }
        }
    });
    private Callback mCallback;
    private final Context mContext;
    private int mDuration;
    private final SnackbarManager.Callback mManagerCallback = new SnackbarManager.Callback() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.2
        @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.SnackbarManager.Callback
        public void dismiss(int i) {
            TSnackbar.sHandler.sendMessage(TSnackbar.sHandler.obtainMessage(1, i, 0, TSnackbar.this));
        }

        @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.SnackbarManager.Callback
        public void show() {
            TSnackbar.sHandler.sendMessage(TSnackbar.sHandler.obtainMessage(0, TSnackbar.this));
        }
    };
    private final ViewGroup mParent;
    private final SnackbarLayout mView;

    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$Alignment.class */
    public enum Alignment {
        LEFT,
        CENTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$Behavior.class */
    public final class Behavior extends SwipeDismissBehavior<SnackbarLayout> {
        Behavior() {
        }

        @Override // android.support.design.widget.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarLayout;
        }

        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, SnackbarLayout snackbarLayout, MotionEvent motionEvent) {
            if (coordinatorLayout.isPointInChildBounds(snackbarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 3) {
                    switch (actionMasked) {
                        case 0:
                            SnackbarManager.getInstance().cancelTimeout(TSnackbar.this.mManagerCallback);
                            break;
                    }
                }
                SnackbarManager.getInstance().restoreTimeout(TSnackbar.this.mManagerCallback);
            }
            return super.onInterceptTouchEvent(coordinatorLayout, (CoordinatorLayout) snackbarLayout, motionEvent);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$Callback.class */
    public static abstract class Callback {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$Callback$DismissEvent.class */
        public @interface DismissEvent {
        }

        public void onDismissed(TSnackbar tSnackbar, int i) {
        }

        public void onShown(TSnackbar tSnackbar) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$Duration.class */
    public @interface Duration {
    }

    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$SnackbarLayout.class */
    public static class SnackbarLayout extends LinearLayout {
        private Button mActionView;
        private int mMaxInlineActionWidth;
        private int mMaxWidth;
        private TextView mMessageView;
        private OnAttachStateChangeListener mOnAttachStateChangeListener;
        private OnLayoutChangeListener mOnLayoutChangeListener;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$SnackbarLayout$OnAttachStateChangeListener.class */
        public interface OnAttachStateChangeListener {
            void onViewAttachedToWindow(View view);

            void onViewDetachedFromWindow(View view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar$SnackbarLayout$OnLayoutChangeListener.class */
        public interface OnLayoutChangeListener {
            void onLayoutChange(View view, int i, int i2, int i3, int i4);
        }

        public SnackbarLayout(Context context) {
            this(context, null);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1549R.styleable.SnackbarLayout);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(C1549R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.mMaxInlineActionWidth = obtainStyledAttributes.getDimensionPixelSize(C1549R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            if (obtainStyledAttributes.hasValue(C1549R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(C1549R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            setClickable(true);
            LayoutInflater.from(context).inflate(C1549R.C1554layout.tsnackbar_layout_include, this);
            ViewCompat.setAccessibilityLiveRegion(this, 1);
        }

        private static void updateTopBottomPadding(View view, int i, int i2) {
            if (ViewCompat.isPaddingRelative(view)) {
                ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
            } else {
                view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
            }
        }

        private boolean updateViewsWithinLayout(int i, int i2, int i3) {
            boolean z;
            if (i != getOrientation()) {
                setOrientation(i);
                z = true;
            } else {
                z = false;
            }
            if (!(this.mMessageView.getPaddingTop() == i2 && this.mMessageView.getPaddingBottom() == i3)) {
                updateTopBottomPadding(this.mMessageView, i2, i3);
                z = true;
            }
            return z;
        }

        void animateChildrenIn(int i, int i2) {
            ViewCompat.setAlpha(this.mMessageView, 0.0f);
            long j = i2;
            ViewPropertyAnimatorCompat duration = ViewCompat.animate(this.mMessageView).alpha(1.0f).setDuration(j);
            long j2 = i;
            duration.setStartDelay(j2).start();
            if (this.mActionView.getVisibility() == 0) {
                ViewCompat.setAlpha(this.mActionView, 0.0f);
                ViewCompat.animate(this.mActionView).alpha(1.0f).setDuration(j).setStartDelay(j2).start();
            }
        }

        void animateChildrenOut(int i, int i2) {
            ViewCompat.setAlpha(this.mMessageView, 1.0f);
            long j = i2;
            ViewPropertyAnimatorCompat duration = ViewCompat.animate(this.mMessageView).alpha(0.0f).setDuration(j);
            long j2 = i;
            duration.setStartDelay(j2).start();
            if (this.mActionView.getVisibility() == 0) {
                ViewCompat.setAlpha(this.mActionView, 1.0f);
                ViewCompat.animate(this.mActionView).alpha(0.0f).setDuration(j).setStartDelay(j2).start();
            }
        }

        Button getActionView() {
            return this.mActionView;
        }

        TextView getMessageView() {
            return this.mMessageView;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.mOnAttachStateChangeListener != null) {
                this.mOnAttachStateChangeListener.onViewAttachedToWindow(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.mOnAttachStateChangeListener != null) {
                this.mOnAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            this.mMessageView = (TextView) findViewById(C1549R.C1552id.snackbar_text);
            this.mActionView = (Button) findViewById(C1549R.C1552id.snackbar_action);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (z && this.mOnLayoutChangeListener != null) {
                this.mOnLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            boolean z;
            super.onMeasure(i, i2);
            int i3 = i;
            if (this.mMaxWidth > 0) {
                i3 = i;
                if (getMeasuredWidth() > this.mMaxWidth) {
                    i3 = View.MeasureSpec.makeMeasureSpec(this.mMaxWidth, 1073741824);
                    super.onMeasure(i3, i2);
                }
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(C1549R.dimen.design_snackbar_padding_vertical_2lines);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(C1549R.dimen.design_snackbar_padding_vertical);
            boolean z2 = this.mMessageView.getLayout().getLineCount() > 1;
            if (!z2 || this.mMaxInlineActionWidth <= 0 || this.mActionView.getMeasuredWidth() <= this.mMaxInlineActionWidth) {
                int i4 = z2 ? dimensionPixelSize : dimensionPixelSize2;
                if (updateViewsWithinLayout(0, i4, i4)) {
                    z = true;
                }
                z = false;
            } else {
                if (updateViewsWithinLayout(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                    z = true;
                }
                z = false;
            }
            if (z) {
                super.onMeasure(i3, i2);
            }
        }

        void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.mOnAttachStateChangeListener = onAttachStateChangeListener;
        }

        void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.mOnLayoutChangeListener = onLayoutChangeListener;
        }
    }

    private TSnackbar(ViewGroup viewGroup) {
        this.mParent = viewGroup;
        this.mContext = viewGroup.getContext();
        this.mView = (SnackbarLayout) LayoutInflater.from(this.mContext).inflate(C1549R.C1554layout.tsnackbar_layout, this.mParent, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateViewIn() {
        ViewCompat.setTranslationY(this.mView, -this.mView.getHeight());
        ViewCompat.animate(this.mView).translationY(0.0f).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250L).setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.7
            @Override // android.support.p001v4.view.ViewPropertyAnimatorListenerAdapter, android.support.p001v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                if (TSnackbar.this.mCallback != null) {
                    TSnackbar.this.mCallback.onShown(TSnackbar.this);
                }
                SnackbarManager.getInstance().onShown(TSnackbar.this.mManagerCallback);
            }

            @Override // android.support.p001v4.view.ViewPropertyAnimatorListenerAdapter, android.support.p001v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                TSnackbar.this.mView.animateChildrenIn(70, 180);
            }
        }).start();
    }

    private void animateViewOut(final int i) {
        ViewCompat.animate(this.mView).translationY(-this.mView.getHeight()).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250L).setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.8
            @Override // android.support.p001v4.view.ViewPropertyAnimatorListenerAdapter, android.support.p001v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                TSnackbar.this.onViewHidden(i);
            }

            @Override // android.support.p001v4.view.ViewPropertyAnimatorListenerAdapter, android.support.p001v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                TSnackbar.this.mView.animateChildrenOut(0, 180);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchDismiss(int i) {
        SnackbarManager.getInstance().dismiss(this.mManagerCallback, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        if ((r6 instanceof android.widget.Toolbar) != false) goto L_0x003d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.ViewGroup findSuitableParent(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.findSuitableParent(android.view.View):android.view.ViewGroup");
    }

    private boolean isBeingDragged() {
        ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
        boolean z = false;
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            return false;
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (!(behavior instanceof SwipeDismissBehavior)) {
            return false;
        }
        if (((SwipeDismissBehavior) behavior).getDragState() != 0) {
            z = true;
        }
        return z;
    }

    @NonNull
    public static TSnackbar make(@NonNull View view, @StringRes int i, int i2) {
        return make(view, view.getResources().getText(i), i2);
    }

    @NonNull
    public static TSnackbar make(@NonNull View view, @NonNull CharSequence charSequence, int i) {
        TSnackbar tSnackbar = new TSnackbar(findSuitableParent(view));
        tSnackbar.setText(charSequence);
        tSnackbar.setDuration(i);
        return tSnackbar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onViewHidden(int i) {
        SnackbarManager.getInstance().onDismissed(this.mManagerCallback);
        if (this.mCallback != null) {
            this.mCallback.onDismissed(this, i);
        }
        ViewParent parent = this.mView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.mView);
        }
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public int getDuration() {
        return this.mDuration;
    }

    @NonNull
    public View getView() {
        return this.mView;
    }

    final void hideView(int i) {
        if (this.mView.getVisibility() != 0 || isBeingDragged()) {
            onViewHidden(i);
        } else {
            animateViewOut(i);
        }
    }

    public boolean isShown() {
        return SnackbarManager.getInstance().isCurrent(this.mManagerCallback);
    }

    public boolean isShownOrQueued() {
        return SnackbarManager.getInstance().isCurrentOrNext(this.mManagerCallback);
    }

    @NonNull
    public TSnackbar setAction(@StringRes int i, View.OnClickListener onClickListener) {
        return setAction(this.mContext.getText(i), onClickListener);
    }

    @NonNull
    public TSnackbar setAction(CharSequence charSequence, View.OnClickListener onClickListener) {
        return setAction(charSequence, true, onClickListener);
    }

    @NonNull
    public TSnackbar setAction(CharSequence charSequence, final boolean z, final View.OnClickListener onClickListener) {
        Button actionView = this.mView.getActionView();
        if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
        } else {
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new View.OnClickListener() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    onClickListener.onClick(view);
                    if (z) {
                        TSnackbar.this.dispatchDismiss(1);
                    }
                }
            });
        }
        return this;
    }

    @NonNull
    public TSnackbar setActionTextColor(@ColorInt int i) {
        this.mView.getActionView().setTextColor(i);
        return this;
    }

    @NonNull
    public TSnackbar setActionTextColor(ColorStateList colorStateList) {
        this.mView.getActionView().setTextColor(colorStateList);
        return this;
    }

    @NonNull
    public TSnackbar setCallback(Callback callback) {
        this.mCallback = callback;
        return this;
    }

    @NonNull
    public TSnackbar setDuration(int i) {
        this.mDuration = i;
        return this;
    }

    @NonNull
    public TSnackbar setText(@StringRes int i) {
        return setText(this.mContext.getText(i));
    }

    @NonNull
    public TSnackbar setText(@NonNull CharSequence charSequence) {
        this.mView.getMessageView().setText(charSequence);
        return this;
    }

    @NonNull
    public TSnackbar setTextAlignment(@NonNull Alignment alignment) {
        TextView messageView = this.mView.getMessageView();
        if (Build.VERSION.SDK_INT >= 23) {
            if (alignment == Alignment.CENTER) {
                messageView.setTextAlignment(4);
            } else {
                messageView.setTextAlignment(2);
            }
        } else if (alignment == Alignment.CENTER) {
            messageView.setGravity(1);
        } else {
            messageView.setGravity(GravityCompat.START);
        }
        return this;
    }

    @NonNull
    public TSnackbar setTextColor(@NonNull int i) {
        this.mView.getMessageView().setTextColor(i);
        return this;
    }

    public void show() {
        SnackbarManager.getInstance().show(this.mDuration, this.mManagerCallback);
    }

    final void showView() {
        if (this.mView.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.mView.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                Behavior behavior = new Behavior();
                behavior.setStartAlphaSwipeDistance(0.1f);
                behavior.setEndAlphaSwipeDistance(0.6f);
                behavior.setSwipeDirection(0);
                behavior.setListener(new SwipeDismissBehavior.OnDismissListener() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.4
                    @Override // android.support.design.widget.SwipeDismissBehavior.OnDismissListener
                    public void onDismiss(View view) {
                        TSnackbar.this.dispatchDismiss(0);
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.OnDismissListener
                    public void onDragStateChanged(int i) {
                        switch (i) {
                            case 0:
                                SnackbarManager.getInstance().restoreTimeout(TSnackbar.this.mManagerCallback);
                                return;
                            case 1:
                            case 2:
                                SnackbarManager.getInstance().cancelTimeout(TSnackbar.this.mManagerCallback);
                                return;
                            default:
                                return;
                        }
                    }
                });
                ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(behavior);
            }
            this.mParent.addView(this.mView);
        }
        this.mView.setOnAttachStateChangeListener(new SnackbarLayout.OnAttachStateChangeListener() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.5
            @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.SnackbarLayout.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.SnackbarLayout.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (TSnackbar.this.isShownOrQueued()) {
                    TSnackbar.sHandler.post(new Runnable() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.5.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TSnackbar.this.onViewHidden(3);
                        }
                    });
                }
            }
        });
        if (ViewCompat.isLaidOut(this.mView)) {
            animateViewIn();
        } else {
            this.mView.setOnLayoutChangeListener(new SnackbarLayout.OnLayoutChangeListener() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.6
                @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.SnackbarLayout.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4) {
                    TSnackbar.this.animateViewIn();
                    TSnackbar.this.mView.setOnLayoutChangeListener(null);
                }
            });
        }
    }
}
