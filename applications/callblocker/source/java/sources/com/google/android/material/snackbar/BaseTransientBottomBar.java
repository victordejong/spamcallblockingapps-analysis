package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
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
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.AbstractC0591q;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0572ac;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import com.google.android.material.C4492a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p142a.C4505a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.C4786b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a */
    static final Handler f20577a;

    /* renamed from: d */
    private static final boolean f20578d;

    /* renamed from: e */
    private static final int[] f20579e;

    /* renamed from: f */
    private static final String f20580f;

    /* renamed from: b */
    protected final C4783e f20581b;

    /* renamed from: g */
    private final ViewGroup f20583g;

    /* renamed from: h */
    private final Context f20584h;

    /* renamed from: i */
    private final AbstractC4785a f20585i;

    /* renamed from: j */
    private int f20586j;

    /* renamed from: k */
    private boolean f20587k;

    /* renamed from: l */
    private View f20588l;

    /* renamed from: n */
    private Rect f20590n;

    /* renamed from: o */
    private int f20591o;

    /* renamed from: p */
    private int f20592p;

    /* renamed from: q */
    private int f20593q;

    /* renamed from: r */
    private int f20594r;

    /* renamed from: s */
    private int f20595s;

    /* renamed from: t */
    private List<AbstractC4779a<B>> f20596t;

    /* renamed from: u */
    private Behavior f20597u;

    /* renamed from: v */
    private final AccessibilityManager f20598v;

    /* renamed from: m */
    private final Runnable f20589m = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
        @Override // java.lang.Runnable
        public void run() {
            if (BaseTransientBottomBar.this.f20581b == null || BaseTransientBottomBar.this.f20584h == null) {
                return;
            }
            int translationY = ((int) BaseTransientBottomBar.this.f20581b.getTranslationY()) + (BaseTransientBottomBar.this.m2518t() - BaseTransientBottomBar.this.m2519s());
            if (translationY >= BaseTransientBottomBar.this.f20594r) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f20581b.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Log.w(BaseTransientBottomBar.f20580f, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = (BaseTransientBottomBar.this.f20594r - translationY) + marginLayoutParams.bottomMargin;
            BaseTransientBottomBar.this.f20581b.requestLayout();
        }
    };

    /* renamed from: c */
    C4786b.AbstractC4788a f20582c = new C4786b.AbstractC4788a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
        @Override // com.google.android.material.snackbar.C4786b.AbstractC4788a
        /* renamed from: a */
        public void mo2470a() {
            BaseTransientBottomBar.f20577a.sendMessage(BaseTransientBottomBar.f20577a.obtainMessage(0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.C4786b.AbstractC4788a
        /* renamed from: a */
        public void mo2469a(int i) {
            BaseTransientBottomBar.f20577a.sendMessage(BaseTransientBottomBar.f20577a.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        }
    };

    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: g */
        private final C4780b f20621g = new C4780b(this);

        /* renamed from: a */
        public void m2506a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f20621g.m2501a(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: a */
        public boolean mo2509a(View view) {
            return this.f20621g.m2503a(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
        /* renamed from: a */
        public boolean mo2508a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.f20621g.m2502a(coordinatorLayout, view, motionEvent);
            return super.mo2508a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$a.class */
    public static abstract class AbstractC4779a<B> {
        /* renamed from: a */
        public void m2505a(B b) {
        }

        /* renamed from: a */
        public void m2504a(B b, int i) {
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$b.class */
    public static class C4780b {

        /* renamed from: a */
        private C4786b.AbstractC4788a f20622a;

        public C4780b(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.m3684a(0.1f);
            swipeDismissBehavior.m3678b(0.6f);
            swipeDismissBehavior.m3682a(0);
        }

        /* renamed from: a */
        public void m2502a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (!coordinatorLayout.m20987a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                        return;
                    }
                    C4786b.m2484a().m2475c(this.f20622a);
                    return;
                case 1:
                case 3:
                    C4786b.m2484a().m2474d(this.f20622a);
                    return;
                case 2:
                default:
                    return;
            }
        }

        /* renamed from: a */
        public void m2501a(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.f20622a = baseTransientBottomBar.f20582c;
        }

        /* renamed from: a */
        public boolean m2503a(View view) {
            return view instanceof C4783e;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$c.class */
    public interface AbstractC4781c {
        /* renamed from: a */
        void mo2500a(View view);

        /* renamed from: b */
        void mo2499b(View view);
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$d.class */
    public interface AbstractC4782d {
        /* renamed from: a */
        void mo2498a(View view, int i, int i2, int i3, int i4);
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$e.class */
    public static class C4783e extends FrameLayout {

        /* renamed from: a */
        private static final View.OnTouchListener f20623a = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.e.1
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };

        /* renamed from: b */
        private AbstractC4782d f20624b;

        /* renamed from: c */
        private AbstractC4781c f20625c;

        /* renamed from: d */
        private int f20626d;

        /* renamed from: e */
        private final float f20627e;

        /* renamed from: f */
        private final float f20628f;

        public C4783e(Context context) {
            this(context, null);
        }

        public C4783e(Context context, AttributeSet attributeSet) {
            super(C4702i.m2826a(context, attributeSet, 0, 0), attributeSet);
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C4492a.C4504l.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C4492a.C4504l.SnackbarLayout_elevation)) {
                C0595u.m20358a(this, obtainStyledAttributes.getDimensionPixelSize(C4492a.C4504l.SnackbarLayout_elevation, 0));
            }
            this.f20626d = obtainStyledAttributes.getInt(C4492a.C4504l.SnackbarLayout_animationMode, 0);
            this.f20627e = obtainStyledAttributes.getFloat(C4492a.C4504l.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            this.f20628f = obtainStyledAttributes.getFloat(C4492a.C4504l.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f20623a);
            setFocusable(true);
        }

        float getActionTextColorAlpha() {
            return this.f20628f;
        }

        int getAnimationMode() {
            return this.f20626d;
        }

        float getBackgroundOverlayColorAlpha() {
            return this.f20627e;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.f20625c != null) {
                this.f20625c.mo2500a(this);
            }
            C0595u.m20307q(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.f20625c != null) {
                this.f20625c.mo2499b(this);
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f20624b != null) {
                this.f20624b.mo2498a(this, i, i2, i3, i4);
            }
        }

        void setAnimationMode(int i) {
            this.f20626d = i;
        }

        void setOnAttachStateChangeListener(AbstractC4781c abstractC4781c) {
            this.f20625c = abstractC4781c;
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f20623a);
            super.setOnClickListener(onClickListener);
        }

        void setOnLayoutChangeListener(AbstractC4782d abstractC4782d) {
            this.f20624b = abstractC4782d;
        }
    }

    static {
        f20578d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f20579e = new int[]{C4492a.C4494b.snackbarStyle};
        f20580f = BaseTransientBottomBar.class.getSimpleName();
        f20577a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                boolean z;
                switch (message.what) {
                    case 0:
                        ((BaseTransientBottomBar) message.obj).m2532h();
                        z = true;
                        break;
                    case 1:
                        ((BaseTransientBottomBar) message.obj).m2546c(message.arg1);
                        z = true;
                        break;
                    default:
                        z = false;
                        break;
                }
                return z;
            }
        });
    }

    public BaseTransientBottomBar(ViewGroup viewGroup, View view, AbstractC4785a abstractC4785a) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (abstractC4785a == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f20583g = viewGroup;
        this.f20585i = abstractC4785a;
        this.f20584h = viewGroup.getContext();
        C4702i.m2828a(this.f20584h);
        this.f20581b = (C4783e) LayoutInflater.from(this.f20584h).inflate(m2557a(), this.f20583g, false);
        if (this.f20581b.getBackground() == null) {
            C0595u.m20350a(this.f20581b, m2524n());
        }
        if (view instanceof SnackbarContentLayout) {
            ((SnackbarContentLayout) view).m2489a(this.f20581b.getActionTextColorAlpha());
        }
        this.f20581b.addView(view);
        ViewGroup.LayoutParams layoutParams = this.f20581b.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.f20590n = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        }
        C0595u.m20325d(this.f20581b, 1);
        C0595u.m20335b(this.f20581b, 1);
        C0595u.m20332b((View) this.f20581b, true);
        C0595u.m20343a(this.f20581b, new AbstractC0591q() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            @Override // androidx.core.p026h.AbstractC0591q
            /* renamed from: a */
            public C0572ac mo2513a(View view2, C0572ac c0572ac) {
                BaseTransientBottomBar.this.f20591o = c0572ac.m20436d();
                BaseTransientBottomBar.this.f20592p = c0572ac.m20442a();
                BaseTransientBottomBar.this.f20593q = c0572ac.m20437c();
                BaseTransientBottomBar.this.m2523o();
                return c0572ac;
            }
        });
        C0595u.m20345a(this.f20581b, new C0549a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public void mo2272a(View view2, C0553c c0553c) {
                super.mo2272a(view2, c0553c);
                c0553c.m20525a(1048576);
                c0553c.m20471k(true);
            }

            @Override // androidx.core.p026h.C0549a
            /* renamed from: a */
            public boolean mo2512a(View view2, int i, Bundle bundle) {
                boolean mo2512a;
                if (i == 1048576) {
                    BaseTransientBottomBar.this.mo2490e();
                    mo2512a = true;
                } else {
                    mo2512a = super.mo2512a(view2, i, bundle);
                }
                return mo2512a;
            }
        });
        this.f20598v = (AccessibilityManager) this.f20584h.getSystemService("accessibility");
    }

    /* renamed from: a */
    private ValueAnimator m2552a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C4505a.f19569a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseTransientBottomBar.this.f20581b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: a */
    private void m2555a(CoordinatorLayout.C0426e c0426e) {
        Behavior m2535g = this.f20597u == null ? m2535g() : this.f20597u;
        if (m2535g instanceof Behavior) {
            ((Behavior) m2535g).m2506a((BaseTransientBottomBar<?>) this);
        }
        m2535g.m3679a(new SwipeDismissBehavior.AbstractC4535a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
            @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC4535a
            /* renamed from: a */
            public void mo2511a(int i) {
                switch (i) {
                    case 0:
                        C4786b.m2484a().m2474d(BaseTransientBottomBar.this.f20582c);
                        return;
                    case 1:
                    case 2:
                        C4786b.m2484a().m2475c(BaseTransientBottomBar.this.f20582c);
                        return;
                    default:
                        return;
                }
            }

            @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC4535a
            /* renamed from: a */
            public void mo2510a(View view) {
                view.setVisibility(8);
                BaseTransientBottomBar.this.m2550b(0);
            }
        });
        c0426e.m20933a(m2535g);
        if (this.f20588l == null) {
            c0426e.f1708g = 80;
        }
    }

    /* renamed from: b */
    private ValueAnimator m2547b(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C4505a.f19572d);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BaseTransientBottomBar.this.f20581b.setScaleX(floatValue);
                BaseTransientBottomBar.this.f20581b.setScaleY(floatValue);
            }
        });
        return ofFloat;
    }

    /* renamed from: e */
    private void m2540e(int i) {
        if (this.f20581b.getAnimationMode() == 1) {
            m2537f(i);
        } else {
            m2534g(i);
        }
    }

    /* renamed from: f */
    private void m2537f(final int i) {
        ValueAnimator m2552a = m2552a(1.0f, 0.0f);
        m2552a.setDuration(75L);
        m2552a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m2543d(i);
            }
        });
        m2552a.start();
    }

    /* renamed from: g */
    private void m2534g(final int i) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, m2514x());
        valueAnimator.setInterpolator(C4505a.f19570b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m2543d(i);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f20585i.mo2485b(0, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9

            /* renamed from: b */
            private int f20620b = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f20578d) {
                    C0595u.m20323e(BaseTransientBottomBar.this.f20581b, intValue - this.f20620b);
                } else {
                    BaseTransientBottomBar.this.f20581b.setTranslationY(intValue);
                }
                this.f20620b = intValue;
            }
        });
        valueAnimator.start();
    }

    /* renamed from: n */
    private Drawable m2524n() {
        int m2918a = C4680a.m2918a(this.f20581b, C4492a.C4494b.colorSurface, C4492a.C4494b.colorOnSurface, this.f20581b.getBackgroundOverlayColorAlpha());
        float dimension = this.f20581b.getResources().getDimension(C4492a.C4496d.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(m2918a);
        gradientDrawable.setCornerRadius(dimension);
        return gradientDrawable;
    }

    /* renamed from: o */
    public void m2523o() {
        ViewGroup.LayoutParams layoutParams = this.f20581b.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams) || this.f20590n == null) {
            Log.w(f20580f, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = (this.f20588l != null ? this.f20595s : this.f20591o) + this.f20590n.bottom;
        marginLayoutParams.leftMargin = this.f20590n.left + this.f20592p;
        marginLayoutParams.rightMargin = this.f20590n.right + this.f20593q;
        this.f20581b.requestLayout();
        if (Build.VERSION.SDK_INT < 29 || !m2522p()) {
            return;
        }
        this.f20581b.removeCallbacks(this.f20589m);
        this.f20581b.post(this.f20589m);
    }

    /* renamed from: p */
    private boolean m2522p() {
        return this.f20594r > 0 && !this.f20587k && m2521q();
    }

    /* renamed from: q */
    private boolean m2521q() {
        ViewGroup.LayoutParams layoutParams = this.f20581b.getLayoutParams();
        return (layoutParams instanceof CoordinatorLayout.C0426e) && (((CoordinatorLayout.C0426e) layoutParams).m20929b() instanceof SwipeDismissBehavior);
    }

    /* renamed from: r */
    public void m2520r() {
        if (m2527k()) {
            m2530i();
            return;
        }
        this.f20581b.setVisibility(0);
        m2528j();
    }

    /* renamed from: s */
    public int m2519s() {
        int[] iArr = new int[2];
        this.f20581b.getLocationOnScreen(iArr);
        return iArr[1] + this.f20581b.getHeight();
    }

    /* renamed from: t */
    public int m2518t() {
        WindowManager windowManager = (WindowManager) this.f20584h.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: u */
    private int m2517u() {
        int height;
        if (this.f20588l == null) {
            height = 0;
        } else {
            int[] iArr = new int[2];
            this.f20588l.getLocationOnScreen(iArr);
            int i = iArr[1];
            int[] iArr2 = new int[2];
            this.f20583g.getLocationOnScreen(iArr2);
            height = (iArr2[1] + this.f20583g.getHeight()) - i;
        }
        return height;
    }

    /* renamed from: v */
    public void m2516v() {
        ValueAnimator m2552a = m2552a(0.0f, 1.0f);
        ValueAnimator m2547b = m2547b(0.8f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m2552a, m2547b);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m2528j();
            }
        });
        animatorSet.start();
    }

    /* renamed from: w */
    public void m2515w() {
        final int m2514x = m2514x();
        if (f20578d) {
            C0595u.m20323e(this.f20581b, m2514x);
        } else {
            this.f20581b.setTranslationY(m2514x);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(m2514x, 0);
        valueAnimator.setInterpolator(C4505a.f19570b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m2528j();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f20585i.mo2486a(70, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7

            /* renamed from: c */
            private int f20616c;

            {
                BaseTransientBottomBar.this = this;
                this.f20616c = m2514x;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f20578d) {
                    C0595u.m20323e(BaseTransientBottomBar.this.f20581b, intValue - this.f20616c);
                } else {
                    BaseTransientBottomBar.this.f20581b.setTranslationY(intValue);
                }
                this.f20616c = intValue;
            }
        });
        valueAnimator.start();
    }

    /* renamed from: x */
    private int m2514x() {
        int height = this.f20581b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f20581b.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            height = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + height;
        }
        return height;
    }

    /* renamed from: a */
    protected int m2557a() {
        return m2551b() ? C4492a.C4500h.mtrl_layout_snackbar : C4492a.C4500h.design_layout_snackbar;
    }

    /* renamed from: a */
    public B m2556a(int i) {
        this.f20586j = i;
        return this;
    }

    /* renamed from: b */
    protected void m2550b(int i) {
        C4786b.m2484a().m2481a(this.f20582c, i);
    }

    /* renamed from: b */
    protected boolean m2551b() {
        boolean z = false;
        TypedArray obtainStyledAttributes = this.f20584h.obtainStyledAttributes(f20579e);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public int mo2492c() {
        return this.f20586j;
    }

    /* renamed from: c */
    final void m2546c(int i) {
        if (!m2527k() || this.f20581b.getVisibility() != 0) {
            m2543d(i);
        } else {
            m2540e(i);
        }
    }

    /* renamed from: d */
    public void mo2491d() {
        C4786b.m2484a().m2483a(mo2492c(), this.f20582c);
    }

    /* renamed from: d */
    void m2543d(int i) {
        C4786b.m2484a().m2482a(this.f20582c);
        if (this.f20596t != null) {
            for (int size = this.f20596t.size() - 1; size >= 0; size--) {
                this.f20596t.get(size).m2504a(this, i);
            }
        }
        ViewParent parent = this.f20581b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f20581b);
        }
    }

    /* renamed from: e */
    public void mo2490e() {
        m2550b(3);
    }

    /* renamed from: f */
    public boolean m2538f() {
        return C4786b.m2484a().m2473e(this.f20582c);
    }

    /* renamed from: g */
    protected SwipeDismissBehavior<? extends View> m2535g() {
        return new Behavior();
    }

    /* renamed from: h */
    final void m2532h() {
        this.f20581b.setOnAttachStateChangeListener(new AbstractC4781c() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC4781c
            /* renamed from: a */
            public void mo2500a(View view) {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = BaseTransientBottomBar.this.f20581b.getRootWindowInsets()) == null) {
                    return;
                }
                BaseTransientBottomBar.this.f20594r = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                BaseTransientBottomBar.this.m2523o();
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC4781c
            /* renamed from: b */
            public void mo2499b(View view) {
                if (BaseTransientBottomBar.this.m2538f()) {
                    BaseTransientBottomBar.f20577a.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.m2543d(3);
                        }
                    });
                }
            }
        });
        if (this.f20581b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f20581b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0426e) {
                m2555a((CoordinatorLayout.C0426e) layoutParams);
            }
            this.f20595s = m2517u();
            m2523o();
            this.f20581b.setVisibility(4);
            this.f20583g.addView(this.f20581b);
        }
        if (C0595u.m20299y(this.f20581b)) {
            m2520r();
        } else {
            this.f20581b.setOnLayoutChangeListener(new AbstractC4782d() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC4782d
                /* renamed from: a */
                public void mo2498a(View view, int i, int i2, int i3, int i4) {
                    BaseTransientBottomBar.this.f20581b.setOnLayoutChangeListener(null);
                    BaseTransientBottomBar.this.m2520r();
                }
            });
        }
    }

    /* renamed from: i */
    void m2530i() {
        this.f20581b.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.17
            @Override // java.lang.Runnable
            public void run() {
                if (BaseTransientBottomBar.this.f20581b == null) {
                    return;
                }
                BaseTransientBottomBar.this.f20581b.setVisibility(0);
                if (BaseTransientBottomBar.this.f20581b.getAnimationMode() == 1) {
                    BaseTransientBottomBar.this.m2516v();
                } else {
                    BaseTransientBottomBar.this.m2515w();
                }
            }
        });
    }

    /* renamed from: j */
    void m2528j() {
        C4786b.m2484a().m2477b(this.f20582c);
        if (this.f20596t != null) {
            for (int size = this.f20596t.size() - 1; size >= 0; size--) {
                this.f20596t.get(size).m2505a(this);
            }
        }
    }

    /* renamed from: k */
    boolean m2527k() {
        boolean z = true;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.f20598v.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            z = false;
        }
        return z;
    }
}
