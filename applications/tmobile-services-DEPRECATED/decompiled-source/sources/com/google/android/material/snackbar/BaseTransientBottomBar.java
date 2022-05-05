package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1027R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    @NonNull

    /* renamed from: r */
    static final Handler f11246r;

    /* renamed from: s */
    private static final boolean f11247s;

    /* renamed from: t */
    private static final String f11248t;
    @NonNull

    /* renamed from: a */
    private final ViewGroup f11249a;

    /* renamed from: b */
    private final Context f11250b;
    @NonNull

    /* renamed from: c */
    protected final SnackbarBaseLayout f11251c;
    @NonNull

    /* renamed from: d */
    private final com.google.android.material.snackbar.ContentViewCallback f11252d;

    /* renamed from: e */
    private boolean f11253e;
    @Nullable

    /* renamed from: f */
    private View f11254f;
    @RequiresApi

    /* renamed from: g */
    private final Runnable f11255g;
    @Nullable

    /* renamed from: h */
    private Rect f11256h;

    /* renamed from: i */
    private int f11257i;

    /* renamed from: j */
    private int f11258j;

    /* renamed from: k */
    private int f11259k;

    /* renamed from: l */
    private int f11260l;

    /* renamed from: m */
    private int f11261m;

    /* renamed from: n */
    private List<BaseCallback<B>> f11262n;

    /* renamed from: o */
    private Behavior f11263o;
    @Nullable

    /* renamed from: p */
    private final AccessibilityManager f11264p;
    @NonNull

    /* renamed from: q */
    SnackbarManager.Callback f11265q;

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$2 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$2.class */
    class RunnableC11622 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ BaseTransientBottomBar f11279f;

        @Override // java.lang.Runnable
        public void run() {
            int x;
            BaseTransientBottomBar baseTransientBottomBar = this.f11279f;
            if (baseTransientBottomBar.f11251c != null && baseTransientBottomBar.f11250b != null && (x = (this.f11279f.m9039x() - this.f11279f.m9037z()) + ((int) this.f11279f.f11251c.getTranslationY())) < this.f11279f.f11260l) {
                ViewGroup.LayoutParams layoutParams = this.f11279f.f11251c.getLayoutParams();
                if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                    Log.w(BaseTransientBottomBar.f11248t, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                    return;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += this.f11279f.f11260l - x;
                this.f11279f.f11251c.requestLayout();
            }
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$3 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$3.class */
    class C11633 implements OnApplyWindowInsetsListener {

        /* renamed from: a */
        final /* synthetic */ BaseTransientBottomBar f11280a;

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        @NonNull
        /* renamed from: a */
        public WindowInsetsCompat mo9036a(View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            this.f11280a.f11257i = windowInsetsCompat.m19096e();
            this.f11280a.f11258j = windowInsetsCompat.m19095f();
            this.f11280a.f11259k = windowInsetsCompat.m19094g();
            this.f11280a.m9062O();
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$4 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$4.class */
    class C11644 extends AccessibilityDelegateCompat {

        /* renamed from: a */
        final /* synthetic */ BaseTransientBottomBar f11281a;

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.m19031a(1048576);
            accessibilityNodeInfoCompat.m19016h0(true);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i != 1048576) {
                return super.performAccessibilityAction(view, i, bundle);
            }
            this.f11281a.mo9024s();
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$5 */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$5.class */
    class C11655 implements SnackbarManager.Callback {

        /* renamed from: a */
        final /* synthetic */ BaseTransientBottomBar f11282a;

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        /* renamed from: a */
        public void mo9002a(int i) {
            Handler handler = BaseTransientBottomBar.f11246r;
            handler.sendMessage(handler.obtainMessage(1, i, 0, this.f11282a));
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        /* renamed from: b */
        public void mo9001b() {
            Handler handler = BaseTransientBottomBar.f11246r;
            handler.sendMessage(handler.obtainMessage(0, this.f11282a));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$AnimationMode.class */
    public @interface AnimationMode {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback.class */
    public static abstract class BaseCallback<B> {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback$DismissEvent.class */
        public @interface DismissEvent {
        }

        /* renamed from: a */
        public void mo9023a(B b, int i) {
        }

        /* renamed from: b */
        public void mo9022b(B b) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {
        @NonNull

        /* renamed from: k */
        private final BehaviorDelegate f11288k = new BehaviorDelegate(this);

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: P */
        public void m9031P(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f11288k.m9027c(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: E */
        public boolean mo9033E(View view) {
            return this.f11288k.m9029a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: k */
        public boolean mo9030k(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            this.f11288k.m9028b(coordinatorLayout, view, motionEvent);
            return super.mo9030k(coordinatorLayout, view, motionEvent);
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate.class */
    public static class BehaviorDelegate {

        /* renamed from: a */
        private SnackbarManager.Callback f11289a;

        public BehaviorDelegate(@NonNull SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.m10559L(0.1f);
            swipeDismissBehavior.m10561J(0.6f);
            swipeDismissBehavior.m10558M(0);
        }

        /* renamed from: a */
        public boolean m9029a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        /* renamed from: b */
        public void m9028b(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    SnackbarManager.m9013c().m9005k(this.f11289a);
                }
            } else if (coordinatorLayout.m19948F(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                SnackbarManager.m9013c().m9006j(this.f11289a);
            }
        }

        /* renamed from: c */
        public void m9027c(@NonNull BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f11289a = baseTransientBottomBar.f11265q;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$ContentViewCallback.class */
    public interface ContentViewCallback extends com.google.android.material.snackbar.ContentViewCallback {
    }

    @IntRange
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Duration.class */
    public @interface Duration {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener.class */
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener.class */
    public interface OnLayoutChangeListener {
        /* renamed from: a */
        void mo9026a(View view, int i, int i2, int i3, int i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout.class */
    public static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: m */
        private static final View.OnTouchListener f11290m = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };

        /* renamed from: f */
        private OnLayoutChangeListener f11291f;

        /* renamed from: g */
        private OnAttachStateChangeListener f11292g;

        /* renamed from: h */
        private int f11293h;

        /* renamed from: i */
        private final float f11294i;

        /* renamed from: j */
        private final float f11295j;

        /* renamed from: k */
        private ColorStateList f11296k;

        /* renamed from: l */
        private PorterDuff.Mode f11297l;

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(@NonNull Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(@NonNull Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.m8698c(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C1027R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C1027R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.m19169u0(this, obtainStyledAttributes.getDimensionPixelSize(C1027R.styleable.SnackbarLayout_elevation, 0));
            }
            this.f11293h = obtainStyledAttributes.getInt(C1027R.styleable.SnackbarLayout_animationMode, 0);
            this.f11294i = obtainStyledAttributes.getFloat(C1027R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(MaterialResources.m9394a(context2, obtainStyledAttributes, C1027R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(ViewUtils.m9427i(obtainStyledAttributes.getInt(C1027R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f11295j = obtainStyledAttributes.getFloat(C1027R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f11290m);
            setFocusable(true);
            if (getBackground() == null) {
                ViewCompat.m19177q0(this, m9025a());
            }
        }

        @NonNull
        /* renamed from: a */
        private Drawable m9025a() {
            float dimension = getResources().getDimension(C1027R.dimen.mtrl_snackbar_background_corner_radius);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(dimension);
            gradientDrawable.setColor(MaterialColors.m10010g(this, C1027R.attr.colorSurface, C1027R.attr.colorOnSurface, getBackgroundOverlayColorAlpha()));
            if (this.f11296k == null) {
                return DrawableCompat.m19495r(gradientDrawable);
            }
            Drawable r = DrawableCompat.m19495r(gradientDrawable);
            DrawableCompat.m19498o(r, this.f11296k);
            return r;
        }

        float getActionTextColorAlpha() {
            return this.f11295j;
        }

        int getAnimationMode() {
            return this.f11293h;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f11294i;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.f11292g;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewAttachedToWindow(this);
            }
            ViewCompat.m19189k0(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.f11292g;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            OnLayoutChangeListener onLayoutChangeListener = this.f11291f;
            if (onLayoutChangeListener != null) {
                onLayoutChangeListener.mo9026a(this, i, i2, i3, i4);
            }
        }

        void setAnimationMode(int i) {
            this.f11293h = i;
        }

        @Override // android.view.View
        public void setBackground(@Nullable Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(@Nullable Drawable drawable) {
            Drawable drawable2 = drawable;
            if (drawable != null) {
                drawable2 = drawable;
                if (this.f11296k != null) {
                    drawable2 = DrawableCompat.m19495r(drawable.mutate());
                    DrawableCompat.m19498o(drawable2, this.f11296k);
                    DrawableCompat.m19497p(drawable2, this.f11297l);
                }
            }
            super.setBackgroundDrawable(drawable2);
        }

        @Override // android.view.View
        public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
            this.f11296k = colorStateList;
            if (getBackground() != null) {
                Drawable r = DrawableCompat.m19495r(getBackground().mutate());
                DrawableCompat.m19498o(r, colorStateList);
                DrawableCompat.m19497p(r, this.f11297l);
                if (r != getBackground()) {
                    super.setBackgroundDrawable(r);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
            this.f11297l = mode;
            if (getBackground() != null) {
                Drawable r = DrawableCompat.m19495r(getBackground().mutate());
                DrawableCompat.m19497p(r, mode);
                if (r != getBackground()) {
                    super.setBackgroundDrawable(r);
                }
            }
        }

        void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.f11292g = onAttachStateChangeListener;
        }

        @Override // android.view.View
        public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f11290m);
            super.setOnClickListener(onClickListener);
        }

        void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.f11291f = onLayoutChangeListener;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f11247s = i >= 16 && i <= 19;
        f11248t = BaseTransientBottomBar.class.getSimpleName();
        f11246r = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(@NonNull Message message) {
                int i2 = message.what;
                if (i2 == 0) {
                    ((BaseTransientBottomBar) message.obj).m9068I();
                    return true;
                } else if (i2 != 1) {
                    return false;
                } else {
                    ((BaseTransientBottomBar) message.obj).m9076A(message.arg1);
                    return true;
                }
            }
        });
    }

    /* renamed from: C */
    private boolean m9074C() {
        ViewGroup.LayoutParams layoutParams = this.f11251c.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams).m19892f() instanceof SwipeDismissBehavior);
    }

    /* renamed from: F */
    private void m9071F(CoordinatorLayout.LayoutParams layoutParams) {
        Behavior behavior = this.f11263o;
        SwipeDismissBehavior<? extends View> swipeDismissBehavior = behavior;
        if (behavior == null) {
            swipeDismissBehavior = m9041v();
        }
        if (swipeDismissBehavior instanceof Behavior) {
            ((Behavior) swipeDismissBehavior).m9031P(this);
        }
        swipeDismissBehavior.m10560K(new SwipeDismissBehavior.OnDismissListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
            /* renamed from: a */
            public void mo9035a(@NonNull View view) {
                view.setVisibility(8);
                BaseTransientBottomBar.this.m9043t(0);
            }

            @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
            /* renamed from: b */
            public void mo9034b(int i) {
                if (i == 0) {
                    SnackbarManager.m9013c().m9005k(BaseTransientBottomBar.this.f11265q);
                } else if (i == 1 || i == 2) {
                    SnackbarManager.m9013c().m9006j(BaseTransientBottomBar.this.f11265q);
                }
            }
        });
        layoutParams.m19883o(swipeDismissBehavior);
        if (this.f11254f == null) {
            layoutParams.f2783g = 80;
        }
    }

    /* renamed from: H */
    private boolean m9069H() {
        return this.f11260l > 0 && !this.f11253e && m9074C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public void m9067J() {
        if (m9070G()) {
            m9046p();
            return;
        }
        this.f11251c.setVisibility(0);
        m9072E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public void m9066K() {
        ValueAnimator u = m9042u(0.0f, 1.0f);
        ValueAnimator w = m9040w(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(u, w);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m9072E();
            }
        });
        animatorSet.start();
    }

    /* renamed from: L */
    private void m9065L(final int i) {
        ValueAnimator u = m9042u(1.0f, 0.0f);
        u.setDuration(75L);
        u.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m9073D(i);
            }
        });
        u.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public void m9064M() {
        final int y = m9038y();
        if (f11247s) {
            ViewCompat.m19212Y(this.f11251c, y);
        } else {
            this.f11251c.setTranslationY(y);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(y, 0);
        valueAnimator.setInterpolator(AnimationUtils.f9924b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m9072E();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f11252d.mo9019a(70, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15

            /* renamed from: a */
            private int f11272a;

            {
                this.f11272a = y;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f11247s) {
                    ViewCompat.m19212Y(BaseTransientBottomBar.this.f11251c, intValue - this.f11272a);
                } else {
                    BaseTransientBottomBar.this.f11251c.setTranslationY(intValue);
                }
                this.f11272a = intValue;
            }
        });
        valueAnimator.start();
    }

    /* renamed from: N */
    private void m9063N(final int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m9038y());
        valueAnimator.setInterpolator(AnimationUtils.f9924b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m9073D(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f11252d.mo9018b(0, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.17

            /* renamed from: a */
            private int f11277a = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f11247s) {
                    ViewCompat.m19212Y(BaseTransientBottomBar.this.f11251c, intValue - this.f11277a);
                } else {
                    BaseTransientBottomBar.this.f11251c.setTranslationY(intValue);
                }
                this.f11277a = intValue;
            }
        });
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O */
    public void m9062O() {
        ViewGroup.LayoutParams layoutParams = this.f11251c.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f11256h == null) {
            Log.w(f11248t, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        int i = this.f11254f != null ? this.f11261m : this.f11257i;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = this.f11256h;
        marginLayoutParams.bottomMargin = rect.bottom + i;
        marginLayoutParams.leftMargin = rect.left + this.f11258j;
        marginLayoutParams.rightMargin = rect.right + this.f11259k;
        this.f11251c.requestLayout();
        if (Build.VERSION.SDK_INT >= 29 && m9069H()) {
            this.f11251c.removeCallbacks(this.f11255g);
            this.f11251c.post(this.f11255g);
        }
    }

    /* renamed from: q */
    private void m9045q(int i) {
        if (this.f11251c.getAnimationMode() == 1) {
            m9065L(i);
        } else {
            m9063N(i);
        }
    }

    /* renamed from: r */
    private int m9044r() {
        View view = this.f11254f;
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.f11249a.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f11249a.getHeight()) - i;
    }

    /* renamed from: u */
    private ValueAnimator m9042u(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(AnimationUtils.f9923a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                BaseTransientBottomBar.this.f11251c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: w */
    private ValueAnimator m9040w(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(AnimationUtils.f9926d);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BaseTransientBottomBar.this.f11251c.setScaleX(floatValue);
                BaseTransientBottomBar.this.f11251c.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    /* renamed from: x */
    public int m9039x() {
        WindowManager windowManager = (WindowManager) this.f11250b.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: y */
    private int m9038y() {
        int height = this.f11251c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f11251c.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public int m9037z() {
        int[] iArr = new int[2];
        this.f11251c.getLocationOnScreen(iArr);
        return iArr[1] + this.f11251c.getHeight();
    }

    /* renamed from: A */
    final void m9076A(int i) {
        if (!m9070G() || this.f11251c.getVisibility() != 0) {
            m9073D(i);
        } else {
            m9045q(i);
        }
    }

    /* renamed from: B */
    public boolean m9075B() {
        return SnackbarManager.m9013c().m9011e(this.f11265q);
    }

    /* renamed from: D */
    void m9073D(int i) {
        SnackbarManager.m9013c().m9008h(this.f11265q);
        List<BaseCallback<B>> list = this.f11262n;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f11262n.get(size).mo9023a(this, i);
            }
        }
        ViewParent parent = this.f11251c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f11251c);
        }
    }

    /* renamed from: E */
    void m9072E() {
        SnackbarManager.m9013c().m9007i(this.f11265q);
        List<BaseCallback<B>> list = this.f11262n;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f11262n.get(size).mo9022b(this);
            }
        }
    }

    /* renamed from: G */
    boolean m9070G() {
        boolean z = true;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f11264p.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            z = false;
        }
        return z;
    }

    /* renamed from: I */
    final void m9068I() {
        this.f11251c.setOnAttachStateChangeListener(new OnAttachStateChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = BaseTransientBottomBar.this.f11251c.getRootWindowInsets()) != null) {
                    BaseTransientBottomBar.this.f11260l = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                    BaseTransientBottomBar.this.m9062O();
                }
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (BaseTransientBottomBar.this.m9075B()) {
                    BaseTransientBottomBar.f11246r.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.m9073D(3);
                        }
                    });
                }
            }
        });
        if (this.f11251c.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f11251c.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                m9071F((CoordinatorLayout.LayoutParams) layoutParams);
            }
            this.f11261m = m9044r();
            m9062O();
            this.f11251c.setVisibility(4);
            this.f11249a.addView(this.f11251c);
        }
        if (ViewCompat.m19218S(this.f11251c)) {
            m9067J();
        } else {
            this.f11251c.setOnLayoutChangeListener(new OnLayoutChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnLayoutChangeListener
                /* renamed from: a */
                public void mo9026a(View view, int i, int i2, int i3, int i4) {
                    BaseTransientBottomBar.this.f11251c.setOnLayoutChangeListener(null);
                    BaseTransientBottomBar.this.m9067J();
                }
            });
        }
    }

    /* renamed from: p */
    void m9046p() {
        this.f11251c.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
            @Override // java.lang.Runnable
            public void run() {
                SnackbarBaseLayout snackbarBaseLayout = BaseTransientBottomBar.this.f11251c;
                if (snackbarBaseLayout != null) {
                    snackbarBaseLayout.setVisibility(0);
                    if (BaseTransientBottomBar.this.f11251c.getAnimationMode() == 1) {
                        BaseTransientBottomBar.this.m9066K();
                    } else {
                        BaseTransientBottomBar.this.m9064M();
                    }
                }
            }
        });
    }

    /* renamed from: s */
    public void mo9024s() {
        m9043t(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: t */
    public void m9043t(int i) {
        SnackbarManager.m9013c().m9014b(this.f11265q, i);
    }

    @NonNull
    /* renamed from: v */
    protected SwipeDismissBehavior<? extends View> m9041v() {
        return new Behavior();
    }
}
