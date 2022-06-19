package androidx.core.p026h;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.C0433a;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.p027a.AbstractC0561f;
import androidx.core.p026h.p027a.C0553c;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: androidx.core.h.u */
/* loaded from: classes-dex2jar.jar:androidx/core/h/u.class */
public class C0595u {

    /* renamed from: b */
    private static Field f2091b;

    /* renamed from: c */
    private static boolean f2092c;

    /* renamed from: d */
    private static Field f2093d;

    /* renamed from: e */
    private static boolean f2094e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f2095f;

    /* renamed from: h */
    private static Field f2097h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f2099j;

    /* renamed from: a */
    private static final AtomicInteger f2090a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, C0607y> f2096g = null;

    /* renamed from: i */
    private static boolean f2098i = false;

    /* renamed from: k */
    private static final int[] f2100k = {C0433a.C0436c.accessibility_custom_action_0, C0433a.C0436c.accessibility_custom_action_1, C0433a.C0436c.accessibility_custom_action_2, C0433a.C0436c.accessibility_custom_action_3, C0433a.C0436c.accessibility_custom_action_4, C0433a.C0436c.accessibility_custom_action_5, C0433a.C0436c.accessibility_custom_action_6, C0433a.C0436c.accessibility_custom_action_7, C0433a.C0436c.accessibility_custom_action_8, C0433a.C0436c.accessibility_custom_action_9, C0433a.C0436c.accessibility_custom_action_10, C0433a.C0436c.accessibility_custom_action_11, C0433a.C0436c.accessibility_custom_action_12, C0433a.C0436c.accessibility_custom_action_13, C0433a.C0436c.accessibility_custom_action_14, C0433a.C0436c.accessibility_custom_action_15, C0433a.C0436c.accessibility_custom_action_16, C0433a.C0436c.accessibility_custom_action_17, C0433a.C0436c.accessibility_custom_action_18, C0433a.C0436c.accessibility_custom_action_19, C0433a.C0436c.accessibility_custom_action_20, C0433a.C0436c.accessibility_custom_action_21, C0433a.C0436c.accessibility_custom_action_22, C0433a.C0436c.accessibility_custom_action_23, C0433a.C0436c.accessibility_custom_action_24, C0433a.C0436c.accessibility_custom_action_25, C0433a.C0436c.accessibility_custom_action_26, C0433a.C0436c.accessibility_custom_action_27, C0433a.C0436c.accessibility_custom_action_28, C0433a.C0436c.accessibility_custom_action_29, C0433a.C0436c.accessibility_custom_action_30, C0433a.C0436c.accessibility_custom_action_31};

    /* renamed from: l */
    private static View$OnAttachStateChangeListenerC0600a f2101l = new View$OnAttachStateChangeListenerC0600a();

    /* renamed from: androidx.core.h.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/u$a.class */
    static class View$OnAttachStateChangeListenerC0600a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        private WeakHashMap<View, Boolean> f2103a = new WeakHashMap<>();

        View$OnAttachStateChangeListenerC0600a() {
        }

