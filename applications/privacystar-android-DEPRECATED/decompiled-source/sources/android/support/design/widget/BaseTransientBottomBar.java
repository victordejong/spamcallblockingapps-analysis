package android.support.design.widget;

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
import android.support.annotation.IntRange;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.design.C0089R;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.widget.BaseTransientBottomBar;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SnackbarManager;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.p001v4.view.AccessibilityDelegateCompat;
import android.support.p001v4.view.OnApplyWindowInsetsListener;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.WindowInsetsCompat;
import android.support.p001v4.view.accessibility.AccessibilityManagerCompat;
import android.support.p001v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar.class */
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
    private final android.support.design.snackbar.ContentViewCallback contentViewCallback;
    private final Context context;
    private int duration;
    final SnackbarManager.Callback managerCallback = new SnackbarManager.Callback() { // from class: android.support.design.widget.BaseTransientBottomBar.4
        @Override // android.support.design.widget.SnackbarManager.Callback
        public void dismiss(int i) {
            BaseTransientBottomBar.handler.sendMessage(BaseTransientBottomBar.handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }

        @Override // android.support.design.widget.SnackbarManager.Callback
        public void show() {
            BaseTransientBottomBar.handler.sendMessage(BaseTransientBottomBar.handler.obtainMessage(0, BaseTransientBottomBar.this));
        }
    };
    private final ViewGroup targetParent;
    protected final SnackbarBaseLayout view;

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$BaseCallback.class */
    public static abstract class BaseCallback<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$BaseCallback$DismissEvent.class */
        public @interface DismissEvent {
        }

        public void onDismissed(B b, int i) {
        }

        public void onShown(B b) {
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {
        private final BehaviorDelegate delegate = new BehaviorDelegate(this);

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.delegate.setBaseTransientBottomBar(baseTransientBottomBar);
        }

        @Override // android.support.design.widget.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return this.delegate.canSwipeDismissView(view);
        }

        @Override // android.support.design.widget.SwipeDismissBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.delegate.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$BehaviorDelegate.class */
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
            if (actionMasked != 3) {
                switch (actionMasked) {
                    case 0:
                        if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                            SnackbarManager.getInstance().pauseTimeout(this.managerCallback);
                            return;
                        }
                        return;
                    case 1:
                        break;
                    default:
                        return;
                }
            }
            SnackbarManager.getInstance().restoreTimeoutIfPaused(this.managerCallback);
        }

        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.managerCallback = baseTransientBottomBar.managerCallback;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$ContentViewCallback.class */
    public interface ContentViewCallback extends android.support.design.snackbar.ContentViewCallback {
    }

    @Retention(RetentionPolicy.SOURCE)
    @IntRange(from = 1)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$Duration.class */
    public @interface Duration {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$OnAttachStateChangeListener.class */
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener.class */
    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i, int i2, int i3, int i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout.class */
    public static class SnackbarBaseLayout extends FrameLayout {
        private final AccessibilityManager accessibilityManager;
        private OnAttachStateChangeListener onAttachStateChangeListener;
        private OnLayoutChangeListener onLayoutChangeListener;
        private final AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0089R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C0089R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, obtainStyledAttributes.getDimensionPixelSize(C0089R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            this.touchExplorationStateChangeListener = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: android.support.design.widget.BaseTransientBottomBar.SnackbarBaseLayout.1
                @Override // android.support.p001v4.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
                public void onTouchExplorationStateChanged(boolean z) {
                    SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
            setClickableOrFocusableBasedOnAccessibility(this.accessibilityManager.isTouchExplorationEnabled());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.onAttachStateChangeListener != null) {
                this.onAttachStateChangeListener.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.onAttachStateChangeListener != null) {
                this.onAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.onLayoutChangeListener != null) {
                this.onLayoutChangeListener.onLayoutChange(this, i, i2, i3, i4);
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
        SNACKBAR_STYLE_ATTR = new int[]{C0089R.C0090attr.snackbarStyle};
        handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                switch (message.what) {
                    case 0:
                        ((BaseTransientBottomBar) message.obj).showView();
                        return true;
                    case 1:
                        ((BaseTransientBottomBar) message.obj).hideView(message.arg1);
                        return true;
                    default:
                        return false;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull android.support.design.snackbar.ContentViewCallback contentViewCallback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        } else if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        } else if (contentViewCallback == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        } else {
            this.targetParent = viewGroup;
            this.contentViewCallback = contentViewCallback;
            this.context = viewGroup.getContext();
            ThemeEnforcement.checkAppCompatTheme(this.context);
            this.view = (SnackbarBaseLayout) LayoutInflater.from(this.context).inflate(getSnackbarBaseLayoutResId(), this.targetParent, false);
            this.view.addView(view);
            ViewCompat.setAccessibilityLiveRegion(this.view, 1);
            ViewCompat.setImportantForAccessibility(this.view, 1);
            ViewCompat.setFitsSystemWindows(this.view, true);
            ViewCompat.setOnApplyWindowInsetsListener(this.view, new OnApplyWindowInsetsListener() { // from class: android.support.design.widget.BaseTransientBottomBar.2
                @Override // android.support.p001v4.view.OnApplyWindowInsetsListener
                public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    view2.setPadding(view2.getPaddingLeft(), view2.getPaddingTop(), view2.getPaddingRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                    return windowInsetsCompat;
                }
            });
            ViewCompat.setAccessibilityDelegate(this.view, new AccessibilityDelegateCompat() { // from class: android.support.design.widget.BaseTransientBottomBar.3
                @Override // android.support.p001v4.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                }

                @Override // android.support.p001v4.view.AccessibilityDelegateCompat
                public boolean performAccessibilityAction(View view2, int i, Bundle bundle) {
                    if (i != 1048576) {
                        return super.performAccessibilityAction(view2, i, bundle);
                    }
                    BaseTransientBottomBar.this.dismiss();
                    return true;
                }
            });
            this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
        }
    }

    private void animateViewOut(final int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, getTranslationYBottom());
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.BaseTransientBottomBar.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewHidden(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentOut(0, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.BaseTransientBottomBar.11
            private int previousAnimatedIntValue = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
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

    @NonNull
    public B addCallback(@NonNull BaseCallback<B> baseCallback) {
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
            ViewCompat.offsetTopAndBottom(this.view, translationYBottom);
        } else {
            this.view.setTranslationY(translationYBottom);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(translationYBottom, 0);
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.BaseTransientBottomBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewShown();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentIn(70, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.BaseTransientBottomBar.9
            private int previousAnimatedIntValue;

            {
                this.previousAnimatedIntValue = translationYBottom;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void dispatchDismiss(int i) {
        SnackbarManager.getInstance().dismiss(this.managerCallback, i);
    }

    public Behavior getBehavior() {
        return this.behavior;
    }

    @NonNull
    public Context getContext() {
        return this.context;
    }

    public int getDuration() {
        return this.duration;
    }

    protected SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new Behavior();
    }

    @LayoutRes
    protected int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? C0089R.C0094layout.mtrl_layout_snackbar : C0089R.C0094layout.design_layout_snackbar;
    }

    @NonNull
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
        if (this.callbacks != null) {
            for (int size = this.callbacks.size() - 1; size >= 0; size--) {
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
        if (this.callbacks != null) {
            for (int size = this.callbacks.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onShown(this);
            }
        }
    }

    @NonNull
    public B removeCallback(@NonNull BaseCallback<B> baseCallback) {
        if (!(baseCallback == null || this.callbacks == null)) {
            this.callbacks.remove(baseCallback);
            return this;
        }
        return this;
    }

    public B setBehavior(Behavior behavior) {
        this.behavior = behavior;
        return this;
    }

    @NonNull
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
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                SwipeDismissBehavior<? extends View> newBehavior = this.behavior == null ? getNewBehavior() : this.behavior;
                if (newBehavior instanceof Behavior) {
                    ((Behavior) newBehavior).setBaseTransientBottomBar(this);
                }
                newBehavior.setListener(new SwipeDismissBehavior.OnDismissListener() { // from class: android.support.design.widget.BaseTransientBottomBar.5
                    @Override // android.support.design.widget.SwipeDismissBehavior.OnDismissListener
                    public void onDismiss(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.dispatchDismiss(0);
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.OnDismissListener
                    public void onDragStateChanged(int i) {
                        switch (i) {
                            case 0:
                                SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.managerCallback);
                                return;
                            case 1:
                            case 2:
                                SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.managerCallback);
                                return;
                            default:
                                return;
                        }
                    }
                });
                layoutParams2.setBehavior(newBehavior);
                layoutParams2.insetEdge = 80;
            }
            this.targetParent.addView(this.view);
        }
        this.view.setOnAttachStateChangeListener(new OnAttachStateChangeListener() { // from class: android.support.design.widget.BaseTransientBottomBar.6
            @Override // android.support.design.widget.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.support.design.widget.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (BaseTransientBottomBar.this.isShownOrQueued()) {
                    BaseTransientBottomBar.handler.post(new Runnable() { // from class: android.support.design.widget.BaseTransientBottomBar.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.onViewHidden(3);
                        }
                    });
                }
            }
        });
        if (!ViewCompat.isLaidOut(this.view)) {
            this.view.setOnLayoutChangeListener(new OnLayoutChangeListener() { // from class: android.support.design.widget.BaseTransientBottomBar.7
                @Override // android.support.design.widget.BaseTransientBottomBar.OnLayoutChangeListener
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
