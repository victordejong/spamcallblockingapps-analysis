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
import androidx.core.view.ac;
import androidx.core.view.v;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.l;
import com.google.android.material.internal.r;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.b;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a  reason: collision with root package name */
    static final Handler f30791a;

    /* renamed from: d  reason: collision with root package name */
    private static final boolean f30792d;
    private static final int[] e;
    private static final String f;

    /* renamed from: b  reason: collision with root package name */
    protected final SnackbarBaseLayout f30793b;

    /* renamed from: c  reason: collision with root package name */
    b.a f30794c;
    private final ViewGroup g;
    private final Context h;
    private final com.google.android.material.snackbar.a i;
    private int j;
    private boolean k;
    private View l;
    private boolean m;
    private final ViewTreeObserver.OnGlobalLayoutListener n;
    private final Runnable o;
    private Rect p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private List<Object<B>> v;
    private Behavior w;
    private final AccessibilityManager x;

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$Behavior.class */
    public static class Behavior extends SwipeDismissBehavior<View> {
        private final a g = new a(this);

        static /* synthetic */ void a(Behavior behavior, BaseTransientBottomBar baseTransientBottomBar) {
            behavior.g.f30822a = baseTransientBottomBar.f30794c;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean a(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            a aVar = this.g;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    com.google.android.material.snackbar.b.a().c(aVar.f30822a);
                }
            } else if (coordinatorLayout.a(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                com.google.android.material.snackbar.b.a().b(aVar.f30822a);
            }
            return super.a(coordinatorLayout, (CoordinatorLayout) view, motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout.class */
    public static class SnackbarBaseLayout extends FrameLayout {
        private static final View.OnTouchListener e = new View.OnTouchListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        c f30818a;

        /* renamed from: b  reason: collision with root package name */
        b f30819b;

        /* renamed from: c  reason: collision with root package name */
        int f30820c;

        /* renamed from: d  reason: collision with root package name */
        final float f30821d;
        private final float f;
        private ColorStateList g;
        private PorterDuff.Mode h;

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(com.google.android.material.theme.a.a.a(context, attributeSet, 0, 0), attributeSet);
            Drawable drawable;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, a.l.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(a.l.SnackbarLayout_elevation)) {
                v.a(this, obtainStyledAttributes.getDimensionPixelSize(a.l.SnackbarLayout_elevation, 0));
            }
            this.f30820c = obtainStyledAttributes.getInt(a.l.SnackbarLayout_animationMode, 0);
            float f = obtainStyledAttributes.getFloat(a.l.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            this.f = f;
            setBackgroundTintList(com.google.android.material.h.c.a(context2, obtainStyledAttributes, a.l.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(r.a(obtainStyledAttributes.getInt(a.l.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f30821d = obtainStyledAttributes.getFloat(a.l.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(e);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(a.d.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(com.google.android.material.b.a.a(com.google.android.material.h.b.a(this, a.b.colorSurface), com.google.android.material.h.b.a(this, a.b.colorOnSurface), f));
                if (this.g != null) {
                    drawable = androidx.core.graphics.drawable.a.f(gradientDrawable);
                    androidx.core.graphics.drawable.a.a(drawable, this.g);
                } else {
                    drawable = androidx.core.graphics.drawable.a.f(gradientDrawable);
                }
                v.a(this, drawable);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            b bVar = this.f30819b;
            if (bVar != null) {
                bVar.a();
            }
            v.r(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            b bVar = this.f30819b;
            if (bVar != null) {
                bVar.b();
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            c cVar = this.f30818a;
            if (cVar != null) {
                cVar.a();
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
                if (this.g != null) {
                    drawable2 = androidx.core.graphics.drawable.a.f(drawable.mutate());
                    androidx.core.graphics.drawable.a.a(drawable2, this.g);
                    androidx.core.graphics.drawable.a.a(drawable2, this.h);
                }
            }
            super.setBackgroundDrawable(drawable2);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.g = colorStateList;
            if (getBackground() != null) {
                Drawable f = androidx.core.graphics.drawable.a.f(getBackground().mutate());
                androidx.core.graphics.drawable.a.a(f, colorStateList);
                androidx.core.graphics.drawable.a.a(f, this.h);
                if (f != getBackground()) {
                    super.setBackgroundDrawable(f);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.h = mode;
            if (getBackground() != null) {
                Drawable f = androidx.core.graphics.drawable.a.f(getBackground().mutate());
                androidx.core.graphics.drawable.a.a(f, mode);
                if (f != getBackground()) {
                    super.setBackgroundDrawable(f);
                }
            }
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : e);
            super.setOnClickListener(onClickListener);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        b.a f30822a;

        public a(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.e = SwipeDismissBehavior.a(0.1f);
            swipeDismissBehavior.f = SwipeDismissBehavior.a(0.6f);
            swipeDismissBehavior.f30259c = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$b.class */
    public interface b {
        void a();

        void b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$c.class */
    public interface c {
        void a();
    }

    static {
        f30792d = Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 19;
        e = new int[]{a.b.snackbarStyle};
        f = BaseTransientBottomBar.class.getSimpleName();
        f30791a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 0) {
                    ((BaseTransientBottomBar) message.obj).f();
                    return true;
                } else if (i != 1) {
                    return false;
                } else {
                    ((BaseTransientBottomBar) message.obj).c(message.arg1);
                    return true;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, com.google.android.material.snackbar.a aVar) {
        this.m = false;
        this.n = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                if (BaseTransientBottomBar.this.m) {
                    BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
                    baseTransientBottomBar.u = baseTransientBottomBar.m();
                    BaseTransientBottomBar.this.k();
                }
            }
        };
        this.o = new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.12
            @Override // java.lang.Runnable
            public final void run() {
                int e2;
                if (BaseTransientBottomBar.this.f30793b != null && BaseTransientBottomBar.this.h != null && (e2 = (BaseTransientBottomBar.e(BaseTransientBottomBar.this) - BaseTransientBottomBar.f(BaseTransientBottomBar.this)) + ((int) BaseTransientBottomBar.this.f30793b.getTranslationY())) < BaseTransientBottomBar.this.t) {
                    ViewGroup.LayoutParams layoutParams = BaseTransientBottomBar.this.f30793b.getLayoutParams();
                    if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                        Log.w(BaseTransientBottomBar.f, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin += BaseTransientBottomBar.this.t - e2;
                    BaseTransientBottomBar.this.f30793b.requestLayout();
                }
            }
        };
        this.f30794c = new b.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.15
            @Override // com.google.android.material.snackbar.b.a
            public final void a() {
                Handler handler = BaseTransientBottomBar.f30791a;
                handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
            }

            @Override // com.google.android.material.snackbar.b.a
            public final void a(int i) {
                Handler handler = BaseTransientBottomBar.f30791a;
                handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
            }
        };
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        } else if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        } else if (aVar != null) {
            this.g = viewGroup;
            this.i = aVar;
            this.h = context;
            l.a(context);
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(e);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) from.inflate(resourceId != -1 ? a.h.mtrl_layout_snackbar : a.h.design_layout_snackbar, viewGroup, false);
            this.f30793b = snackbarBaseLayout;
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                float f2 = snackbarBaseLayout.f30821d;
                if (f2 != 1.0f) {
                    snackbarContentLayout.f30825b.setTextColor(com.google.android.material.b.a.a(com.google.android.material.h.b.a(snackbarContentLayout, a.b.colorSurface), snackbarContentLayout.f30825b.getCurrentTextColor(), f2));
                }
            }
            snackbarBaseLayout.addView(view);
            ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.p = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            }
            v.h(snackbarBaseLayout);
            v.c((View) snackbarBaseLayout, 1);
            v.b((View) snackbarBaseLayout, true);
            v.a(snackbarBaseLayout, new androidx.core.view.r() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.13
                @Override // androidx.core.view.r
                public final ac a(View view2, ac acVar) {
                    BaseTransientBottomBar.this.q = acVar.d();
                    BaseTransientBottomBar.this.r = acVar.a();
                    BaseTransientBottomBar.this.s = acVar.c();
                    BaseTransientBottomBar.this.k();
                    return acVar;
                }
            });
            v.a(snackbarBaseLayout, new androidx.core.view.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.14
                @Override // androidx.core.view.a
                public final void a(View view2, androidx.core.view.a.c cVar) {
                    super.a(view2, cVar);
                    cVar.a(1048576);
                    cVar.k(true);
                }

                @Override // androidx.core.view.a
                public final boolean a(View view2, int i, Bundle bundle) {
                    if (i != 1048576) {
                        return super.a(view2, i, bundle);
                    }
                    BaseTransientBottomBar.this.d();
                    return true;
                }
            });
            this.x = (AccessibilityManager) context.getSystemService("accessibility");
        } else {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
    }

    protected BaseTransientBottomBar(ViewGroup viewGroup, View view, com.google.android.material.snackbar.a aVar) {
        this(viewGroup.getContext(), viewGroup, view, aVar);
    }

    private ValueAnimator a(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30173a);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseTransientBottomBar.this.f30793b.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }

    static /* synthetic */ int e(BaseTransientBottomBar baseTransientBottomBar) {
        WindowManager windowManager = (WindowManager) baseTransientBottomBar.h.getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    static /* synthetic */ int f(BaseTransientBottomBar baseTransientBottomBar) {
        int[] iArr = new int[2];
        baseTransientBottomBar.f30793b.getLocationOnScreen(iArr);
        return iArr[1] + baseTransientBottomBar.f30793b.getHeight();
    }

    static /* synthetic */ void i(BaseTransientBottomBar baseTransientBottomBar) {
        ValueAnimator a2 = baseTransientBottomBar.a(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(com.google.android.material.a.a.f30176d);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BaseTransientBottomBar.this.f30793b.setScaleX(floatValue);
                BaseTransientBottomBar.this.f30793b.setScaleY(floatValue);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(a2, ofFloat);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.g();
            }
        });
        animatorSet.start();
    }

    static /* synthetic */ void j(BaseTransientBottomBar baseTransientBottomBar) {
        int o = baseTransientBottomBar.o();
        if (f30792d) {
            v.e(baseTransientBottomBar.f30793b, o);
        } else {
            baseTransientBottomBar.f30793b.setTranslationY(o);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(o, 0);
        valueAnimator.setInterpolator(com.google.android.material.a.a.f30174b);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.g();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.i.a();
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(o) { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f30813a;

            /* renamed from: c  reason: collision with root package name */
            private int f30815c;

            {
                this.f30813a = o;
                this.f30815c = o;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.f30792d) {
                    v.e(BaseTransientBottomBar.this.f30793b, intValue - this.f30815c);
                } else {
                    BaseTransientBottomBar.this.f30793b.setTranslationY(intValue);
                }
                this.f30815c = intValue;
            }
        });
        valueAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.k():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (p()) {
            n();
            return;
        }
        if (this.f30793b.getParent() != null) {
            this.f30793b.setVisibility(0);
        }
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int m() {
        View view = this.l;
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.g.getLocationOnScreen(iArr2);
        return (iArr2[1] + this.g.getHeight()) - i;
    }

    private void n() {
        this.f30793b.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
            @Override // java.lang.Runnable
            public final void run() {
                if (BaseTransientBottomBar.this.f30793b != null) {
                    if (BaseTransientBottomBar.this.f30793b.getParent() != null) {
                        BaseTransientBottomBar.this.f30793b.setVisibility(0);
                    }
                    if (BaseTransientBottomBar.this.f30793b.f30820c == 1) {
                        BaseTransientBottomBar.i(BaseTransientBottomBar.this);
                    } else {
                        BaseTransientBottomBar.j(BaseTransientBottomBar.this);
                    }
                }
            }
        });
    }

    private int o() {
        int height = this.f30793b.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f30793b.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    private boolean p() {
        AccessibilityManager accessibilityManager = this.x;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        return enabledAccessibilityServiceList != null && enabledAccessibilityServiceList.isEmpty();
    }

    public int a() {
        return this.j;
    }

    public final B a(int i) {
        this.j = -2;
        return this;
    }

    public final View b() {
        return this.f30793b;
    }

    protected final void b(int i) {
        com.google.android.material.snackbar.b.a().a(this.f30794c, i);
    }

    public void c() {
        com.google.android.material.snackbar.b a2 = com.google.android.material.snackbar.b.a();
        int a3 = a();
        b.a aVar = this.f30794c;
        synchronized (a2.f30828a) {
            if (a2.f(aVar)) {
                a2.f30830c.f30834b = a3;
                a2.f30829b.removeCallbacksAndMessages(a2.f30830c);
                a2.a(a2.f30830c);
                return;
            }
            if (a2.g(aVar)) {
                a2.f30831d.f30834b = a3;
            } else {
                a2.f30831d = new b.C0492b(a3, aVar);
            }
            if (a2.f30830c == null || !a2.a(a2.f30830c, 4)) {
                a2.f30830c = null;
                a2.b();
            }
        }
    }

    final void c(final int i) {
        if (!p() || this.f30793b.getVisibility() != 0) {
            h();
        } else if (this.f30793b.f30820c == 1) {
            ValueAnimator a2 = a(1.0f, BitmapDescriptorFactory.HUE_RED);
            a2.setDuration(75L);
            a2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BaseTransientBottomBar.this.h();
                }
            });
            a2.start();
        } else {
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(0, o());
            valueAnimator.setInterpolator(com.google.android.material.a.a.f30174b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    BaseTransientBottomBar.this.h();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    BaseTransientBottomBar.this.i.b();
                }
            });
            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10

                /* renamed from: b  reason: collision with root package name */
                private int f30796b = 0;

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                    if (BaseTransientBottomBar.f30792d) {
                        v.e(BaseTransientBottomBar.this.f30793b, intValue - this.f30796b);
                    } else {
                        BaseTransientBottomBar.this.f30793b.setTranslationY(intValue);
                    }
                    this.f30796b = intValue;
                }
            });
            valueAnimator.start();
        }
    }

    public void d() {
        b(3);
    }

    public boolean e() {
        return com.google.android.material.snackbar.b.a().d(this.f30794c);
    }

    final void f() {
        this.f30793b.f30819b = new b() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.b
            public final void a() {
                WindowInsets rootWindowInsets;
                if (Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = BaseTransientBottomBar.this.f30793b.getRootWindowInsets()) != null) {
                    BaseTransientBottomBar.this.t = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                    BaseTransientBottomBar.this.k();
                }
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.b
            public final void b() {
                if (com.google.android.material.snackbar.b.a().e(BaseTransientBottomBar.this.f30794c)) {
                    BaseTransientBottomBar.f30791a.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.16.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            BaseTransientBottomBar.this.h();
                        }
                    });
                }
            }
        };
        if (this.f30793b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.f30793b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.d) {
                CoordinatorLayout.d dVar = (CoordinatorLayout.d) layoutParams;
                Behavior behavior = this.w;
                Behavior behavior2 = behavior;
                if (behavior == null) {
                    behavior2 = new Behavior();
                }
                if (behavior2 instanceof Behavior) {
                    Behavior.a(behavior2, this);
                }
                behavior2.f30258b = new SwipeDismissBehavior.a() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.18
                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
                    public final void a(int i) {
                        if (i == 0) {
                            com.google.android.material.snackbar.b.a().c(BaseTransientBottomBar.this.f30794c);
                        } else if (i == 1 || i == 2) {
                            com.google.android.material.snackbar.b.a().b(BaseTransientBottomBar.this.f30794c);
                        }
                    }

                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.a
                    public final void a(View view) {
                        if (view.getParent() != null) {
                            view.setVisibility(8);
                        }
                        BaseTransientBottomBar.this.b(0);
                    }
                };
                dVar.a(behavior2);
                if (this.l == null) {
                    dVar.g = 80;
                }
            }
            this.u = m();
            k();
            this.f30793b.setVisibility(4);
            this.g.addView(this.f30793b);
        }
        if (v.B(this.f30793b)) {
            l();
            return;
        }
        this.f30793b.f30818a = new c() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.17
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.c
            public final void a() {
                BaseTransientBottomBar.this.f30793b.f30818a = null;
                BaseTransientBottomBar.this.l();
            }
        };
    }

    final void g() {
        com.google.android.material.snackbar.b.a().a(this.f30794c);
        List<Object<B>> list = this.v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.v.get(size);
            }
        }
    }

    final void h() {
        com.google.android.material.snackbar.b a2 = com.google.android.material.snackbar.b.a();
        b.a aVar = this.f30794c;
        synchronized (a2.f30828a) {
            if (a2.f(aVar)) {
                a2.f30830c = null;
                if (a2.f30831d != null) {
                    a2.b();
                }
            }
        }
        List<Object<B>> list = this.v;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.v.get(size);
            }
        }
        ViewParent parent = this.f30793b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f30793b);
        }
    }
}
