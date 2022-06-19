package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
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
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import com.google.android.material.C2080R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import e.m.a.g.w.c;
import e.m.a.g.w.d;
import e.m.a.g.w.h;
import e.m.a.g.w.i;
import e.m.a.g.w.j;
import e.m.a.g.w.k;
import e.m.a.g.w.l;
import e.m.a.g.w.m;
import e.m.a.g.w.n;
import e.m.a.g.w.p;
import e.m.a.g.z.a.a;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1577m.p1578a.p1677g.p1678a.C25156a;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar.class */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {

    /* renamed from: a */
    public final ViewGroup f6764a;

    /* renamed from: b */
    public final Context f6765b;

    /* renamed from: c */
    public final C2106k f6766c;

    /* renamed from: d */
    public final n f6767d;

    /* renamed from: e */
    public int f6768e;

    /* renamed from: f */
    public View f6769f;

    /* renamed from: i */
    public Rect f6772i;

    /* renamed from: j */
    public int f6773j;

    /* renamed from: k */
    public int f6774k;

    /* renamed from: l */
    public int f6775l;

    /* renamed from: m */
    public int f6776m;

    /* renamed from: n */
    public int f6777n;

    /* renamed from: o */
    public List<AbstractC2102g<B>> f6778o;

    /* renamed from: p */
    public final AccessibilityManager f6779p;

    /* renamed from: s */
    public static final int[] f6762s = {C2080R.attr.snackbarStyle};

    /* renamed from: t */
    public static final String f6763t = BaseTransientBottomBar.class.getSimpleName();

    /* renamed from: r */
    public static final Handler f6761r = new Handler(Looper.getMainLooper(), new C2099a());

    /* renamed from: g */
    public final ViewTreeObserver.OnGlobalLayoutListener f6770g = new ViewTreeObserver$OnGlobalLayoutListenerC2100b();

    /* renamed from: h */
    public final Runnable f6771h = new RunnableC2101c();

    /* renamed from: q */
    public p.b f6780q = new f(this);

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$a.class */
    public static final class C2099a implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                int i2 = message.arg1;
                if (!baseTransientBottomBar.m38401g() || baseTransientBottomBar.f6766c.getVisibility() != 0) {
                    baseTransientBottomBar.m38403e(i2);
                    return true;
                } else if (baseTransientBottomBar.f6766c.getAnimationMode() == 1) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                    ofFloat.setInterpolator(C25156a.f70397a);
                    ofFloat.addUpdateListener(new d(baseTransientBottomBar));
                    ofFloat.setDuration(75L);
                    ofFloat.addListener(new c(baseTransientBottomBar, i2));
                    ofFloat.start();
                    return true;
                } else {
                    ValueAnimator valueAnimator = new ValueAnimator();
                    valueAnimator.setIntValues(0, baseTransientBottomBar.m38404d());
                    valueAnimator.setInterpolator(C25156a.f70398b);
                    valueAnimator.setDuration(250L);
                    valueAnimator.addListener(new h(baseTransientBottomBar, i2));
                    valueAnimator.addUpdateListener(new i(baseTransientBottomBar));
                    valueAnimator.start();
                    return true;
                }
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            baseTransientBottomBar2.f6766c.setOnAttachStateChangeListener(new k(baseTransientBottomBar2));
            if (baseTransientBottomBar2.f6766c.getParent() == null) {
                ViewGroup.LayoutParams layoutParams = baseTransientBottomBar2.f6766c.getLayoutParams();
                if (layoutParams instanceof CoordinatorLayout$f) {
                    CoordinatorLayout$f coordinatorLayout$f = (CoordinatorLayout$f) layoutParams;
                    Behavior behavior = new Behavior();
                    C2103h c2103h = behavior.i;
                    Objects.requireNonNull(c2103h);
                    c2103h.f6783a = baseTransientBottomBar2.f6780q;
                    ((SwipeDismissBehavior) behavior).b = new m(baseTransientBottomBar2);
                    coordinatorLayout$f.m42994b(behavior);
                    if (baseTransientBottomBar2.f6769f == null) {
                        coordinatorLayout$f.f681g = 80;
                    }
                }
                baseTransientBottomBar2.f6777n = baseTransientBottomBar2.m38407a();
                baseTransientBottomBar2.m38399i();
                baseTransientBottomBar2.f6766c.setVisibility(4);
                baseTransientBottomBar2.f6764a.addView(baseTransientBottomBar2.f6766c);
            }
            C2106k c2106k = baseTransientBottomBar2.f6766c;
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (c2106k.isLaidOut()) {
                baseTransientBottomBar2.m38400h();
                return true;
            }
            baseTransientBottomBar2.f6766c.setOnLayoutChangeListener(new l(baseTransientBottomBar2));
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$b.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC2100b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC2100b() {
            BaseTransientBottomBar.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Objects.requireNonNull(BaseTransientBottomBar.this);
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$c.class */
    public class RunnableC2101c implements Runnable {
        public RunnableC2101c() {
            BaseTransientBottomBar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            if (baseTransientBottomBar.f6766c == null || (context = baseTransientBottomBar.f6765b) == null) {
                return;
            }
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            BaseTransientBottomBar baseTransientBottomBar2 = BaseTransientBottomBar.this;
            int[] iArr = new int[2];
            baseTransientBottomBar2.f6766c.getLocationOnScreen(iArr);
            int height = (i - (baseTransientBottomBar2.f6766c.getHeight() + iArr[1])) + ((int) BaseTransientBottomBar.this.f6766c.getTranslationY());
            BaseTransientBottomBar baseTransientBottomBar3 = BaseTransientBottomBar.this;
            if (height >= baseTransientBottomBar3.f6776m) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = baseTransientBottomBar3.f6766c.getLayoutParams();
            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                Handler handler = BaseTransientBottomBar.f6761r;
                String str = BaseTransientBottomBar.f6763t;
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            int i2 = marginLayoutParams.bottomMargin;
            BaseTransientBottomBar baseTransientBottomBar4 = BaseTransientBottomBar.this;
            marginLayoutParams.bottomMargin = (baseTransientBottomBar4.f6776m - height) + i2;
            baseTransientBottomBar4.f6766c.requestLayout();
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$g.class */
    public static abstract class AbstractC2102g<B> {
        /* renamed from: a */
        public void m38398a(B b, int i) {
        }

        /* renamed from: b */
        public void m38397b(B b) {
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$h */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$h.class */
    public static class C2103h {

        /* renamed from: a */
        public p.b f6783a;

        public C2103h(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.f = SwipeDismissBehavior.C(0.0f, 0.1f, 1.0f);
            swipeDismissBehavior.g = SwipeDismissBehavior.C(0.0f, 0.6f, 1.0f);
            swipeDismissBehavior.d = 0;
        }
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$i */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$i.class */
    public interface AbstractC2104i {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$j */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$j.class */
    public interface AbstractC2105j {
    }

    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$k */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$k.class */
    public static class C2106k extends FrameLayout {

        /* renamed from: h */
        public static final View.OnTouchListener f6784h = new View$OnTouchListenerC2107a();

        /* renamed from: a */
        public AbstractC2105j f6785a;

        /* renamed from: b */
        public AbstractC2104i f6786b;

        /* renamed from: c */
        public int f6787c;

        /* renamed from: d */
        public final float f6788d;

        /* renamed from: e */
        public final float f6789e;

        /* renamed from: f */
        public ColorStateList f6790f;

        /* renamed from: g */
        public PorterDuff.Mode f6791g;

        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$k$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/material/snackbar/BaseTransientBottomBar$k$a.class */
        public static final class View$OnTouchListenerC2107a implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        public C2106k(Context context, AttributeSet attributeSet) {
            super(a.a(context, attributeSet, 0, 0), attributeSet);
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C2080R.styleable.SnackbarLayout);
            int i = C2080R.styleable.SnackbarLayout_elevation;
            if (obtainStyledAttributes.hasValue(i)) {
                float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(i, 0);
                AtomicInteger atomicInteger = C26614s.f74505a;
                setElevation(dimensionPixelSize);
            }
            this.f6787c = obtainStyledAttributes.getInt(C2080R.styleable.SnackbarLayout_animationMode, 0);
            this.f6788d = obtainStyledAttributes.getFloat(C2080R.styleable.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
            setBackgroundTintList(C26232y.m2368d0(context2, obtainStyledAttributes, C2080R.styleable.SnackbarLayout_backgroundTint));
            setBackgroundTintMode(C26232y.m2280y1(obtainStyledAttributes.getInt(C2080R.styleable.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
            this.f6789e = obtainStyledAttributes.getFloat(C2080R.styleable.SnackbarLayout_actionTextColorAlpha, 1.0f);
            obtainStyledAttributes.recycle();
            setOnTouchListener(f6784h);
            setFocusable(true);
            if (getBackground() == null) {
                float dimension = getResources().getDimension(C2080R.dimen.mtrl_snackbar_background_corner_radius);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(dimension);
                gradientDrawable.setColor(C26232y.m2377b1(C26232y.m2373c0(this, C2080R.attr.colorSurface), C26232y.m2373c0(this, C2080R.attr.colorOnSurface), getBackgroundOverlayColorAlpha()));
                ColorStateList colorStateList = this.f6790f;
                if (colorStateList != null) {
                    gradientDrawable.setTintList(colorStateList);
                }
                AtomicInteger atomicInteger2 = C26614s.f74505a;
                setBackground(gradientDrawable);
            }
        }

        public float getActionTextColorAlpha() {
            return this.f6789e;
        }

        public int getAnimationMode() {
            return this.f6787c;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.f6788d;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            WindowInsets rootWindowInsets;
            super.onAttachedToWindow();
            k kVar = this.f6786b;
            if (kVar != null) {
                k kVar2 = kVar;
                Objects.requireNonNull(kVar2);
                if (Build.VERSION.SDK_INT >= 29 && (rootWindowInsets = kVar2.a.f6766c.getRootWindowInsets()) != null) {
                    kVar2.a.f6776m = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
                    kVar2.a.m38399i();
                }
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            requestApplyInsets();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            boolean z;
            super.onDetachedFromWindow();
            k kVar = this.f6786b;
            if (kVar != null) {
                k kVar2 = kVar;
                BaseTransientBottomBar baseTransientBottomBar = kVar2.a;
                Objects.requireNonNull(baseTransientBottomBar);
                p b = p.b();
                p.b bVar = baseTransientBottomBar.f6780q;
                synchronized (b.a) {
                    if (!b.c(bVar) && !b.d(bVar)) {
                        z = false;
                    }
                    z = true;
                }
                if (!z) {
                    return;
                }
                BaseTransientBottomBar.f6761r.post(new j(kVar2));
            }
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            l lVar = this.f6785a;
            if (lVar != null) {
                l lVar2 = lVar;
                lVar2.a.f6766c.setOnLayoutChangeListener(null);
                lVar2.a.m38400h();
            }
        }

        public void setAnimationMode(int i) {
            this.f6787c = i;
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
                if (this.f6790f != null) {
                    drawable2 = drawable.mutate();
                    drawable2.setTintList(this.f6790f);
                    drawable2.setTintMode(this.f6791g);
                }
            }
            super.setBackgroundDrawable(drawable2);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.f6790f = colorStateList;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintList(colorStateList);
                mutate.setTintMode(this.f6791g);
                if (mutate == getBackground()) {
                    return;
                }
                super.setBackgroundDrawable(mutate);
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.f6791g = mode;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintMode(mode);
                if (mutate == getBackground()) {
                    return;
                }
                super.setBackgroundDrawable(mutate);
            }
        }

        public void setOnAttachStateChangeListener(AbstractC2104i abstractC2104i) {
            this.f6786b = abstractC2104i;
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : f6784h);
            super.setOnClickListener(onClickListener);
        }

        public void setOnLayoutChangeListener(AbstractC2105j abstractC2105j) {
            this.f6785a = abstractC2105j;
        }
    }

    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, n nVar) {
        if (viewGroup != null) {
            if (view == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null content");
            }
            if (nVar == null) {
                throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
            }
            this.f6764a = viewGroup;
            this.f6767d = nVar;
            this.f6765b = context;
            e.m.a.g.o.n.c(context, e.m.a.g.o.n.a, "Theme.AppCompat");
            LayoutInflater from = LayoutInflater.from(context);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f6762s);
            int resourceId = obtainStyledAttributes.getResourceId(0, -1);
            obtainStyledAttributes.recycle();
            C2106k c2106k = (C2106k) from.inflate(resourceId != -1 ? C2080R.layout.mtrl_layout_snackbar : C2080R.layout.design_layout_snackbar, viewGroup, false);
            this.f6766c = c2106k;
            if (view instanceof SnackbarContentLayout) {
                SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
                float actionTextColorAlpha = c2106k.getActionTextColorAlpha();
                if (actionTextColorAlpha != 1.0f) {
                    snackbarContentLayout.b.setTextColor(C26232y.m2377b1(C26232y.m2373c0(snackbarContentLayout, C2080R.attr.colorSurface), snackbarContentLayout.b.getCurrentTextColor(), actionTextColorAlpha));
                }
            }
            c2106k.addView(view);
            ViewGroup.LayoutParams layoutParams = c2106k.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f6772i = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            }
            AtomicInteger atomicInteger = C26614s.f74505a;
            c2106k.setAccessibilityLiveRegion(1);
            c2106k.setImportantForAccessibility(1);
            c2106k.setFitsSystemWindows(true);
            C26614s.m1563r(c2106k, new d(this));
            C26614s.m1564q(c2106k, new e(this));
            this.f6779p = (AccessibilityManager) context.getSystemService("accessibility");
            return;
        }
        throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
    }

    /* renamed from: a */
    public final int m38407a() {
        View view = this.f6769f;
        if (view == null) {
            return 0;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[1];
        int[] iArr2 = new int[2];
        this.f6764a.getLocationOnScreen(iArr2);
        return (this.f6764a.getHeight() + iArr2[1]) - i;
    }

    /* renamed from: b */
    public void m38406b() {
        m38405c(3);
    }

    /* renamed from: c */
    public void m38405c(int i) {
        p b = p.b();
        p.b bVar = this.f6780q;
        synchronized (b.a) {
            if (b.c(bVar)) {
                b.a(b.c, i);
            } else if (b.d(bVar)) {
                b.a(b.d, i);
            }
        }
    }

    /* renamed from: d */
    public final int m38404d() {
        int height = this.f6766c.getHeight();
        ViewGroup.LayoutParams layoutParams = this.f6766c.getLayoutParams();
        int i = height;
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            i = height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return i;
    }

    /* renamed from: e */
    public void m38403e(int i) {
        p b = p.b();
        p.b bVar = this.f6780q;
        synchronized (b.a) {
            if (b.c(bVar)) {
                b.c = null;
                if (b.d != null) {
                    b.h();
                }
            }
        }
        List<AbstractC2102g<B>> list = this.f6778o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f6778o.get(size).m38398a(this, i);
            }
        }
        ViewParent parent = this.f6766c.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f6766c);
        }
    }

    /* renamed from: f */
    public void m38402f() {
        p b = p.b();
        p.b bVar = this.f6780q;
        synchronized (b.a) {
            if (b.c(bVar)) {
                b.g(b.c);
            }
        }
        List<AbstractC2102g<B>> list = this.f6778o;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f6778o.get(size).m38397b(this);
            }
        }
    }

    /* renamed from: g */
    public boolean m38401g() {
        AccessibilityManager accessibilityManager = this.f6779p;
        boolean z = true;
        if (accessibilityManager == null) {
            return true;
        }
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public final void m38400h() {
        if (m38401g()) {
            this.f6766c.post(new e.m.a.g.w.a(this));
            return;
        }
        if (this.f6766c.getParent() != null) {
            this.f6766c.setVisibility(0);
        }
        m38402f();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38399i() {
        /*
            r4 = this;
            r0 = r4
            com.google.android.material.snackbar.BaseTransientBottomBar$k r0 = r0.f6766c
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r0 == 0) goto Lbe
            r0 = r4
            android.graphics.Rect r0 = r0.f6772i
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L1b
            goto Lbe
        L1b:
            r0 = r4
            android.view.View r0 = r0.f6769f
            if (r0 == 0) goto L2a
            r0 = r4
            int r0 = r0.f6777n
            r7 = r0
            goto L2f
        L2a:
            r0 = r4
            int r0 = r0.f6773j
            r7 = r0
        L2f:
            r0 = r5
            android.view.ViewGroup$MarginLayoutParams r0 = (android.view.ViewGroup.MarginLayoutParams) r0
            r5 = r0
            r0 = r5
            r1 = r6
            int r1 = r1.bottom
            r2 = r7
            int r1 = r1 + r2
            r0.bottomMargin = r1
            r0 = r5
            r1 = r6
            int r1 = r1.left
            r2 = r4
            int r2 = r2.f6774k
            int r1 = r1 + r2
            r0.leftMargin = r1
            r0 = r5
            r1 = r6
            int r1 = r1.right
            r2 = r4
            int r2 = r2.f6775l
            int r1 = r1 + r2
            r0.rightMargin = r1
            r0 = r4
            com.google.android.material.snackbar.BaseTransientBottomBar$k r0 = r0.f6766c
            r0.requestLayout()
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto Lbe
            r0 = r4
            int r0 = r0.f6776m
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 <= 0) goto La0
            r0 = r4
            com.google.android.material.snackbar.BaseTransientBottomBar$k r0 = r0.f6766c
            android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout$f
            if (r0 == 0) goto L94
            r0 = r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout$f) r0
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r0 = r0.f675a
            boolean r0 = r0 instanceof com.google.android.material.behavior.SwipeDismissBehavior
            if (r0 == 0) goto L94
            r0 = 1
            r7 = r0
            goto L96
        L94:
            r0 = 0
            r7 = r0
        L96:
            r0 = r7
            if (r0 == 0) goto La0
            r0 = r8
            r7 = r0
            goto La2
        La0:
            r0 = 0
            r7 = r0
        La2:
            r0 = r7
            if (r0 == 0) goto Lbe
            r0 = r4
            com.google.android.material.snackbar.BaseTransientBottomBar$k r0 = r0.f6766c
            r1 = r4
            java.lang.Runnable r1 = r1.f6771h
            boolean r0 = r0.removeCallbacks(r1)
            r0 = r4
            com.google.android.material.snackbar.BaseTransientBottomBar$k r0 = r0.f6766c
            r1 = r4
            java.lang.Runnable r1 = r1.f6771h
            boolean r0 = r0.post(r1)
        Lbe:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.m38399i():void");
    }
}
