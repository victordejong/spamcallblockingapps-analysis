package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p023g.AbstractC0548q;
import androidx.core.p023g.C0503a;
import androidx.core.p023g.C0529ac;
import androidx.core.p023g.C0552u;
import androidx.core.p023g.p024a.C0507c;
import androidx.core.p023g.p024a.C0510d;
import com.google.android.material.C1284R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    static final int ANIMATION_DURATION = 250;
    static final int ANIMATION_FADE_DURATION = 180;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    static final int MSG_DISMISS = 1;
    static final int MSG_SHOW = 0;
    private static final int[] SNACKBAR_STYLE_ATTR;
    private static final boolean USE_OFFSET_API;
    static final Handler handler;
    private final AccessibilityManager accessibilityManager;
    private Behavior behavior;
    private List<BaseCallback<B>> callbacks;
    private final com.google.android.material.snackbar.ContentViewCallback contentViewCallback;
    private final Context context;
    private int duration;
    final SnackbarManager.Callback managerCallback = new SnackbarManager.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void dismiss(int i) {
            BaseTransientBottomBar.handler.sendMessage(BaseTransientBottomBar.handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void show() {
            BaseTransientBottomBar.handler.sendMessage(BaseTransientBottomBar.handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    };
    private final ViewGroup targetParent;
    protected final SnackbarBaseLayout view;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback.class */
    public static abstract class BaseCallback<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback$DismissEvent.class */
        public @interface DismissEvent {
        }

        public void onDismissed(B b, int i) {
        }

        public void onShown(B b) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {
        private final BehaviorDelegate delegate = new BehaviorDelegate(this);

        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.delegate.setBaseTransientBottomBar(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return this.delegate.canSwipeDismissView(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0396b
        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.delegate.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate.class */
    public static class BehaviorDelegate {
        private SnackbarManager.Callback managerCallback;

        public BehaviorDelegate(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
            swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
            swipeDismissBehavior.setSwipeDirection(0);
        }

        public boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (!coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return;
                }
                SnackbarManager.getInstance().pauseTimeout(this.managerCallback);
            } else if (actionMasked != 1 && actionMasked != 3) {
            } else {
                SnackbarManager.getInstance().restoreTimeoutIfPaused(this.managerCallback);
            }
        }

        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.managerCallback = baseTransientBottomBar.managerCallback;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$ContentViewCallback.class */
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Duration.class */
    public @interface Duration {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener.class */
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener.class */
    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i, int i2, int i3, int i4);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout.class */
    public static class SnackbarBaseLayout extends FrameLayout {
        private final AccessibilityManager accessibilityManager;
        private OnAttachStateChangeListener onAttachStateChangeListener;
        private OnLayoutChangeListener onLayoutChangeListener;
        private final C0507c.AbstractC0508a touchExplorationStateChangeListener;

        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1284R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C1284R.styleable.SnackbarLayout_elevation)) {
                C0552u.m6280a(this, obtainStyledAttributes.getDimensionPixelSize(C1284R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            this.touchExplorationStateChangeListener = new C0507c.AbstractC0508a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
                @Override // androidx.core.p023g.p024a.C0507c.AbstractC0508a
                public void onTouchExplorationStateChanged(boolean z) {
                    SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            C0507c.m6458a(this.accessibilityManager, this.touchExplorationStateChangeListener);
            setClickableOrFocusableBasedOnAccessibility(this.accessibilityManager.isTouchExplorationEnabled());
        }

        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.onAttachStateChangeListener;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewAttachedToWindow(this);
            }
            C0552u.m6228s(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.onAttachStateChangeListener;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
            C0507c.m6457b(this.accessibilityManager, this.touchExplorationStateChangeListener);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            OnLayoutChangeListener onLayoutChangeListener = this.onLayoutChangeListener;
            if (onLayoutChangeListener != null) {
                onLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
            }
        }

        void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.onAttachStateChangeListener = onAttachStateChangeListener;
        }

        void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.onLayoutChangeListener = onLayoutChangeListener;
        }
    }

    static {
        USE_OFFSET_API = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        SNACKBAR_STYLE_ATTR = new int[]{C1284R.attr.snackbarStyle};
        handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ((BaseTransientBottomBar) message.obj).showView();
                    return true;
                } else if (i != 1) {
                    return false;
                } else {
                    ((BaseTransientBottomBar) message.obj).hideView(message.arg1);
                    return true;
                }
            }
        });
    }

    public BaseTransientBottomBar(ViewGroup viewGroup, View view, com.google.android.material.snackbar.ContentViewCallback contentViewCallback) {
        if (viewGroup != null) {
            if (view == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null content");
            }
            if (contentViewCallback == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
            }
            this.targetParent = viewGroup;
            this.contentViewCallback = contentViewCallback;
            this.context = viewGroup.getContext();
            ThemeEnforcement.checkAppCompatTheme(this.context);
            this.view = (SnackbarBaseLayout) LayoutInflater.from(this.context).inflate(getSnackbarBaseLayoutResId(), this.targetParent, false);
            this.view.addView(view);
            C0552u.m6251c((View) this.view, 1);
            C0552u.m6258b((View) this.view, 1);
            C0552u.m6255b((View) this.view, true);
            C0552u.m6267a(this.view, new AbstractC0548q() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
                @Override // androidx.core.p023g.AbstractC0548q
                public C0529ac onApplyWindowInsets(View view2, C0529ac c0529ac) {
                    view2.setPadding(view2.getPaddingLeft(), view2.getPaddingTop(), view2.getPaddingRight(), c0529ac.m6361d());
                    return c0529ac;
                }
            });
            C0552u.m6269a(this.view, new C0503a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
                @Override // androidx.core.p023g.C0503a
                public void onInitializeAccessibilityNodeInfo(View view2, C0510d c0510d) {
                    super.onInitializeAccessibilityNodeInfo(view2, c0510d);
                    c0510d.m6455a(1048576);
                    c0510d.m6395m(true);
                }

                @Override // androidx.core.p023g.C0503a
                public boolean performAccessibilityAction(View view2, int i, Bundle bundle) {
                    if (i == 1048576) {
                        BaseTransientBottomBar.this.dismiss();
                        return true;
                    }
                    return super.performAccessibilityAction(view2, i, bundle);
                }
            });
            this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
    }

    private void animateViewOut(final int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, getTranslationYBottom());
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewHidden(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentOut(0, BaseTransientBottomBar.ANIMATION_FADE_DURATION);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            private int previousAnimatedIntValue = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    C0552u.m6246e(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
                } else {
                    BaseTransientBottomBar.this.view.setTranslationY(intValue);
                }
                this.previousAnimatedIntValue = intValue;
            }
        });
        valueAnimator.start();
    }

    private int getTranslationYBottom() {
        int height = this.view.getHeight();
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    public B addCallback(BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.callbacks == null) {
            this.callbacks = new ArrayList();
        }
        this.callbacks.add(baseCallback);
        return this;
    }

    void animateViewIn() {
        final int translationYBottom = getTranslationYBottom();
        if (USE_OFFSET_API) {
            C0552u.m6246e(this.view, translationYBottom);
        } else {
            this.view.setTranslationY(translationYBottom);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(translationYBottom, 0);
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewShown();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentIn(70, BaseTransientBottomBar.ANIMATION_FADE_DURATION);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
            private int previousAnimatedIntValue;

            {
                BaseTransientBottomBar.this = this;
                this.previousAnimatedIntValue = translationYBottom;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    C0552u.m6246e(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
                } else {
                    BaseTransientBottomBar.this.view.setTranslationY(intValue);
                }
                this.previousAnimatedIntValue = intValue;
            }
        });
        valueAnimator.start();
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public void dispatchDismiss(int i) {
        SnackbarManager.getInstance().dismiss(this.managerCallback, i);
    }

    public Behavior getBehavior() {
        return this.behavior;
    }

    public Context getContext() {
        return this.context;
    }

    public int getDuration() {
        return this.duration;
    }

    protected SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new Behavior();
    }

    protected int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? C1284R.layout.mtrl_layout_snackbar : C1284R.layout.design_layout_snackbar;
    }

    public View getView() {
        return this.view;
    }

    protected boolean hasSnackbarStyleAttr() {
        TypedArray obtainStyledAttributes = this.context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
        boolean z = false;
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            z = true;
        }
        return z;
    }

    final void hideView(int i) {
        if (!shouldAnimate() || this.view.getVisibility() != 0) {
            onViewHidden(i);
        } else {
            animateViewOut(i);
        }
    }

    public boolean isShown() {
        return SnackbarManager.getInstance().isCurrent(this.managerCallback);
    }

    public boolean isShownOrQueued() {
        return SnackbarManager.getInstance().isCurrentOrNext(this.managerCallback);
    }

    void onViewHidden(int i) {
        SnackbarManager.getInstance().onDismissed(this.managerCallback);
        List<BaseCallback<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onDismissed(this, i);
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    void onViewShown() {
        SnackbarManager.getInstance().onShown(this.managerCallback);
        List<BaseCallback<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onShown(this);
            }
        }
    }

    public B removeCallback(BaseCallback<B> baseCallback) {
        List<BaseCallback<B>> list;
        if (baseCallback != null && (list = this.callbacks) != null) {
            list.remove(baseCallback);
            return this;
        }
        return this;
    }

    public B setBehavior(Behavior behavior) {
        this.behavior = behavior;
        return this;
    }

    public B setDuration(int i) {
        this.duration = i;
        return this;
    }

    boolean shouldAnimate() {
        boolean z = true;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.accessibilityManager.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            z = false;
        }
        return z;
    }

    public void show() {
        SnackbarManager.getInstance().show(getDuration(), this.managerCallback);
    }

    final void showView() {
        if (this.view.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0399e) {
                CoordinatorLayout.C0399e c0399e = (CoordinatorLayout.C0399e) layoutParams;
                Behavior behavior = this.behavior;
                Behavior behavior2 = behavior;
                if (behavior == null) {
                    behavior2 = getNewBehavior();
                }
                if (behavior2 instanceof Behavior) {
                    ((Behavior) behavior2).setBaseTransientBottomBar(this);
                }
                behavior2.setListener(new SwipeDismissBehavior.OnDismissListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                    public void onDismiss(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.dispatchDismiss(0);
                    }

                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                    public void onDragStateChanged(int i) {
                        if (i == 0) {
                            SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.managerCallback);
                        } else if (i != 1 && i != 2) {
                        } else {
                            SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.managerCallback);
                        }
                    }
                });
                c0399e.m6783a(behavior2);
                c0399e.f1529g = 80;
            }
            this.targetParent.addView(this.view);
        }
        this.view.setOnAttachStateChangeListener(new OnAttachStateChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (BaseTransientBottomBar.this.isShownOrQueued()) {
                    BaseTransientBottomBar.handler.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.onViewHidden(3);
                        }
                    });
                }
            }
        });
        if (!C0552u.m6295A(this.view)) {
            this.view.setOnLayoutChangeListener(new OnLayoutChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4) {
                    BaseTransientBottomBar.this.view.setOnLayoutChangeListener(null);
                    if (BaseTransientBottomBar.this.shouldAnimate()) {
                        BaseTransientBottomBar.this.animateViewIn();
                    } else {
                        BaseTransientBottomBar.this.onViewShown();
                    }
                }
            });
        } else if (shouldAnimate()) {
            animateViewIn();
        } else {
            onViewShown();
        }
    }
}