        /* renamed from: a */
        private void m20288a(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        /* renamed from: a */
        private void m20287a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                if (z2) {
                    C0595u.m20319g(view, 16);
                }
                this.f2103a.put(view, Boolean.valueOf(z2));
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            for (Map.Entry<View, Boolean> entry : this.f2103a.entrySet()) {
                m20287a(entry.getKey(), entry.getValue().booleanValue());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m20288a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.core.h.u$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/u$b.class */
    public static abstract class AbstractC0601b<T> {

        /* renamed from: a */
        private final int f2104a;

        /* renamed from: b */
        private final Class<T> f2105b;

        /* renamed from: c */
        private final int f2106c;

        /* renamed from: d */
        private final int f2107d;

        AbstractC0601b(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        AbstractC0601b(int i, Class<T> cls, int i2, int i3) {
            this.f2104a = i;
            this.f2105b = cls;
            this.f2107d = i2;
            this.f2106c = i3;
        }

        /* renamed from: a */
        private boolean m20286a() {
            return Build.VERSION.SDK_INT >= this.f2106c;
        }

        /* renamed from: b */
        private boolean m20283b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: a */
        abstract void mo20285a(View view, T t);

        /* renamed from: a */
        boolean mo20284a(T t, T t2) {
            return !t2.equals(t);
        }

        /* renamed from: b */
        abstract T mo20282b(View view);

        /* renamed from: b */
        void m20281b(View view, T t) {
            if (m20286a()) {
                mo20285a(view, (View) t);
            } else if (!m20283b() || !mo20284a(m20279c(view), t)) {
            } else {
                C0595u.m20330c(view);
                view.setTag(this.f2104a, t);
                C0595u.m20319g(view, 0);
            }
        }

        /* renamed from: b */
        boolean m20280b(Boolean bool, Boolean bool2) {
            boolean z = false;
            if ((bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue())) {
                z = true;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
            if (r3.f2105b.isInstance(r0) == false) goto L11;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        T m20279c(android.view.View r4) {
            /*
                r3 = this;
                r0 = r3
                boolean r0 = r0.m20286a()
                if (r0 == 0) goto Lf
                r0 = r3
                r1 = r4
                java.lang.Object r0 = r0.mo20282b(r1)
                r4 = r0
            Ld:
                r0 = r4
                return r0
            Lf:
                r0 = r3
                boolean r0 = r0.m20283b()
                if (r0 == 0) goto L2c
                r0 = r4
                r1 = r3
                int r1 = r1.f2104a
                java.lang.Object r0 = r0.getTag(r1)
                r5 = r0
                r0 = r5
                r4 = r0
                r0 = r3
                java.lang.Class<T> r0 = r0.f2105b
                r1 = r5
                boolean r0 = r0.isInstance(r1)
                if (r0 != 0) goto Ld
            L2c:
                r0 = 0
                r4 = r0
                goto Ld
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.p026h.C0595u.AbstractC0601b.m20279c(android.view.View):java.lang.Object");
        }
    }

    /* renamed from: androidx.core.h.u$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/u$c.class */
    public interface AbstractC0602c {
        /* renamed from: a */
        boolean m20278a(View view, KeyEvent keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.h.u$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/h/u$d.class */
    public static class C0603d {

        /* renamed from: a */
        private static final ArrayList<WeakReference<View>> f2108a = new ArrayList<>();

        /* renamed from: b */
        private WeakHashMap<View, Boolean> f2109b = null;

        /* renamed from: c */
        private SparseArray<WeakReference<View>> f2110c = null;

        /* renamed from: d */
        private WeakReference<KeyEvent> f2111d = null;

        C0603d() {
        }

        /* renamed from: a */
        private SparseArray<WeakReference<View>> m20277a() {
            if (this.f2110c == null) {
                this.f2110c = new SparseArray<>();
            }
            return this.f2110c;
        }

        /* renamed from: a */
        static C0603d m20275a(View view) {
            C0603d c0603d = (C0603d) view.getTag(C0433a.C0436c.tag_unhandled_key_event_manager);
            C0603d c0603d2 = c0603d;
            if (c0603d == null) {
                c0603d2 = new C0603d();
                view.setTag(C0433a.C0436c.tag_unhandled_key_event_manager, c0603d2);
            }
            return c0603d2;
        }

        /* renamed from: b */
        private View m20272b(View view, KeyEvent keyEvent) {
            View view2;
            if (this.f2109b == null || !this.f2109b.containsKey(view)) {
                view2 = null;
            } else {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        view2 = m20272b(viewGroup.getChildAt(childCount), keyEvent);
                        if (view2 != null) {
                            break;
                        }
                    }
                }
                view2 = view;
                if (!m20271c(view, keyEvent)) {
                    view2 = null;
                }
            }
            return view2;
        }

        /* renamed from: b */
        private void m20273b() {
            if (this.f2109b != null) {
                this.f2109b.clear();
            }
            if (f2108a.isEmpty()) {
                return;
            }
            synchronized (f2108a) {
                if (this.f2109b == null) {
                    this.f2109b = new WeakHashMap<>();
                }
                for (int size = f2108a.size() - 1; size >= 0; size--) {
                    View view = f2108a.get(size).get();
                    if (view == null) {
                        f2108a.remove(size);
                    } else {
                        this.f2109b.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f2109b.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        /* renamed from: c */
        private boolean m20271c(View view, KeyEvent keyEvent) {
            boolean z;
            ArrayList arrayList = (ArrayList) view.getTag(C0433a.C0436c.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC0602c) arrayList.get(size)).m20278a(view, keyEvent)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            return z;
        }

        /* renamed from: a */
        boolean m20276a(KeyEvent keyEvent) {
            boolean z;
            if (this.f2111d == null || this.f2111d.get() != keyEvent) {
                this.f2111d = new WeakReference<>(keyEvent);
                SparseArray<WeakReference<View>> m20277a = m20277a();
                WeakReference<View> weakReference = null;
                if (keyEvent.getAction() == 1) {
                    int indexOfKey = m20277a.indexOfKey(keyEvent.getKeyCode());
                    weakReference = null;
                    if (indexOfKey >= 0) {
                        weakReference = m20277a.valueAt(indexOfKey);
                        m20277a.removeAt(indexOfKey);
                    }
                }
                WeakReference<View> weakReference2 = weakReference;
                if (weakReference == null) {
                    weakReference2 = m20277a.get(keyEvent.getKeyCode());
                }
                if (weakReference2 != null) {
                    View view = weakReference2.get();
                    if (view != null && C0595u.m20370B(view)) {
                        m20271c(view, keyEvent);
                    }
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            return z;
        }

        /* renamed from: a */
        boolean m20274a(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m20273b();
            }
            View m20272b = m20272b(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (m20272b != null && !KeyEvent.isModifierKey(keyCode)) {
                    m20277a().put(keyCode, new WeakReference<>(m20272b));
                }
            }
            return m20272b != null;
        }
    }

    /* renamed from: A */
    public static Rect m20371A(View view) {
        return Build.VERSION.SDK_INT >= 18 ? view.getClipBounds() : null;
    }

    /* renamed from: B */
    public static boolean m20370B(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }

    /* renamed from: C */
    public static boolean m20369C(View view) {
        return Build.VERSION.SDK_INT >= 15 ? view.hasOnClickListeners() : false;
    }

    /* renamed from: D */
    public static Display m20368D(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getDisplay() : m20370B(view) ? ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay() : null;
    }

    /* renamed from: E */
    public static boolean m20367E(View view) {
        Boolean m20279c = m20337b().m20279c(view);
        return m20279c == null ? false : m20279c.booleanValue();
    }

    /* renamed from: F */
    public static CharSequence m20366F(View view) {
        return m20331c().m20279c(view);
    }

    /* renamed from: G */
    public static boolean m20365G(View view) {
        Boolean m20279c = m20327d().m20279c(view);
        return m20279c == null ? false : m20279c.booleanValue();
    }

    /* renamed from: H */
    private static View.AccessibilityDelegate m20364H(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (f2098i) {
            accessibilityDelegate = null;
        } else {
            if (f2097h == null) {
                try {
                    f2097h = View.class.getDeclaredField("mAccessibilityDelegate");
                    f2097h.setAccessible(true);
                } catch (Throwable th) {
                    f2098i = true;
                    accessibilityDelegate = null;
                }
            }
            try {
                Object obj = f2097h.get(view);
                accessibilityDelegate = obj instanceof View.AccessibilityDelegate ? (View.AccessibilityDelegate) obj : null;
            } catch (Throwable th2) {
                f2098i = true;
                accessibilityDelegate = null;
            }
        }
        return accessibilityDelegate;
    }

    /* renamed from: I */
    private static List<C0553c.C0554a> m20363I(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(C0433a.C0436c.tag_accessibility_actions);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(C0433a.C0436c.tag_accessibility_actions, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: J */
    private static void m20362J(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public static int m20359a(View view) {
        return Build.VERSION.SDK_INT >= 26 ? view.getImportantForAutofill() : 0;
    }

    /* renamed from: a */
    private static Rect m20361a() {
        if (f2099j == null) {
            f2099j = new ThreadLocal<>();
        }
        Rect rect = f2099j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f2099j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: a */
    public static C0572ac m20344a(View view, C0572ac c0572ac) {
        C0572ac c0572ac2 = c0572ac;
        if (Build.VERSION.SDK_INT >= 21) {
            WindowInsets windowInsets = (WindowInsets) C0572ac.m20440a(c0572ac);
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
            WindowInsets windowInsets2 = windowInsets;
            if (!onApplyWindowInsets.equals(windowInsets)) {
                windowInsets2 = new WindowInsets(onApplyWindowInsets);
            }
            c0572ac2 = C0572ac.m20439a(windowInsets2);
        }
        return c0572ac2;
    }

    /* renamed from: a */
    private static void m20360a(int i, View view) {
        List<C0553c.C0554a> m20363I = m20363I(view);
        for (int i2 = 0; i2 < m20363I.size(); i2++) {
            if (m20363I.get(i2).m20454a() == i) {
                m20363I.remove(i2);
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m20358a(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: a */
    public static void m20357a(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    /* renamed from: a */
    public static void m20356a(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: a */
    public static void m20355a(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m20353a(View view, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0594t)) {
                return;
            }
            ((AbstractC0594t) view).setSupportBackgroundTintList(colorStateList);
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        Drawable background = view.getBackground();
        boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
        if (background == null || !z) {
            return;
        }
        if (background.isStateful()) {
            background.setState(view.getDrawableState());
        }
        view.setBackground(background);
    }

    /* renamed from: a */
    public static void m20352a(View view, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT < 21) {
            if (!(view instanceof AbstractC0594t)) {
                return;
            }
            ((AbstractC0594t) view).setSupportBackgroundTintMode(mode);
            return;
        }
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        Drawable background = view.getBackground();
        boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
        if (background == null || !z) {
            return;
        }
        if (background.isStateful()) {
            background.setState(view.getDrawableState());
        }
        view.setBackground(background);
    }

    /* renamed from: a */
    public static void m20351a(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: a */
    public static void m20350a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: a */
    private static void m20348a(View view, C0553c.C0554a c0554a) {
        if (Build.VERSION.SDK_INT >= 21) {
            m20330c(view);
            m20360a(c0554a.m20454a(), view);
            m20363I(view).add(c0554a);
            m20319g(view, 0);
        }
    }

    /* renamed from: a */
    public static void m20347a(View view, C0553c.C0554a c0554a, CharSequence charSequence, AbstractC0561f abstractC0561f) {
        m20348a(view, c0554a.m20452a(charSequence, abstractC0561f));
    }

    /* renamed from: a */
    public static void m20346a(View view, C0553c c0553c) {
        view.onInitializeAccessibilityNodeInfo(c0553c.m20526a());
    }

    /* renamed from: a */
    public static void m20345a(View view, C0549a c0549a) {
        C0549a c0549a2 = c0549a;
        if (c0549a == null) {
            c0549a2 = c0549a;
            if (m20364H(view) instanceof C0549a.C0550a) {
                c0549a2 = new C0549a();
            }
        }
        view.setAccessibilityDelegate(c0549a2 == null ? null : c0549a2.m20532a());
    }

    /* renamed from: a */
    public static void m20343a(View view, final AbstractC0591q abstractC0591q) {
        if (Build.VERSION.SDK_INT >= 21) {
            if (abstractC0591q == null) {
                view.setOnApplyWindowInsetsListener(null);
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.h.u.1
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        return (WindowInsets) C0572ac.m20440a(abstractC0591q.mo2513a(view2, C0572ac.m20439a(windowInsets)));
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static void m20342a(View view, C0593s c0593s) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (c0593s != null ? c0593s.m20373a() : null));
        }
    }

    /* renamed from: a */
    public static void m20341a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: a */
    public static void m20340a(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: a */
    public static void m20339a(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f2095f == null) {
            f2095f = new WeakHashMap<>();
        }
        f2095f.put(view, str);
    }

    /* renamed from: a */
    public static void m20338a(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    /* renamed from: a */
    public static boolean m20354a(View view, int i, Bundle bundle) {
        return Build.VERSION.SDK_INT >= 16 ? view.performAccessibilityAction(i, bundle) : false;
    }

    /* renamed from: a */
    public static boolean m20349a(View view, KeyEvent keyEvent) {
        return Build.VERSION.SDK_INT >= 28 ? false : C0603d.m20275a(view).m20276a(keyEvent);
    }

    /* renamed from: b */
    public static C0549a m20336b(View view) {
        View.AccessibilityDelegate m20364H = m20364H(view);
        return m20364H == null ? null : m20364H instanceof C0549a.C0550a ? ((C0549a.C0550a) m20364H).f2016a : new C0549a(m20364H);
    }

    /* renamed from: b */
    public static C0572ac m20333b(View view, C0572ac c0572ac) {
        C0572ac c0572ac2 = c0572ac;
        if (Build.VERSION.SDK_INT >= 21) {
            WindowInsets windowInsets = (WindowInsets) C0572ac.m20440a(c0572ac);
            WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(windowInsets);
            WindowInsets windowInsets2 = windowInsets;
            if (!dispatchApplyWindowInsets.equals(windowInsets)) {
                windowInsets2 = new WindowInsets(dispatchApplyWindowInsets);
            }
            c0572ac2 = C0572ac.m20439a(windowInsets2);
        }
        return c0572ac2;
    }

    /* renamed from: b */
    private static AbstractC0601b<Boolean> m20337b() {
        return new AbstractC0601b<Boolean>(C0433a.C0436c.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.h.u.2
            /* renamed from: a */
            public Boolean mo20282b(View view) {
                return Boolean.valueOf(view.isScreenReaderFocusable());
            }

            /* renamed from: a */
            public void mo20285a(View view, Boolean bool) {
                view.setScreenReaderFocusable(bool.booleanValue());
            }

            /* renamed from: a */
            public boolean mo20284a(Boolean bool, Boolean bool2) {
                return !m20280b(bool, bool2);
            }
        };
    }

    /* renamed from: b */
    public static void m20335b(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setImportantForAccessibility(i);
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            int i2 = i;
            if (i == 4) {
                i2 = 2;
            }
            view.setImportantForAccessibility(i2);
        }
    }

    @Deprecated
    /* renamed from: b */
    public static void m20332b(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }

    /* renamed from: b */
    public static boolean m20334b(View view, KeyEvent keyEvent) {
        return Build.VERSION.SDK_INT >= 28 ? false : C0603d.m20275a(view).m20274a(view, keyEvent);
    }

    /* renamed from: c */
    static C0549a m20330c(View view) {
        C0549a m20336b = m20336b(view);
        C0549a c0549a = m20336b;
        if (m20336b == null) {
            c0549a = new C0549a();
        }
        m20345a(view, c0549a);
        return c0549a;
    }

    /* renamed from: c */
    private static AbstractC0601b<CharSequence> m20331c() {
        return new AbstractC0601b<CharSequence>(C0433a.C0436c.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.h.u.3
            /* renamed from: a */
            public CharSequence mo20282b(View view) {
                return view.getAccessibilityPaneTitle();
            }

            /* renamed from: a */
            public void mo20285a(View view, CharSequence charSequence) {
                view.setAccessibilityPaneTitle(charSequence);
            }

            /* renamed from: a */
            public boolean mo20284a(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    /* renamed from: c */
    public static void m20329c(View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            m20360a(i, view);
            m20319g(view, 0);
        }
    }

    /* renamed from: c */
    public static void m20328c(View view, boolean z) {
        m20327d().m20281b(view, (View) Boolean.valueOf(z));
    }

    /* renamed from: d */
    private static AbstractC0601b<Boolean> m20327d() {
        return new AbstractC0601b<Boolean>(C0433a.C0436c.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.h.u.4
            /* renamed from: a */
            public Boolean mo20282b(View view) {
                return Boolean.valueOf(view.isAccessibilityHeading());
            }

            /* renamed from: a */
            public void mo20285a(View view, Boolean bool) {
                view.setAccessibilityHeading(bool.booleanValue());
            }

            /* renamed from: a */
            public boolean mo20284a(Boolean bool, Boolean bool2) {
                return !m20280b(bool, bool2);
            }
        };
    }

    /* renamed from: d */
    public static void m20325d(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i);
        }
    }

    /* renamed from: d */
    public static boolean m20326d(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.hasTransientState() : false;
    }

    /* renamed from: e */
    public static void m20324e(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: e */
    public static void m20323e(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetTopAndBottom(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m20317h(view, i);
        } else {
            Rect m20361a = m20361a();
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m20361a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m20361a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            m20317h(view, i);
            if (!z || !m20361a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m20361a);
        }
    }

    /* renamed from: f */
    public static int m20322f(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getImportantForAccessibility() : 0;
    }

    /* renamed from: f */
    public static void m20321f(View view, int i) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 23) {
            view.offsetLeftAndRight(i);
        } else if (Build.VERSION.SDK_INT < 21) {
            m20315i(view, i);
        } else {
            Rect m20361a = m20361a();
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m20361a.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m20361a.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            } else {
                z = false;
            }
            m20315i(view, i);
            if (!z || !m20361a.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m20361a);
        }
    }

    /* renamed from: g */
    public static int m20320g(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getLayoutDirection() : 0;
    }

    /* renamed from: g */
    static void m20319g(View view, int i) {
        if (!((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        boolean z = m20366F(view) != null;
        if (m20318h(view) != 0 || (z && view.getVisibility() == 0)) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(z ? 32 : 2048);
            obtain.setContentChangeTypes(i);
            view.sendAccessibilityEventUnchecked(obtain);
        } else if (view.getParent() == null) {
        } else {
            try {
                view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
            }
        }
    }

    /* renamed from: h */
    public static int m20318h(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.getAccessibilityLiveRegion() : 0;
    }

    /* renamed from: h */
    private static void m20317h(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m20362J(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m20362J((View) parent);
        }
    }

    /* renamed from: i */
    public static int m20316i(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: i */
    private static void m20315i(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m20362J(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m20362J((View) parent);
        }
    }

    /* renamed from: j */
    public static int m20314j(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: k */
    public static int m20313k(View view) {
        int intValue;
        if (Build.VERSION.SDK_INT >= 16) {
            intValue = view.getMinimumWidth();
        } else {
            if (!f2092c) {
                try {
                    f2091b = View.class.getDeclaredField("mMinWidth");
                    f2091b.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                f2092c = true;
            }
            if (f2091b != null) {
                try {
                    intValue = ((Integer) f2091b.get(view)).intValue();
                } catch (Exception e2) {
                }
            }
            intValue = 0;
        }
        return intValue;
    }

    /* renamed from: l */
    public static int m20312l(View view) {
        int intValue;
        if (Build.VERSION.SDK_INT >= 16) {
            intValue = view.getMinimumHeight();
        } else {
            if (!f2094e) {
                try {
                    f2093d = View.class.getDeclaredField("mMinHeight");
                    f2093d.setAccessible(true);
                } catch (NoSuchFieldException e) {
                }
                f2094e = true;
            }
            if (f2093d != null) {
                try {
                    intValue = ((Integer) f2093d.get(view)).intValue();
                } catch (Exception e2) {
                }
            }
            intValue = 0;
        }
        return intValue;
    }

    /* renamed from: m */
    public static C0607y m20311m(View view) {
        if (f2096g == null) {
            f2096g = new WeakHashMap<>();
        }
        C0607y c0607y = f2096g.get(view);
        C0607y c0607y2 = c0607y;
        if (c0607y == null) {
            c0607y2 = new C0607y(view);
            f2096g.put(view, c0607y2);
        }
        return c0607y2;
    }

    /* renamed from: n */
    public static float m20310n(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getElevation() : 0.0f;
    }

    /* renamed from: o */
    public static String m20309o(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getTransitionName() : f2095f == null ? null : f2095f.get(view);
    }

    /* renamed from: p */
    public static int m20308p(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getWindowSystemUiVisibility() : 0;
    }

    /* renamed from: q */
    public static void m20307q(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else if (Build.VERSION.SDK_INT < 16) {
        } else {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: r */
    public static boolean m20306r(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getFitsSystemWindows() : false;
    }

    /* renamed from: s */
    public static boolean m20305s(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.hasOverlappingRendering() : true;
    }

    /* renamed from: t */
    public static boolean m20304t(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.isPaddingRelative() : false;
    }

    /* renamed from: u */
    public static ColorStateList m20303u(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getBackgroundTintList() : view instanceof AbstractC0594t ? ((AbstractC0594t) view).getSupportBackgroundTintList() : null;
    }

    /* renamed from: v */
    public static PorterDuff.Mode m20302v(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getBackgroundTintMode() : view instanceof AbstractC0594t ? ((AbstractC0594t) view).getSupportBackgroundTintMode() : null;
    }

    /* renamed from: w */
    public static boolean m20301w(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.isNestedScrollingEnabled() : view instanceof AbstractC0583i ? ((AbstractC0583i) view).isNestedScrollingEnabled() : false;
    }

    /* renamed from: x */
    public static void m20300x(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (!(view instanceof AbstractC0583i)) {
        } else {
            ((AbstractC0583i) view).stopNestedScroll();
        }
    }

    /* renamed from: y */
    public static boolean m20299y(View view) {
        return Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: z */
    public static float m20298z(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : 0.0f;
    }
}
