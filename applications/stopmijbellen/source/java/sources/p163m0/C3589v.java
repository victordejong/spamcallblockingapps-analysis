package p163m0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import com.applovin.mediation.C1564R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p087f0.C2695b;
import p163m0.C3546a;
import p163m0.C3551b0;
import p163m0.C3563c;
import p163m0.C3589v;
import p174n0.AbstractC3702d;
import p174n0.C3694b;
import p226s.C4263g;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: m0.v */
/* loaded from: classes-dex2jar.jar:m0/v.class */
public class C3589v {

    /* renamed from: b */
    public static Field f11781b;

    /* renamed from: d */
    public static ThreadLocal<Rect> f11783d;

    /* renamed from: a */
    public static WeakHashMap<View, C3611y> f11780a = null;

    /* renamed from: c */
    public static boolean f11782c = false;

    /* renamed from: e */
    public static final int[] f11784e = {2131296272, 2131296273, 2131296284, 2131296295, 2131296298, 2131296299, 2131296300, 2131296301, 2131296302, 2131296303, 2131296274, 2131296275, 2131296276, 2131296277, 2131296278, 2131296279, 2131296280, 2131296281, 2131296282, 2131296283, 2131296285, 2131296286, 2131296287, 2131296288, 2131296289, 2131296290, 2131296291, 2131296292, 2131296293, 2131296294, 2131296296, 2131296297};

    /* renamed from: f */
    public static final AbstractC3582o f11785f = C3584q.f11779a;

    /* renamed from: g */
    public static final ViewTreeObserver$OnGlobalLayoutListenerC3590a f11786g = new ViewTreeObserver$OnGlobalLayoutListenerC3590a();

