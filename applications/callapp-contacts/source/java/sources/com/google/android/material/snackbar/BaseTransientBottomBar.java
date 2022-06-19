package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
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
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.view.AbstractC0922r;
import androidx.core.view.C0865a;
import androidx.core.view.C0889ac;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0869c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.C14647l;
import com.google.android.material.internal.C14654r;
import com.google.android.material.p364a.C14389a;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p371h.C14598c;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.C14764b;
import com.google.android.material.theme.p376a.C14828a;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a */
    static final Handler f53802a;

    /* renamed from: d */
    private static final boolean f53803d;

    /* renamed from: e */
    private static final int[] f53804e;

    /* renamed from: f */
    private static final String f53805f;

    /* renamed from: b */
    protected final SnackbarBaseLayout f53806b;

    /* renamed from: c */
    C14764b.AbstractC14766a f53807c;

    /* renamed from: g */
    private final ViewGroup f53808g;

    /* renamed from: h */
    private final Context f53809h;

    /* renamed from: i */
    private final AbstractC14763a f53810i;

    /* renamed from: j */
    private int f53811j;

    /* renamed from: k */
    private boolean f53812k;

    /* renamed from: l */
    private View f53813l;

    /* renamed from: m */
    private boolean f53814m;

    /* renamed from: n */
    private final ViewTreeObserver.OnGlobalLayoutListener f53815n;

    /* renamed from: o */
    private final Runnable f53816o;

    /* renamed from: p */
    private Rect f53817p;

    /* renamed from: q */
    private int f53818q;

    /* renamed from: r */
    private int f53819r;

    /* renamed from: s */
    private int f53820s;

    /* renamed from: t */
    private int f53821t;

    /* renamed from: u */
    private int f53822u;

    /* renamed from: v */
    private List<Object<B>> f53823v;

    /* renamed from: w */
    private Behavior f53824w;

    /* renamed from: x */
    private final AccessibilityManager f53825x;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {

        /* renamed from: g */
        private final C14760a f53849g = new C14760a(this);

        /* renamed from: a */
        static /* synthetic */ void m10174a(Behavior behavior, BaseTransientBottomBar baseTransientBottomBar) {
            behavior.f53849g.f53858a = baseTransientBottomBar.f53807c;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        /* renamed from: a */
        public final boolean mo10176a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: a */
        public final boolean mo10175a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            C14760a c14760a = this.f53849g;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    C14764b.m10161a().m10154c(c14760a.f53858a);
                }
            } else if (coordinatorLayout.m44663a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                C14764b.m10161a().m10155b(c14760a.f53858a);
            }
            return super.mo10175a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout.class */
    public static class SnackbarBaseLayout extends FrameLayout {

        /* renamed from: e */
        private static final View.OnTouchListener f53850e = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };

        /* renamed from: a */
        AbstractC14762c f53851a;

        /* renamed from: b */
        AbstractC14761b f53852b;

        /* renamed from: c */
        int f53853c;

        /* renamed from: d */
        final float f53854d;

        /* renamed from: f */
        private final float f53855f;

        /* renamed from: g */
        private ColorStateList f53856g;

        /* renamed from: h */
        private PorterDuff.Mode f53857h;

        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(C14828a.m9923a(context, attributeSet, 0, 0), attributeSet);
            Drawable drawable;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C14376a.C14388l.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(C14376a.C14388l.SnackbarLayout_elevation)) {
                C0926v.m44138a(this, obtainStyledAttributes.getDimensionPixelSize(C14376a.C14388l.SnackbarLayout_elevation, 0));
            }
            this.f53853c = obtainStyledAttributes.getInt(C14376a.C14388l.SnackbarLayout_animationMode, 0);
            float f = obtainStyledAttributes.getFloat(C14376a.C14388l.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            this.f53855f = f;
            setBackgroundTintList(C14598c.m10653a(context2, obtainStyledAttributes, C14376a.C14388l.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(C14654r.m10499a(obtainStyledAttributes.getInt(C14376a.C14388l.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f53854d = obtainStyledAttributes.getFloat(C14376a.C14388l.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f53850e);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(C14376a.C14380d.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(C14416a.m11241a(C14597b.m10655a(this, C14376a.C14378b.colorSurface), C14597b.m10655a(this, C14376a.C14378b.colorOnSurface), f));
                if (this.f53856g != null) {
                    drawable = C0840a.m44345f(gradientDrawable);
                    C0840a.m44355a(drawable, this.f53856g);
                } else {
                    drawable = C0840a.m44345f(gradientDrawable);
                }
                C0926v.m44128a(this, drawable);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            AbstractC14761b abstractC14761b = this.f53852b;
            if (abstractC14761b != null) {
                abstractC14761b.mo10173a();
            }
            C0926v.m44081r(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            AbstractC14761b abstractC14761b = this.f53852b;
            if (abstractC14761b != null) {
                abstractC14761b.mo10172b();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            AbstractC14762c abstractC14762c = this.f53851a;
            if (abstractC14762c != null) {
                abstractC14762c.mo10171a();
            }
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (drawable != null) {
                drawable2 = drawable;
                if (this.f53856g != null) {
                    drawable2 = C0840a.m44345f(drawable.mutate());
                    C0840a.m44355a(drawable2, this.f53856g);
                    C0840a.m44352a(drawable2, this.f53857h);
                }
            }
            super.setBackgroundDrawable(drawable2);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.f53856g = colorStateList;
            if (getBackground() != null) {
                Drawable m44345f = C0840a.m44345f(getBackground().mutate());
                C0840a.m44355a(m44345f, colorStateList);
                C0840a.m44352a(m44345f, this.f53857h);
                if (m44345f == getBackground()) {
                    return;
                }
                super.setBackgroundDrawable(m44345f);
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f53857h = mode;
            if (getBackground() != null) {
                Drawable m44345f = C0840a.m44345f(getBackground().mutate());
                C0840a.m44352a(m44345f, mode);
                if (m44345f == getBackground()) {
                    return;
                }
                super.setBackgroundDrawable(m44345f);
            }
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f53850e);
            super.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$a.class */
    public static final class C14760a {

        /* renamed from: a */
        C14764b.AbstractC14766a f53858a;

        public C14760a(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.f52520e = SwipeDismissBehavior.m11220a(0.1f);
            swipeDismissBehavior.f52521f = SwipeDismissBehavior.m11220a(0.6f);
            swipeDismissBehavior.f52518c = 0;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$b */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$b.class */
    public interface AbstractC14761b {
        /* renamed from: a */
        void mo10173a();

        /* renamed from: b */
        void mo10172b();
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$c */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$c.class */
    public interface AbstractC14762c {
        /* renamed from: a */
        void mo10171a();
    }

    static {
        f53803d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        f53804e = new int[]{C14376a.C14378b.snackbarStyle};
        f53805f = BaseTransientBottomBar.class.getSimpleName();
        f53802a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ((BaseTransientBottomBar) message.obj).m10197f();
                    return true;
                } else if (i != 1) {
                    return false;
                } else {
                    ((BaseTransientBottomBar) message.obj).m10204c(message.arg1);
                    return true;
                }
            }
        });
    }

    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, AbstractC14763a abstractC14763a) {
        this.f53814m = false;
        this.f53815n = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (!BaseTransientBottomBar.this.f53814m) {
                    return;
                }
                BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                baseTransientBottomBar.f53822u = baseTransientBottomBar.m10184m();
                BaseTransientBottomBar.this.m10187k();
            }
        };
        this.f53816o = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
            @Override // java.lang.Runnable
            public final void run() {
                int m10199e;
                if (BaseTransientBottomBar.this.f53806b == null || BaseTransientBottomBar.this.f53809h == null || (m10199e = (BaseTransientBottomBar.m10199e(BaseTransientBottomBar.this) - BaseTransientBottomBar.m10196f(BaseTransientBottomBar.this)) + ((int) BaseTransientBottomBar.this.f53806b.getTranslationY())) >= BaseTransientBottomBar.this.f53821t) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f53806b.getLayoutParams();
                if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                    Log.w(BaseTransientBottomBar.f53805f, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                    return;
                }
                ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.f53821t - m10199e;
                BaseTransientBottomBar.this.f53806b.requestLayout();
            }
        };
        this.f53807c = new C14764b.AbstractC14766a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
            @Override // com.google.android.material.snackbar.C14764b.AbstractC14766a
            /* renamed from: a */
            public final void mo10149a() {
                Handler handler = BaseTransientBottomBar.f53802a;
                handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
            }

            @Override // com.google.android.material.snackbar.C14764b.AbstractC14766a
            /* renamed from: a */
            public final void mo10148a(int i) {
                Handler handler = BaseTransientBottomBar.f53802a;
                handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
            }
        };
        if (viewGroup != null) {
            if (view == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null content");
            }
            if (abstractC14763a == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
            }
            this.f53808g = viewGroup;
            this.f53810i = abstractC14763a;
            this.f53809h = context;
            C14647l.m10510a(context);
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f53804e);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) from.inflate(resourceId != -1 ? C14376a.C14384h.mtrl_layout_snackbar : C14376a.C14384h.design_layout_snackbar, viewGroup, false);
            this.f53806b = snackbarBaseLayout;
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                float f = snackbarBaseLayout.f53854d;
                if (f != 1.0f) {
                    snackbarContentLayout.f53864b.setTextColor(C14416a.m11241a(C14597b.m10655a(snackbarContentLayout, C14376a.C14378b.colorSurface), snackbarContentLayout.f53864b.getCurrentTextColor(), f));
                }
            }
            snackbarBaseLayout.addView(view);
            ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f53817p = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            }
            C0926v.m44093h(snackbarBaseLayout);
            C0926v.m44102c((View) snackbarBaseLayout, 1);
            C0926v.m44106b((View) snackbarBaseLayout, true);
            C0926v.m44120a(snackbarBaseLayout, new AbstractC0922r() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
                @Override // androidx.core.view.AbstractC0922r
                /* renamed from: a */
                public final C0889ac mo10180a(View view2, C0889ac c0889ac) {
                    BaseTransientBottomBar.this.f53818q = c0889ac.m44224d();
                    BaseTransientBottomBar.this.f53819r = c0889ac.m44231a();
                    BaseTransientBottomBar.this.f53820s = c0889ac.m44225c();
                    BaseTransientBottomBar.this.m10187k();
                    return c0889ac;
                }
            });
            C0926v.m44123a(snackbarBaseLayout, new C0865a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
                @Override // androidx.core.view.C0865a
                /* renamed from: a */
                public final void mo9886a(View view2, C0869c c0869c) {
                    super.mo9886a(view2, c0869c);
                    c0869c.m44284a(1048576);
                    c0869c.m44239k(true);
                }

                @Override // androidx.core.view.C0865a
                /* renamed from: a */
                public final boolean mo10179a(View view2, int i, Bundle bundle) {
                    if (i == 1048576) {
                        BaseTransientBottomBar.this.mo10167d();
                        return true;
                    }
                    return super.mo10179a(view2, i, bundle);
                }
            });
            this.f53825x = (AccessibilityManager) context.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
    }

    protected BaseTransientBottomBar(ViewGroup viewGroup, View view, AbstractC14763a abstractC14763a) {
        this(viewGroup.getContext(), viewGroup, view, abstractC14763a);
    }

    /* renamed from: a */
    private ValueAnimator m10209a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(C14389a.f52368a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseTransientBottomBar.this.f53806b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    /* renamed from: e */
    static /* synthetic */ int m10199e(BaseTransientBottomBar baseTransientBottomBar) {
        WindowManager windowManager = (WindowManager) baseTransientBottomBar.f53809h.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    /* renamed from: f */
    static /* synthetic */ int m10196f(BaseTransientBottomBar baseTransientBottomBar) {
        int[] iArr = new int[2];
        baseTransientBottomBar.f53806b.getLocationOnScreen(iArr);
        return iArr[1] + baseTransientBottomBar.f53806b.getHeight();
    }

    /* renamed from: i */
    static /* synthetic */ void m10190i(BaseTransientBottomBar baseTransientBottomBar) {
        ValueAnimator m10209a = baseTransientBottomBar.m10209a(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(C14389a.f52371d);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BaseTransientBottomBar.this.f53806b.setScaleX(floatValue);
                BaseTransientBottomBar.this.f53806b.setScaleY(floatValue);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m10209a, ofFloat);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m10195g();
            }
        });
        animatorSet.start();
    }

    /* renamed from: j */
    static /* synthetic */ void m10188j(BaseTransientBottomBar baseTransientBottomBar) {
        int m10182o = baseTransientBottomBar.m10182o();
        if (f53803d) {
            C0926v.m44098e(baseTransientBottomBar.f53806b, m10182o);
        } else {
            baseTransientBottomBar.f53806b.setTranslationY(m10182o);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(m10182o, 0);
        valueAnimator.setInterpolator(C14389a.f52369b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.m10195g();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.f53810i.mo10163a();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(m10182o) { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8

            /* renamed from: a */
            final /* synthetic */ int f53844a;

            /* renamed from: c */
            private int f53846c;

            {
                BaseTransientBottomBar.this = baseTransientBottomBar;
                this.f53844a = m10182o;
                this.f53846c = m10182o;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f53803d) {
                    C0926v.m44098e(BaseTransientBottomBar.this.f53806b, intValue - this.f53846c);
                } else {
                    BaseTransientBottomBar.this.f53806b.setTranslationY(intValue);
                }
                this.f53846c = intValue;
            }
        });
        valueAnimator.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m10187k() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.m10187k():void");
    }

    /* renamed from: l */
    public void m10185l() {
        if (m10181p()) {
            m10183n();
            return;
        }
        if (this.f53806b.getParent() != null) {
            this.f53806b.setVisibility(0);
        }
        m10195g();
    }

    /* renamed from: m */
    public int m10184m() {
        View view = this.f53813l;
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.f53808g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.f53808g.getHeight()) - i;
    }

    /* renamed from: n */
    private void m10183n() {
        this.f53806b.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // java.lang.Runnable
            public final void run() {
                if (BaseTransientBottomBar.this.f53806b == null) {
                    return;
                }
                if (BaseTransientBottomBar.this.f53806b.getParent() != null) {
                    BaseTransientBottomBar.this.f53806b.setVisibility(0);
                }
                if (BaseTransientBottomBar.this.f53806b.f53853c == 1) {
                    BaseTransientBottomBar.m10190i(BaseTransientBottomBar.this);
                } else {
                    BaseTransientBottomBar.m10188j(BaseTransientBottomBar.this);
                }
            }
        });
    }

    /* renamed from: o */
    private int m10182o() {
        int height = this.f53806b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f53806b.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    /* renamed from: p */
    private boolean m10181p() {
        AccessibilityManager accessibilityManager = this.f53825x;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    /* renamed from: a */
    public int mo10170a() {
        return this.f53811j;
    }

    /* renamed from: a */
    public final B m10212a(int i) {
        this.f53811j = -2;
        return this;
    }

    /* renamed from: b */
    public final View m10208b() {
        return this.f53806b;
    }

    /* renamed from: b */
    protected final void m10207b(int i) {
        C14764b.m10161a().m10159a(this.f53807c, i);
    }

    /* renamed from: c */
    public void mo10168c() {
        C14764b m10161a = C14764b.m10161a();
        int mo10170a = mo10170a();
        C14764b.AbstractC14766a abstractC14766a = this.f53807c;
        synchronized (m10161a.f53868a) {
            if (m10161a.m10151f(abstractC14766a)) {
                m10161a.f53870c.f53874b = mo10170a;
                m10161a.f53869b.removeCallbacksAndMessages(m10161a.f53870c);
                m10161a.m10158a(m10161a.f53870c);
                return;
            }
            if (m10161a.m10150g(abstractC14766a)) {
                m10161a.f53871d.f53874b = mo10170a;
            } else {
                m10161a.f53871d = new C14764b.C14767b(mo10170a, abstractC14766a);
            }
            if (m10161a.f53870c != null && m10161a.m10157a(m10161a.f53870c, 4)) {
                return;
            }
            m10161a.f53870c = null;
            m10161a.m10156b();
        }
    }

    /* renamed from: c */
    final void m10204c(final int i) {
        if (!m10181p() || this.f53806b.getVisibility() != 0) {
            m10193h();
        } else if (this.f53806b.f53853c == 1) {
            ValueAnimator m10209a = m10209a(1.0f, BitmapDescriptorFactory.HUE_RED);
            m10209a.setDuration(75L);
            m10209a.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BaseTransientBottomBar.this.m10193h();
                }
            });
            m10209a.start();
        } else {
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(0, m10182o());
            valueAnimator.setInterpolator(C14389a.f52369b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BaseTransientBottomBar.this.m10193h();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    BaseTransientBottomBar.this.f53810i.mo10162b();
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10

                /* renamed from: b */
                private int f53827b = 0;

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    if (BaseTransientBottomBar.f53803d) {
                        C0926v.m44098e(BaseTransientBottomBar.this.f53806b, intValue - this.f53827b);
                    } else {
                        BaseTransientBottomBar.this.f53806b.setTranslationY(intValue);
                    }
                    this.f53827b = intValue;
                }
            });
            valueAnimator.start();
        }
    }

    /* renamed from: d */
    public void mo10167d() {
        m10207b(3);
    }

    /* renamed from: e */
    public boolean mo10166e() {
        return C14764b.m10161a().m10153d(this.f53807c);
    }

    /* renamed from: f */
    final void m10197f() {
        this.f53806b.f53852b = new AbstractC14761b() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC14761b
            /* renamed from: a */
            public final void mo10173a() {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = BaseTransientBottomBar.this.f53806b.getRootWindowInsets()) == null) {
                    return;
                }
                BaseTransientBottomBar.this.f53821t = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                BaseTransientBottomBar.this.m10187k();
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC14761b
            /* renamed from: b */
            public final void mo10172b() {
                if (C14764b.m10161a().m10152e(BaseTransientBottomBar.this.f53807c)) {
                    BaseTransientBottomBar.f53802a.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseTransientBottomBar.this.m10193h();
                        }
                    });
                }
            }
        };
        if (this.f53806b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f53806b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0702d) {
                CoordinatorLayout.C0702d c0702d = (CoordinatorLayout.C0702d) layoutParams;
                Behavior behavior = this.f53824w;
                Behavior behavior2 = behavior;
                if (behavior == null) {
                    behavior2 = new Behavior();
                }
                if (behavior2 instanceof Behavior) {
                    Behavior.m10174a(behavior2, this);
                }
                behavior2.f52517b = new SwipeDismissBehavior.AbstractC14423a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.18
                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC14423a
                    /* renamed from: a */
                    public final void mo10178a(int i) {
                        if (i == 0) {
                            C14764b.m10161a().m10154c(BaseTransientBottomBar.this.f53807c);
                        } else if (i != 1 && i != 2) {
                        } else {
                            C14764b.m10161a().m10155b(BaseTransientBottomBar.this.f53807c);
                        }
                    }

                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.AbstractC14423a
                    /* renamed from: a */
                    public final void mo10177a(View view) {
                        if (view.getParent() != null) {
                            view.setVisibility(8);
                        }
                        BaseTransientBottomBar.this.m10207b(0);
                    }
                };
                c0702d.m44642a(behavior2);
                if (this.f53813l == null) {
                    c0702d.f3206g = 80;
                }
            }
            this.f53822u = m10184m();
            m10187k();
            this.f53806b.setVisibility(4);
            this.f53808g.addView(this.f53806b);
        }
        if (C0926v.m44157B(this.f53806b)) {
            m10185l();
            return;
        }
        this.f53806b.f53851a = new AbstractC14762c() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.17
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.AbstractC14762c
            /* renamed from: a */
            public final void mo10171a() {
                BaseTransientBottomBar.this.f53806b.f53851a = null;
                BaseTransientBottomBar.this.m10185l();
            }
        };
    }

    /* renamed from: g */
    final void m10195g() {
        C14764b.m10161a().m10160a(this.f53807c);
        List<Object<B>> list = this.f53823v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f53823v.get(size);
            }
        }
    }

    /* renamed from: h */
    final void m10193h() {
        C14764b m10161a = C14764b.m10161a();
        C14764b.AbstractC14766a abstractC14766a = this.f53807c;
        synchronized (m10161a.f53868a) {
            if (m10161a.m10151f(abstractC14766a)) {
                m10161a.f53870c = null;
                if (m10161a.f53871d != null) {
                    m10161a.m10156b();
                }
            }
        }
        List<Object<B>> list = this.f53823v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f53823v.get(size);
            }
        }
        ViewParent parent = this.f53806b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f53806b);
        }
    }
}