    /* renamed from: m0.v$a */
    /* loaded from: classes-dex2jar.jar:m0/v$a.class */
    public static class ViewTreeObserver$OnGlobalLayoutListenerC3590a implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a */
        public final WeakHashMap<View, Boolean> f11787a = new WeakHashMap<>();

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f11787a.entrySet()) {
                    View key = entry.getKey();
                    boolean booleanValue = entry.getValue().booleanValue();
                    boolean z = key.getVisibility() == 0;
                    if (booleanValue != z) {
                        C3589v.m2111m(key, z ? 16 : 32);
                        this.f11787a.put(key, Boolean.valueOf(z));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: m0.v$b */
    /* loaded from: classes-dex2jar.jar:m0/v$b.class */
    public static abstract class AbstractC3591b<T> {

        /* renamed from: a */
        public final int f11788a;

        /* renamed from: b */
        public final Class<T> f11789b;

        /* renamed from: c */
        public final int f11790c;

        /* renamed from: d */
        public final int f11791d;

        public AbstractC3591b(int i, Class<T> cls, int i2) {
            this.f11788a = i;
            this.f11789b = cls;
            this.f11791d = 0;
            this.f11790c = i2;
        }

        public AbstractC3591b(int i, Class<T> cls, int i2, int i3) {
            this.f11788a = i;
            this.f11789b = cls;
            this.f11791d = i2;
            this.f11790c = i3;
        }

        /* renamed from: a */
        public boolean m2100a(Boolean bool, Boolean bool2) {
            boolean z = true;
            if ((bool != null && bool.booleanValue()) != (bool2 != null && bool2.booleanValue())) {
                z = false;
            }
            return z;
        }

        /* renamed from: b */
        public abstract T mo2099b(View view);

        /* renamed from: c */
        public abstract void mo2098c(View view, T t);

        /* renamed from: d */
        public T m2097d(View view) {
            if (Build.VERSION.SDK_INT >= this.f11790c) {
                return mo2099b(view);
            }
            T t = (T) view.getTag(this.f11788a);
            if (!this.f11789b.isInstance(t)) {
                return null;
            }
            return t;
        }

        /* renamed from: e */
        public void m2096e(View view, T t) {
            if (Build.VERSION.SDK_INT >= this.f11790c) {
                mo2098c(view, t);
            } else if (!mo2095f(m2097d(view), t)) {
            } else {
                C3546a m2117g = C3589v.m2117g(view);
                C3546a c3546a = m2117g;
                if (m2117g == null) {
                    c3546a = new C3546a();
                }
                C3589v.m2103u(view, c3546a);
                view.setTag(this.f11788a, t);
                C3589v.m2111m(view, this.f11791d);
            }
        }

        /* renamed from: f */
        public abstract boolean mo2095f(T t, T t2);
    }

    /* renamed from: m0.v$c */
    /* loaded from: classes-dex2jar.jar:m0/v$c.class */
    public static class C3592c {
        /* renamed from: a */
        public static boolean m2094a(View view) {
            return view.hasOnClickListeners();
        }
    }

    /* renamed from: m0.v$d */
    /* loaded from: classes-dex2jar.jar:m0/v$d.class */
    public static class C3593d {
        /* renamed from: a */
        public static AccessibilityNodeProvider m2093a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        /* renamed from: b */
        public static boolean m2092b(View view) {
            return view.getFitsSystemWindows();
        }

        /* renamed from: c */
        public static int m2091c(View view) {
            return view.getImportantForAccessibility();
        }

        /* renamed from: d */
        public static int m2090d(View view) {
            return view.getMinimumHeight();
        }

        /* renamed from: e */
        public static int m2089e(View view) {
            return view.getMinimumWidth();
        }

        /* renamed from: f */
        public static ViewParent m2088f(View view) {
            return view.getParentForAccessibility();
        }

        /* renamed from: g */
        public static int m2087g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        /* renamed from: h */
        public static boolean m2086h(View view) {
            return view.hasOverlappingRendering();
        }

        /* renamed from: i */
        public static boolean m2085i(View view) {
            return view.hasTransientState();
        }

        /* renamed from: j */
        public static boolean m2084j(View view, int i, Bundle bundle) {
            return view.performAccessibilityAction(i, bundle);
        }

        /* renamed from: k */
        public static void m2083k(View view) {
            view.postInvalidateOnAnimation();
        }

        /* renamed from: l */
        public static void m2082l(View view, int i, int i2, int i3, int i4) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        }

        /* renamed from: m */
        public static void m2081m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        /* renamed from: n */
        public static void m2080n(View view, Runnable runnable, long j) {
            view.postOnAnimationDelayed(runnable, j);
        }

        /* renamed from: o */
        public static void m2079o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        /* renamed from: p */
        public static void m2078p(View view) {
            view.requestFitSystemWindows();
        }

        /* renamed from: q */
        public static void m2077q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        /* renamed from: r */
        public static void m2076r(View view, boolean z) {
            view.setHasTransientState(z);
        }

        /* renamed from: s */
        public static void m2075s(View view, int i) {
            view.setImportantForAccessibility(i);
        }
    }

    /* renamed from: m0.v$e */
    /* loaded from: classes-dex2jar.jar:m0/v$e.class */
    public static class C3594e {
        /* renamed from: a */
        public static int m2074a() {
            return View.generateViewId();
        }

        /* renamed from: b */
        public static Display m2073b(View view) {
            return view.getDisplay();
        }

        /* renamed from: c */
        public static int m2072c(View view) {
            return view.getLabelFor();
        }

        /* renamed from: d */
        public static int m2071d(View view) {
            return view.getLayoutDirection();
        }

        /* renamed from: e */
        public static int m2070e(View view) {
            return view.getPaddingEnd();
        }

        /* renamed from: f */
        public static int m2069f(View view) {
            return view.getPaddingStart();
        }

        /* renamed from: g */
        public static boolean m2068g(View view) {
            return view.isPaddingRelative();
        }

        /* renamed from: h */
        public static void m2067h(View view, int i) {
            view.setLabelFor(i);
        }

        /* renamed from: i */
        public static void m2066i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        /* renamed from: j */
        public static void m2065j(View view, int i) {
            view.setLayoutDirection(i);
        }

        /* renamed from: k */
        public static void m2064k(View view, int i, int i2, int i3, int i4) {
            view.setPaddingRelative(i, i2, i3, i4);
        }
    }

    /* renamed from: m0.v$f */
    /* loaded from: classes-dex2jar.jar:m0/v$f.class */
    public static class C3595f {
        /* renamed from: a */
        public static Rect m2063a(View view) {
            return view.getClipBounds();
        }

        /* renamed from: b */
        public static boolean m2062b(View view) {
            return view.isInLayout();
        }

        /* renamed from: c */
        public static void m2061c(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: m0.v$g */
    /* loaded from: classes-dex2jar.jar:m0/v$g.class */
    public static class C3596g {
        /* renamed from: a */
        public static int m2060a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        /* renamed from: b */
        public static boolean m2059b(View view) {
            return view.isAttachedToWindow();
        }

        /* renamed from: c */
        public static boolean m2058c(View view) {
            return view.isLaidOut();
        }

        /* renamed from: d */
        public static boolean m2057d(View view) {
            return view.isLayoutDirectionResolved();
        }

        /* renamed from: e */
        public static void m2056e(ViewParent viewParent, View view, View view2, int i) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i);
        }

        /* renamed from: f */
        public static void m2055f(View view, int i) {
            view.setAccessibilityLiveRegion(i);
        }

        /* renamed from: g */
        public static void m2054g(AccessibilityEvent accessibilityEvent, int i) {
            accessibilityEvent.setContentChangeTypes(i);
        }
    }

    /* renamed from: m0.v$h */
    /* loaded from: classes-dex2jar.jar:m0/v$h.class */
    public static class C3597h {
        /* renamed from: a */
        public static WindowInsets m2053a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        /* renamed from: b */
        public static WindowInsets m2052b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        /* renamed from: c */
        public static void m2051c(View view) {
            view.requestApplyInsets();
        }
    }

    /* renamed from: m0.v$i */
    /* loaded from: classes-dex2jar.jar:m0/v$i.class */
    public static class C3598i {

        /* renamed from: m0.v$i$a */
        /* loaded from: classes-dex2jar.jar:m0/v$i$a.class */
        public class View$OnApplyWindowInsetsListenerC3599a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a */
            public C3551b0 f11792a = null;

            /* renamed from: b */
            public final /* synthetic */ View f11793b;

            /* renamed from: c */
            public final /* synthetic */ AbstractC3580m f11794c;

            public View$OnApplyWindowInsetsListenerC3599a(View view, AbstractC3580m abstractC3580m) {
                this.f11793b = view;
                this.f11794c = abstractC3580m;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                C3551b0 m2173j = C3551b0.m2173j(windowInsets, view);
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    C3598i.m2050a(windowInsets, this.f11793b);
                    if (m2173j.equals(this.f11792a)) {
                        return this.f11794c.mo686a(view, m2173j).m2175h();
                    }
                }
                this.f11792a = m2173j;
                C3551b0 mo686a = this.f11794c.mo686a(view, m2173j);
                if (i >= 30) {
                    return mo686a.m2175h();
                }
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                C3597h.m2051c(view);
                return mo686a.m2175h();
            }
        }

        /* renamed from: a */
        public static void m2050a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(C1564R.C1567id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        /* renamed from: b */
        public static C3551b0 m2049b(View view, C3551b0 c3551b0, Rect rect) {
            WindowInsets m2175h = c3551b0.m2175h();
            if (m2175h != null) {
                return C3551b0.m2173j(view.computeSystemWindowInsets(m2175h, rect), view);
            }
            rect.setEmpty();
            return c3551b0;
        }

        /* renamed from: c */
        public static boolean m2048c(View view, float f, float f2, boolean z) {
            return view.dispatchNestedFling(f, f2, z);
        }

        /* renamed from: d */
        public static boolean m2047d(View view, float f, float f2) {
            return view.dispatchNestedPreFling(f, f2);
        }

        /* renamed from: e */
        public static boolean m2046e(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i, i2, iArr, iArr2);
        }

        /* renamed from: f */
        public static boolean m2045f(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return view.dispatchNestedScroll(i, i2, i3, i4, iArr);
        }

        /* renamed from: g */
        public static ColorStateList m2044g(View view) {
            return view.getBackgroundTintList();
        }

        /* renamed from: h */
        public static PorterDuff.Mode m2043h(View view) {
            return view.getBackgroundTintMode();
        }

        /* renamed from: i */
        public static float m2042i(View view) {
            return view.getElevation();
        }

        /* renamed from: j */
        public static C3551b0 m2041j(View view) {
            C3551b0 c3551b0 = null;
            if (C3551b0.C3552a.f11724d) {
                if (!view.isAttachedToWindow()) {
                    c3551b0 = null;
                } else {
                    try {
                        Object obj = C3551b0.C3552a.f11721a.get(view.getRootView());
                        c3551b0 = null;
                        if (obj != null) {
                            Rect rect = (Rect) C3551b0.C3552a.f11722b.get(obj);
                            Rect rect2 = (Rect) C3551b0.C3552a.f11723c.get(obj);
                            c3551b0 = null;
                            if (rect != null) {
                                c3551b0 = null;
                                if (rect2 != null) {
                                    int i = Build.VERSION.SDK_INT;
                                    C3551b0.C3554c c3555d = i >= 30 ? new C3551b0.C3555d() : i >= 29 ? new C3551b0.C3554c() : new C3551b0.C3553b();
                                    c3555d.mo2169c(C2695b.m3253a(rect.left, rect.top, rect.right, rect.bottom));
                                    c3555d.mo2168d(C2695b.m3253a(rect2.left, rect2.top, rect2.right, rect2.bottom));
                                    c3551b0 = c3555d.mo2170b();
                                    c3551b0.f11720a.mo2151n(c3551b0);
                                    c3551b0.f11720a.mo2161d(view.getRootView());
                                }
                            }
                        }
                    } catch (IllegalAccessException e) {
                        StringBuilder m8752j = C0082b.m8752j("Failed to get insets from AttachInfo. ");
                        m8752j.append(e.getMessage());
                        Log.w("WindowInsetsCompat", m8752j.toString(), e);
                        c3551b0 = null;
                    }
                }
            }
            return c3551b0;
        }

        /* renamed from: k */
        public static String m2040k(View view) {
            return view.getTransitionName();
        }

        /* renamed from: l */
        public static float m2039l(View view) {
            return view.getTranslationZ();
        }

        /* renamed from: m */
        public static float m2038m(View view) {
            return view.getZ();
        }

        /* renamed from: n */
        public static boolean m2037n(View view) {
            return view.hasNestedScrollingParent();
        }

        /* renamed from: o */
        public static boolean m2036o(View view) {
            return view.isImportantForAccessibility();
        }

        /* renamed from: p */
        public static boolean m2035p(View view) {
            return view.isNestedScrollingEnabled();
        }

        /* renamed from: q */
        public static void m2034q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        /* renamed from: r */
        public static void m2033r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        /* renamed from: s */
        public static void m2032s(View view, float f) {
            view.setElevation(f);
        }

        /* renamed from: t */
        public static void m2031t(View view, boolean z) {
            view.setNestedScrollingEnabled(z);
        }

        /* renamed from: u */
        public static void m2030u(View view, AbstractC3580m abstractC3580m) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(C1564R.C1567id.tag_on_apply_window_listener, abstractC3580m);
            }
            if (abstractC3580m == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(C1564R.C1567id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC3599a(view, abstractC3580m));
            }
        }

        /* renamed from: v */
        public static void m2029v(View view, String str) {
            view.setTransitionName(str);
        }

        /* renamed from: w */
        public static void m2028w(View view, float f) {
            view.setTranslationZ(f);
        }

        /* renamed from: x */
        public static void m2027x(View view, float f) {
            view.setZ(f);
        }

        /* renamed from: y */
        public static boolean m2026y(View view, int i) {
            return view.startNestedScroll(i);
        }

        /* renamed from: z */
        public static void m2025z(View view) {
            view.stopNestedScroll();
        }
    }

    /* renamed from: m0.v$j */
    /* loaded from: classes-dex2jar.jar:m0/v$j.class */
    public static class C3600j {
        /* renamed from: a */
        public static C3551b0 m2024a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            C3551b0 m2173j = C3551b0.m2173j(rootWindowInsets, null);
            m2173j.f11720a.mo2151n(m2173j);
            m2173j.f11720a.mo2161d(view.getRootView());
            return m2173j;
        }

        /* renamed from: b */
        public static int m2023b(View view) {
            return view.getScrollIndicators();
        }

        /* renamed from: c */
        public static void m2022c(View view, int i) {
            view.setScrollIndicators(i);
        }

        /* renamed from: d */
        public static void m2021d(View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: m0.v$k */
    /* loaded from: classes-dex2jar.jar:m0/v$k.class */
    public static class C3601k {
        /* renamed from: a */
        public static void m2020a(View view, Collection<View> collection, int i) {
            view.addKeyboardNavigationClusters(collection, i);
        }

        /* renamed from: b */
        public static int m2019b(View view) {
            return view.getImportantForAutofill();
        }

        /* renamed from: c */
        public static int m2018c(View view) {
            return view.getNextClusterForwardId();
        }

        /* renamed from: d */
        public static boolean m2017d(View view) {
            return view.hasExplicitFocusable();
        }

        /* renamed from: e */
        public static boolean m2016e(View view) {
            return view.isFocusedByDefault();
        }

        /* renamed from: f */
        public static boolean m2015f(View view) {
            return view.isImportantForAutofill();
        }

        /* renamed from: g */
        public static boolean m2014g(View view) {
            return view.isKeyboardNavigationCluster();
        }

        /* renamed from: h */
        public static View m2013h(View view, View view2, int i) {
            return view.keyboardNavigationClusterSearch(view2, i);
        }

        /* renamed from: i */
        public static boolean m2012i(View view) {
            return view.restoreDefaultFocus();
        }

        /* renamed from: j */
        public static void m2011j(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        /* renamed from: k */
        public static void m2010k(View view, boolean z) {
            view.setFocusedByDefault(z);
        }

        /* renamed from: l */
        public static void m2009l(View view, int i) {
            view.setImportantForAutofill(i);
        }

        /* renamed from: m */
        public static void m2008m(View view, boolean z) {
            view.setKeyboardNavigationCluster(z);
        }

        /* renamed from: n */
        public static void m2007n(View view, int i) {
            view.setNextClusterForwardId(i);
        }

        /* renamed from: o */
        public static void m2006o(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* renamed from: m0.v$l */
    /* loaded from: classes-dex2jar.jar:m0/v$l.class */
    public static class C3602l {
        /* renamed from: a */
        public static void m2005a(View view, final AbstractC3607q abstractC3607q) {
            C4263g c4263g = (C4263g) view.getTag(2131297100);
            C4263g c4263g2 = c4263g;
            if (c4263g == null) {
                c4263g2 = new C4263g();
                view.setTag(2131297100, c4263g2);
            }
            Objects.requireNonNull(abstractC3607q);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: m0.w
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return C3589v.AbstractC3607q.this.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            c4263g2.put(abstractC3607q, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        /* renamed from: b */
        public static CharSequence m2004b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        /* renamed from: c */
        public static boolean m2003c(View view) {
            return view.isAccessibilityHeading();
        }

        /* renamed from: d */
        public static boolean m2002d(View view) {
            return view.isScreenReaderFocusable();
        }

        /* renamed from: e */
        public static void m2001e(View view, AbstractC3607q abstractC3607q) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            C4263g c4263g = (C4263g) view.getTag(2131297100);
            if (c4263g == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) c4263g.getOrDefault(abstractC3607q, null)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        /* renamed from: f */
        public static <T> T m2000f(View view, int i) {
            return (T) view.requireViewById(i);
        }

        /* renamed from: g */
        public static void m1999g(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        /* renamed from: h */
        public static void m1998h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        /* renamed from: i */
        public static void m1997i(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }
    }

    /* renamed from: m0.v$m */
    /* loaded from: classes-dex2jar.jar:m0/v$m.class */
    public static class C3603m {
        /* renamed from: a */
        public static View.AccessibilityDelegate m1996a(View view) {
            return view.getAccessibilityDelegate();
        }

        /* renamed from: b */
        public static List<Rect> m1995b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        /* renamed from: c */
        public static void m1994c(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }

        /* renamed from: d */
        public static void m1993d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* renamed from: m0.v$n */
    /* loaded from: classes-dex2jar.jar:m0/v$n.class */
    public static class C3604n {
        /* renamed from: a */
        public static CharSequence m1992a(View view) {
            return view.getStateDescription();
        }

        /* renamed from: b */
        public static void m1991b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* renamed from: m0.v$o */
    /* loaded from: classes-dex2jar.jar:m0/v$o.class */
    public static final class C3605o {
        /* renamed from: a */
        public static String[] m1990a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        /* renamed from: b */
        public static C3563c m1989b(View view, C3563c c3563c) {
            ContentInfo mo2144d = c3563c.f11750a.mo2144d();
            ContentInfo performReceiveContent = view.performReceiveContent(mo2144d);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == mo2144d ? c3563c : new C3563c(new C3563c.C3567d(performReceiveContent));
        }

        /* renamed from: c */
        public static void m1988c(View view, String[] strArr, AbstractC3581n abstractC3581n) {
            if (abstractC3581n == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerC3606p(abstractC3581n));
            }
        }
    }

    /* renamed from: m0.v$p */
    /* loaded from: classes-dex2jar.jar:m0/v$p.class */
    public static final class OnReceiveContentListenerC3606p implements OnReceiveContentListener {

        /* renamed from: a */
        public final AbstractC3581n f11795a;

        public OnReceiveContentListenerC3606p(AbstractC3581n abstractC3581n) {
            this.f11795a = abstractC3581n;
        }

        @Override // android.view.OnReceiveContentListener
        public ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            C3563c c3563c = new C3563c(new C3563c.C3567d(contentInfo));
            C3563c mo1553a = this.f11795a.mo1553a(view, c3563c);
            if (mo1553a == null) {
                return null;
            }
            return mo1553a == c3563c ? contentInfo : mo1553a.f11750a.mo2144d();
        }
    }

    /* renamed from: m0.v$q */
    /* loaded from: classes-dex2jar.jar:m0/v$q.class */
    public interface AbstractC3607q {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* renamed from: m0.v$r */
    /* loaded from: classes-dex2jar.jar:m0/v$r.class */
    public static class C3608r {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f11796d = new ArrayList<>();

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f11797a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f11798b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f11799c = null;

        /* renamed from: a */
        public final View m1987a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f11797a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View m1987a = m1987a(viewGroup.getChildAt(childCount), keyEvent);
                    if (m1987a != null) {
                        return m1987a;
                    }
                }
            }
            if (!m1986b(view, keyEvent)) {
                return null;
            }
            return view;
        }

        /* renamed from: b */
        public final boolean m1986b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(2131297100);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC3607q) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    static {
        new AtomicInteger(1);
    }

    /* renamed from: a */
    public static void m2123a(View view, C3694b.C3695a c3695a) {
        C3546a m2117g = m2117g(view);
        C3546a c3546a = m2117g;
        if (m2117g == null) {
            c3546a = new C3546a();
        }
        m2103u(view, c3546a);
        m2106r(c3695a.m1868a(), view);
        m2114j(view).add(c3695a);
        m2111m(view, 0);
    }

    /* renamed from: b */
    public static C3611y m2122b(View view) {
        if (f11780a == null) {
            f11780a = new WeakHashMap<>();
        }
        C3611y c3611y = f11780a.get(view);
        C3611y c3611y2 = c3611y;
        if (c3611y == null) {
            c3611y2 = new C3611y(view);
            f11780a.put(view, c3611y2);
        }
        return c3611y2;
    }

    /* renamed from: c */
    public static void m2121c(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m2101w((View) parent);
        }
    }

    /* renamed from: d */
    public static void m2120d(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m2101w((View) parent);
        }
    }

    /* renamed from: e */
    public static C3551b0 m2119e(View view, C3551b0 c3551b0) {
        WindowInsets m2175h = c3551b0.m2175h();
        if (m2175h != null) {
            WindowInsets m2053a = C3597h.m2053a(view, m2175h);
            if (!m2053a.equals(m2175h)) {
                return C3551b0.m2173j(m2053a, view);
            }
        }
        return c3551b0;
    }

    /* renamed from: f */
    public static boolean m2118f(View view, KeyEvent keyEvent) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = C3608r.f11796d;
        C3608r c3608r = (C3608r) view.getTag(2131297099);
        C3608r c3608r2 = c3608r;
        if (c3608r == null) {
            c3608r2 = new C3608r();
            view.setTag(2131297099, c3608r2);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap<View, Boolean> weakHashMap = c3608r2.f11797a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = C3608r.f11796d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (c3608r2.f11797a == null) {
                        c3608r2.f11797a = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        int i = size - 1;
                        if (i < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = C3608r.f11796d;
                        View view2 = arrayList3.get(i).get();
                        if (view2 == null) {
                            arrayList3.remove(i);
                            size = i;
                        } else {
                            c3608r2.f11797a.put(view2, Boolean.TRUE);
                            ViewParent parent = view2.getParent();
                            while (true) {
                                size = i;
                                if (parent instanceof View) {
                                    c3608r2.f11797a.put((View) parent, Boolean.TRUE);
                                    parent = parent.getParent();
                                }
                            }
                        }
                    }
                }
            }
        }
        View m1987a = c3608r2.m1987a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m1987a != null && !KeyEvent.isModifierKey(keyCode)) {
                if (c3608r2.f11798b == null) {
                    c3608r2.f11798b = new SparseArray<>();
                }
                c3608r2.f11798b.put(keyCode, new WeakReference<>(m1987a));
            }
        }
        if (m1987a != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: g */
    public static C3546a m2117g(View view) {
        View.AccessibilityDelegate m2116h = m2116h(view);
        if (m2116h == null) {
            return null;
        }
        return m2116h instanceof C3546a.C3547a ? ((C3546a.C3547a) m2116h).f11717a : new C3546a(m2116h);
    }

    /* renamed from: h */
    public static View.AccessibilityDelegate m2116h(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (Build.VERSION.SDK_INT >= 29) {
            return C3603m.m1996a(view);
        }
        if (f11782c) {
            accessibilityDelegate = null;
        } else {
            if (f11781b == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    f11781b = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable th) {
                    f11782c = true;
                    accessibilityDelegate = null;
                }
            }
            try {
                Object obj = f11781b.get(view);
                accessibilityDelegate = null;
                if (obj instanceof View.AccessibilityDelegate) {
                    accessibilityDelegate = (View.AccessibilityDelegate) obj;
                }
            } catch (Throwable th2) {
                f11782c = true;
                accessibilityDelegate = null;
            }
        }
        return accessibilityDelegate;
    }

    /* renamed from: i */
    public static CharSequence m2115i(View view) {
        CharSequence charSequence;
        if (Build.VERSION.SDK_INT >= 28) {
            charSequence = C3602l.m2004b(view);
        } else {
            charSequence = view.getTag(2131297092);
            if (!CharSequence.class.isInstance(charSequence)) {
                charSequence = null;
            }
        }
        return (CharSequence) charSequence;
    }

    /* renamed from: j */
    public static List<C3694b.C3695a> m2114j(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(2131297089);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(2131297089, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: k */
    public static Rect m2113k() {
        if (f11783d == null) {
            f11783d = new ThreadLocal<>();
        }
        Rect rect = f11783d.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f11783d.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: l */
    public static String[] m2112l(View view) {
        return Build.VERSION.SDK_INT >= 31 ? C3605o.m1990a(view) : (String[]) view.getTag(C1564R.C1567id.tag_on_receive_content_mime_types);
    }

    /* renamed from: m */
    public static void m2111m(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        boolean z = m2115i(view) != null && view.getVisibility() == 0;
        int i2 = 32;
        if (C3596g.m2060a(view) == 0 && !z) {
            if (i != 32) {
                if (view.getParent() == null) {
                    return;
                }
                try {
                    C3596g.m2056e(view.getParent(), view, view, i);
                    return;
                } catch (AbstractMethodError e) {
                    Objects.requireNonNull(view.getParent());
                    return;
                }
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain);
            obtain.setEventType(32);
            C3596g.m2054g(obtain, i);
            obtain.setSource(view);
            view.onPopulateAccessibilityEvent(obtain);
            obtain.getText().add(m2115i(view));
            accessibilityManager.sendAccessibilityEvent(obtain);
            return;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
        if (!z) {
            i2 = 2048;
        }
        obtain2.setEventType(i2);
        C3596g.m2054g(obtain2, i);
        if (z) {
            obtain2.getText().add(m2115i(view));
            if (C3593d.m2091c(view) == 0) {
                C3593d.m2075s(view, 1);
            }
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (C3593d.m2091c((View) viewParent) == 4) {
                    C3593d.m2075s(view, 2);
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        view.sendAccessibilityEventUnchecked(obtain2);
    }

    /* renamed from: n */
    public static void m2110n(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        Rect m2113k = m2113k();
        boolean z = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m2113k.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m2113k.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        m2121c(view, i);
        if (!z || !m2113k.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            return;
        }
        ((View) parent).invalidate(m2113k);
    }

    /* renamed from: o */
    public static void m2109o(View view, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        Rect m2113k = m2113k();
        boolean z = false;
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            m2113k.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !m2113k.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        m2120d(view, i);
        if (!z || !m2113k.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            return;
        }
        ((View) parent).invalidate(m2113k);
    }

    /* renamed from: p */
    public static C3551b0 m2108p(View view, C3551b0 c3551b0) {
        WindowInsets m2175h = c3551b0.m2175h();
        if (m2175h != null) {
            WindowInsets m2052b = C3597h.m2052b(view, m2175h);
            if (!m2052b.equals(m2175h)) {
                return C3551b0.m2173j(m2052b, view);
            }
        }
        return c3551b0;
    }

    /* renamed from: q */
    public static C3563c m2107q(View view, C3563c c3563c) {
        C3563c c3563c2;
        if (Log.isLoggable("ViewCompat", 3)) {
            Objects.toString(c3563c);
            Objects.requireNonNull(view);
            view.getId();
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return C3605o.m1989b(view, c3563c);
        }
        AbstractC3581n abstractC3581n = (AbstractC3581n) view.getTag(C1564R.C1567id.tag_on_receive_content_listener);
        if (abstractC3581n == null) {
            return (view instanceof AbstractC3582o ? (AbstractC3582o) view : f11785f).mo2124a(c3563c);
        }
        C3563c mo1553a = abstractC3581n.mo1553a(view, c3563c);
        if (mo1553a == null) {
            c3563c2 = null;
        } else {
            c3563c2 = (view instanceof AbstractC3582o ? (AbstractC3582o) view : f11785f).mo2124a(mo1553a);
        }
        return c3563c2;
    }

    /* renamed from: r */
    public static void m2106r(int i, View view) {
        List<C3694b.C3695a> m2114j = m2114j(view);
        for (int i2 = 0; i2 < m2114j.size(); i2++) {
            if (m2114j.get(i2).m1868a() == i) {
                m2114j.remove(i2);
                return;
            }
        }
    }

    /* renamed from: s */
    public static void m2105s(View view, C3694b.C3695a c3695a, CharSequence charSequence, AbstractC3702d abstractC3702d) {
        if (abstractC3702d != null) {
            m2123a(view, new C3694b.C3695a(null, c3695a.f12084b, null, abstractC3702d, c3695a.f12085c));
            return;
        }
        m2106r(c3695a.m1868a(), view);
        m2111m(view, 0);
    }

    /* renamed from: t */
    public static void m2104t(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            C3603m.m1994c(view, context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: u */
    public static void m2103u(View view, C3546a c3546a) {
        C3546a c3546a2 = c3546a;
        if (c3546a == null) {
            c3546a2 = c3546a;
            if (m2116h(view) instanceof C3546a.C3547a) {
                c3546a2 = new C3546a();
            }
        }
        view.setAccessibilityDelegate(c3546a2 == null ? null : c3546a2.f11716b);
    }

    /* renamed from: v */
    public static void m2102v(View view, CharSequence charSequence) {
        new C3586s(2131297092, CharSequence.class, 8, 28).m2096e(view, charSequence);
        if (charSequence == null) {
            ViewTreeObserver$OnGlobalLayoutListenerC3590a viewTreeObserver$OnGlobalLayoutListenerC3590a = f11786g;
            viewTreeObserver$OnGlobalLayoutListenerC3590a.f11787a.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserver$OnGlobalLayoutListenerC3590a);
            C3593d.m2079o(view.getViewTreeObserver(), viewTreeObserver$OnGlobalLayoutListenerC3590a);
            return;
        }
        ViewTreeObserver$OnGlobalLayoutListenerC3590a viewTreeObserver$OnGlobalLayoutListenerC3590a2 = f11786g;
        viewTreeObserver$OnGlobalLayoutListenerC3590a2.f11787a.put(view, Boolean.valueOf(view.getVisibility() == 0));
        view.addOnAttachStateChangeListener(viewTreeObserver$OnGlobalLayoutListenerC3590a2);
        if (!C3596g.m2059b(view)) {
            return;
        }
        view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC3590a2);
    }

    /* renamed from: w */
    public static void m2101w(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }
}
