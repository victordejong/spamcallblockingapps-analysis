package p020b.p041h.p050l;

import android.animation.ValueAnimator;
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
import android.text.TextUtils;
import android.util.AttributeSet;
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
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p020b.p041h.C1520c;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1615e0;
import p020b.p041h.p050l.p051f0.AbstractC1644f;
import p020b.p041h.p050l.p051f0.C1634c;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* renamed from: b.h.l.w */
/* loaded from: classes-dex2jar.jar:b/h/l/w.class */
public class C1679w {

    /* renamed from: b */
    private static Field f6340b;

    /* renamed from: c */
    private static boolean f6341c;

    /* renamed from: d */
    private static Field f6342d;

    /* renamed from: e */
    private static boolean f6343e;

    /* renamed from: f */
    private static WeakHashMap<View, String> f6344f;

    /* renamed from: h */
    private static Field f6346h;

    /* renamed from: j */
    private static ThreadLocal<Rect> f6348j;

    /* renamed from: a */
    private static final AtomicInteger f6339a = new AtomicInteger(1);

    /* renamed from: g */
    private static WeakHashMap<View, C1601a0> f6345g = null;

    /* renamed from: i */
    private static boolean f6347i = false;

    /* renamed from: k */
    private static final int[] f6349k = {C1520c.accessibility_custom_action_0, C1520c.accessibility_custom_action_1, C1520c.accessibility_custom_action_2, C1520c.accessibility_custom_action_3, C1520c.accessibility_custom_action_4, C1520c.accessibility_custom_action_5, C1520c.accessibility_custom_action_6, C1520c.accessibility_custom_action_7, C1520c.accessibility_custom_action_8, C1520c.accessibility_custom_action_9, C1520c.accessibility_custom_action_10, C1520c.accessibility_custom_action_11, C1520c.accessibility_custom_action_12, C1520c.accessibility_custom_action_13, C1520c.accessibility_custom_action_14, C1520c.accessibility_custom_action_15, C1520c.accessibility_custom_action_16, C1520c.accessibility_custom_action_17, C1520c.accessibility_custom_action_18, C1520c.accessibility_custom_action_19, C1520c.accessibility_custom_action_20, C1520c.accessibility_custom_action_21, C1520c.accessibility_custom_action_22, C1520c.accessibility_custom_action_23, C1520c.accessibility_custom_action_24, C1520c.accessibility_custom_action_25, C1520c.accessibility_custom_action_26, C1520c.accessibility_custom_action_27, C1520c.accessibility_custom_action_28, C1520c.accessibility_custom_action_29, C1520c.accessibility_custom_action_30, C1520c.accessibility_custom_action_31};

    /* renamed from: l */
    private static final AbstractC1675s f6350l = new C1680a();

    /* renamed from: m */
    private static ViewTreeObserver$OnGlobalLayoutListenerC1685f f6351m = new ViewTreeObserver$OnGlobalLayoutListenerC1685f();

    /* renamed from: b.h.l.w$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$a.class */
    class C1680a implements AbstractC1675s {
        C1680a() {
        }

        @Override // p020b.p041h.p050l.AbstractC1675s
        /* renamed from: a */
        public C1609c mo29256a(C1609c c1609c) {
            return c1609c;
        }
    }

    /* renamed from: b.h.l.w$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$b.class */
    public class C1681b extends AbstractC1686g<Boolean> {
        C1681b(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* renamed from: i */
        public Boolean mo29238d(View view) {
            return Boolean.valueOf(view.isScreenReaderFocusable());
        }

        /* renamed from: j */
        public void mo29237e(View view, Boolean bool) {
            view.setScreenReaderFocusable(bool.booleanValue());
        }

        /* renamed from: k */
        public boolean mo29234h(Boolean bool, Boolean bool2) {
            return !m29241a(bool, bool2);
        }
    }

    /* renamed from: b.h.l.w$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$c.class */
    public class C1682c extends AbstractC1686g<CharSequence> {
        C1682c(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* renamed from: i */
        public CharSequence mo29238d(View view) {
            return view.getAccessibilityPaneTitle();
        }

        /* renamed from: j */
        public void mo29237e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        /* renamed from: k */
        public boolean mo29234h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* renamed from: b.h.l.w$d */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$d.class */
    public class C1683d extends AbstractC1686g<CharSequence> {
        C1683d(int i, Class cls, int i2, int i3) {
            super(i, cls, i2, i3);
        }

        /* renamed from: i */
        public CharSequence mo29238d(View view) {
            return view.getStateDescription();
        }

        /* renamed from: j */
        public void mo29237e(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        /* renamed from: k */
        public boolean mo29234h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* renamed from: b.h.l.w$e */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$e.class */
    public class C1684e extends AbstractC1686g<Boolean> {
        C1684e(int i, Class cls, int i2) {
            super(i, cls, i2);
        }

        /* renamed from: i */
        public Boolean mo29238d(View view) {
            return Boolean.valueOf(view.isAccessibilityHeading());
        }

        /* renamed from: j */
        public void mo29237e(View view, Boolean bool) {
            view.setAccessibilityHeading(bool.booleanValue());
        }

        /* renamed from: k */
        public boolean mo29234h(Boolean bool, Boolean bool2) {
            return !m29241a(bool, bool2);
        }
    }

    /* renamed from: b.h.l.w$f */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$f.class */
    static class ViewTreeObserver$OnGlobalLayoutListenerC1685f implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: d */
        private WeakHashMap<View, Boolean> f6352d = new WeakHashMap<>();

        ViewTreeObserver$OnGlobalLayoutListenerC1685f() {
        }

        /* renamed from: a */
        private void m29243a(View view, boolean z) {
            boolean z2 = view.getVisibility() == 0;
            if (z != z2) {
                C1679w.m29309Z(view, z2 ? 16 : 32);
                this.f6352d.put(view, Boolean.valueOf(z2));
            }
        }

        /* renamed from: b */
        private void m29242b(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f6352d.entrySet()) {
                    m29243a(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m29242b(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: b.h.l.w$g */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$g.class */
    public static abstract class AbstractC1686g<T> {

        /* renamed from: a */
        private final int f6353a;

        /* renamed from: b */
        private final Class<T> f6354b;

        /* renamed from: c */
        private final int f6355c;

        /* renamed from: d */
        private final int f6356d;

        AbstractC1686g(int i, Class<T> cls, int i2) {
            this(i, cls, 0, i2);
        }

        AbstractC1686g(int i, Class<T> cls, int i2, int i3) {
            this.f6353a = i;
            this.f6354b = cls;
            this.f6356d = i2;
            this.f6355c = i3;
        }

        /* renamed from: b */
        private boolean m29240b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        /* renamed from: c */
        private boolean m29239c() {
            return Build.VERSION.SDK_INT >= this.f6355c;
        }

        /* renamed from: a */
        boolean m29241a(Boolean bool, Boolean bool2) {
            boolean z = false;
            if ((bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue())) {
                z = true;
            }
            return z;
        }

        /* renamed from: d */
        abstract T mo29238d(View view);

        /* renamed from: e */
        abstract void mo29237e(View view, T t);

        /* renamed from: f */
        T m29236f(View view) {
            if (m29239c()) {
                return mo29238d(view);
            }
            if (!m29240b()) {
                return null;
            }
            T t = (T) view.getTag(this.f6353a);
            if (!this.f6354b.isInstance(t)) {
                return null;
            }
            return t;
        }

        /* renamed from: g */
        void m29235g(View view, T t) {
            if (m29239c()) {
                mo29237e(view, t);
            } else if (!m29240b() || !mo29234h(m29236f(view), t)) {
            } else {
                C1679w.m29338G(view);
                view.setTag(this.f6353a, t);
                C1679w.m29309Z(view, this.f6356d);
            }
        }

        /* renamed from: h */
        abstract boolean mo29234h(T t, T t2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.w$h */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$h.class */
    public static class C1687h {

        /* renamed from: b.h.l.w$h$a */
        /* loaded from: classes-dex2jar.jar:b/h/l/w$h$a.class */
        public class View$OnApplyWindowInsetsListenerC1688a implements View.OnApplyWindowInsetsListener {

            /* renamed from: a */
            C1615e0 f6357a = null;

            /* renamed from: b */
            final /* synthetic */ View f6358b;

            /* renamed from: c */
            final /* synthetic */ AbstractC1673q f6359c;

            View$OnApplyWindowInsetsListenerC1688a(View view, AbstractC1673q abstractC1673q) {
                this.f6358b = view;
                this.f6359c = abstractC1673q;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                C1615e0 m29576x = C1615e0.m29576x(windowInsets, view);
                int i = Build.VERSION.SDK_INT;
                if (i < 30) {
                    C1687h.m29233a(windowInsets, this.f6358b);
                    if (m29576x.equals(this.f6357a)) {
                        return this.f6359c.mo4441a(view, m29576x).m29578v();
                    }
                }
                this.f6357a = m29576x;
                C1615e0 mo4441a = this.f6359c.mo4441a(view, m29576x);
                if (i >= 30) {
                    return mo4441a.m29578v();
                }
                C1679w.m29279o0(view);
                return mo4441a.m29578v();
            }
        }

        /* renamed from: a */
        static void m29233a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(C1520c.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        /* renamed from: b */
        static C1615e0 m29232b(View view, C1615e0 c1615e0, Rect rect) {
            WindowInsets m29578v = c1615e0.m29578v();
            if (m29578v != null) {
                return C1615e0.m29576x(view.computeSystemWindowInsets(m29578v, rect), view);
            }
            rect.setEmpty();
            return c1615e0;
        }

        /* renamed from: c */
        public static C1615e0 m29231c(View view) {
            return C1615e0.C1616a.m29575a(view);
        }

        /* renamed from: d */
        static void m29230d(View view, AbstractC1673q abstractC1673q) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(C1520c.tag_on_apply_window_listener, abstractC1673q);
            }
            if (abstractC1673q == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(C1520c.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC1688a(view, abstractC1673q));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.w$i */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$i.class */
    public static class C1689i {
        /* renamed from: a */
        public static C1615e0 m29229a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            C1615e0 m29577w = C1615e0.m29577w(rootWindowInsets);
            m29577w.m29580t(m29577w);
            m29577w.m29596d(view.getRootView());
            return m29577w;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b.h.l.w$j */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$j.class */
    public static class C1690j {
        /* renamed from: a */
        static void m29228a(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: b.h.l.w$k */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$k.class */
    public interface AbstractC1691k {
        /* renamed from: a */
        boolean m29227a(View view, KeyEvent keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.w$l */
    /* loaded from: classes-dex2jar.jar:b/h/l/w$l.class */
    public static class C1692l {

        /* renamed from: a */
        private static final ArrayList<WeakReference<View>> f6360a = new ArrayList<>();

        /* renamed from: b */
        private WeakHashMap<View, Boolean> f6361b = null;

        /* renamed from: c */
        private SparseArray<WeakReference<View>> f6362c = null;

        /* renamed from: d */
        private WeakReference<KeyEvent> f6363d = null;

        C1692l() {
        }

        /* renamed from: a */
        static C1692l m29226a(View view) {
            int i = C1520c.tag_unhandled_key_event_manager;
            C1692l c1692l = (C1692l) view.getTag(i);
            C1692l c1692l2 = c1692l;
            if (c1692l == null) {
                c1692l2 = new C1692l();
                view.setTag(i, c1692l2);
            }
            return c1692l2;
        }

        /* renamed from: c */
        private View m29224c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f6361b;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View m29224c = m29224c(viewGroup.getChildAt(childCount), keyEvent);
                    if (m29224c != null) {
                        return m29224c;
                    }
                }
            }
            if (!m29222e(view, keyEvent)) {
                return null;
            }
            return view;
        }

        /* renamed from: d */
        private SparseArray<WeakReference<View>> m29223d() {
            if (this.f6362c == null) {
                this.f6362c = new SparseArray<>();
            }
            return this.f6362c;
        }

        /* renamed from: e */
        private boolean m29222e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C1520c.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC1691k) arrayList.get(size)).m29227a(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* renamed from: g */
        private void m29220g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f6361b;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f6360a;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f6361b == null) {
                    this.f6361b = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f6360a;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f6361b.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f6361b.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        /* renamed from: b */
        boolean m29225b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                m29220g();
            }
            View m29224c = m29224c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (m29224c != null && !KeyEvent.isModifierKey(keyCode)) {
                    m29223d().put(keyCode, new WeakReference<>(m29224c));
                }
            }
            return m29224c != null;
        }

        /* renamed from: f */
        boolean m29221f(KeyEvent keyEvent) {
            WeakReference<KeyEvent> weakReference = this.f6363d;
            if (weakReference == null || weakReference.get() != keyEvent) {
                this.f6363d = new WeakReference<>(keyEvent);
                SparseArray<WeakReference<View>> m29223d = m29223d();
                WeakReference<View> weakReference2 = null;
                if (keyEvent.getAction() == 1) {
                    int indexOfKey = m29223d.indexOfKey(keyEvent.getKeyCode());
                    weakReference2 = null;
                    if (indexOfKey >= 0) {
                        weakReference2 = m29223d.valueAt(indexOfKey);
                        m29223d.removeAt(indexOfKey);
                    }
                }
                WeakReference<View> weakReference3 = weakReference2;
                if (weakReference2 == null) {
                    weakReference3 = m29223d.get(keyEvent.getKeyCode());
                }
                if (weakReference3 == null) {
                    return false;
                }
                View view = weakReference3.get();
                if (view == null || !C1679w.m29314U(view)) {
                    return true;
                }
                m29222e(view, keyEvent);
                return true;
            }
            return false;
        }
    }

    /* renamed from: A */
    public static int m29350A(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getImportantForAccessibility();
        }
        return 0;
    }

    /* renamed from: A0 */
    public static void m29349A0(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setHasTransientState(z);
        }
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: B */
    public static int m29348B(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    /* renamed from: B0 */
    public static void m29347B0(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            view.setImportantForAccessibility(i);
        } else if (i2 < 16) {
        } else {
            int i3 = i;
            if (i == 4) {
                i3 = 2;
            }
            view.setImportantForAccessibility(i3);
        }
    }

    /* renamed from: C */
    public static int m29346C(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: C0 */
    public static void m29345C0(View view, int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setImportantForAutofill(i);
        }
    }

    /* renamed from: D */
    public static int m29344D(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumHeight();
        }
        if (!f6343e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f6342d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f6343e = true;
        }
        Field field = f6342d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: D0 */
    public static void m29343D0(View view, Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setLayerPaint(paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    /* renamed from: E */
    public static int m29342E(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getMinimumWidth();
        }
        if (!f6341c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f6340b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f6341c = true;
        }
        Field field = f6340b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception e2) {
            return 0;
        }
    }

    /* renamed from: E0 */
    public static void m29341E0(View view, AbstractC1673q abstractC1673q) {
        if (Build.VERSION.SDK_INT >= 21) {
            C1687h.m29230d(view, abstractC1673q);
        }
    }

    /* renamed from: F */
    public static String[] m29340F(View view) {
        return (String[]) view.getTag(C1520c.tag_on_receive_content_mime_types);
    }

    /* renamed from: F0 */
    public static void m29339F0(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            view.setPaddingRelative(i, i2, i3, i4);
        } else {
            view.setPadding(i, i2, i3, i4);
        }
    }

    /* renamed from: G */
    static C1599a m29338G(View view) {
        C1599a m29286l = m29286l(view);
        C1599a c1599a = m29286l;
        if (m29286l == null) {
            c1599a = new C1599a();
        }
        m29273r0(view, c1599a);
        return c1599a;
    }

    /* renamed from: G0 */
    public static void m29337G0(View view, C1677u c1677u) {
        if (Build.VERSION.SDK_INT >= 24) {
            view.setPointerIcon((PointerIcon) (c1677u != null ? c1677u.m29352a() : null));
        }
    }

    /* renamed from: H */
    public static int m29336H(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    /* renamed from: H0 */
    public static void m29335H0(View view, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    /* renamed from: I */
    public static int m29334I(View view) {
        return Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    /* renamed from: I0 */
    public static void m29333I0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            m29323N0().m29235g(view, charSequence);
        }
    }

    /* renamed from: J */
    public static ViewParent m29332J(View view) {
        return Build.VERSION.SDK_INT >= 16 ? view.getParentForAccessibility() : view.getParent();
    }

    /* renamed from: J0 */
    public static void m29331J0(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (f6344f == null) {
            f6344f = new WeakHashMap<>();
        }
        f6344f.put(view, str);
    }

    /* renamed from: K */
    public static C1615e0 m29330K(View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return C1689i.m29229a(view);
        }
        if (i < 21) {
            return null;
        }
        return C1687h.m29231c(view);
    }

    /* renamed from: K0 */
    public static void m29329K0(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setTranslationZ(f);
        }
    }

    /* renamed from: L */
    public static final CharSequence m29328L(View view) {
        return m29323N0().m29236f(view);
    }

    /* renamed from: L0 */
    private static void m29327L0(View view) {
        if (m29350A(view) == 0) {
            m29347B0(view, 1);
        }
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent instanceof View) {
                if (m29350A((View) viewParent) == 4) {
                    m29347B0(view, 2);
                    return;
                }
                parent = viewParent.getParent();
            } else {
                return;
            }
        }
    }

    /* renamed from: M */
    public static String m29326M(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        WeakHashMap<View, String> weakHashMap = f6344f;
        if (weakHashMap != null) {
            return weakHashMap.get(view);
        }
        return null;
    }

    /* renamed from: M0 */
    public static void m29325M0(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setZ(f);
        }
    }

    /* renamed from: N */
    public static float m29324N(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getTranslationZ();
        }
        return 0.0f;
    }

    /* renamed from: N0 */
    private static AbstractC1686g<CharSequence> m29323N0() {
        return new C1683d(C1520c.tag_state_description, CharSequence.class, 64, 30);
    }

    /* renamed from: O */
    public static int m29322O(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getWindowSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: O0 */
    public static void m29321O0(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (!(view instanceof AbstractC1667k)) {
        } else {
            ((AbstractC1667k) view).stopNestedScroll();
        }
    }

    /* renamed from: P */
    public static float m29320P(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: P0 */
    private static void m29319P0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    /* renamed from: Q */
    public static boolean m29318Q(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return view.hasOnClickListeners();
        }
        return false;
    }

    /* renamed from: R */
    public static boolean m29317R(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasOverlappingRendering();
        }
        return true;
    }

    /* renamed from: S */
    public static boolean m29316S(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.hasTransientState();
        }
        return false;
    }

    /* renamed from: T */
    public static boolean m29315T(View view) {
        Boolean m29236f = m29308a().m29236f(view);
        return m29236f == null ? false : m29236f.booleanValue();
    }

    /* renamed from: U */
    public static boolean m29314U(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isAttachedToWindow();
        }
        return view.getWindowToken() != null;
    }

    /* renamed from: V */
    public static boolean m29313V(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.isLaidOut();
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* renamed from: W */
    public static boolean m29312W(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (!(view instanceof AbstractC1667k)) {
            return false;
        }
        return ((AbstractC1667k) view).isNestedScrollingEnabled();
    }

    /* renamed from: X */
    public static boolean m29311X(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    /* renamed from: Y */
    public static boolean m29310Y(View view) {
        Boolean m29236f = m29275q0().m29236f(view);
        return m29236f == null ? false : m29236f.booleanValue();
    }

    /* renamed from: Z */
    static void m29309Z(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        boolean z = m29278p(view) != null && view.getVisibility() == 0;
        int i2 = 32;
        if (m29280o(view) != 0 || z) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            if (!z) {
                i2 = 2048;
            }
            obtain.setEventType(i2);
            obtain.setContentChangeTypes(i);
            if (z) {
                obtain.getText().add(m29278p(view));
                m29327L0(view);
            }
            view.sendAccessibilityEventUnchecked(obtain);
        } else if (i == 32) {
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain2);
            obtain2.setEventType(32);
            obtain2.setContentChangeTypes(i);
            obtain2.setSource(view);
            view.onPopulateAccessibilityEvent(obtain2);
            obtain2.getText().add(m29278p(view));
            accessibilityManager.sendAccessibilityEvent(obtain2);
        } else if (view.getParent() == null) {
        } else {
            try {
                view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e);
            }
        }
    }

    /* renamed from: a */
    private static AbstractC1686g<Boolean> m29308a() {
        return new C1684e(C1520c.tag_accessibility_heading, Boolean.class, 28);
    }

    /* renamed from: a0 */
    public static void m29307a0(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetLeftAndRight(i);
        } else if (i2 < 21) {
            m29300e(view, i);
        } else {
            Rect m29262x = m29262x();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m29262x.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m29262x.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m29300e(view, i);
            if (!z || !m29262x.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m29262x);
        }
    }

    /* renamed from: b */
    public static int m29306b(View view, CharSequence charSequence, AbstractC1644f abstractC1644f) {
        int m29274r = m29274r(view, charSequence);
        if (m29274r != -1) {
            m29304c(view, new C1634c.C1635a(m29274r, charSequence, abstractC1644f));
        }
        return m29274r;
    }

    /* renamed from: b0 */
    public static void m29305b0(View view, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetTopAndBottom(i);
        } else if (i2 < 21) {
            m29298f(view, i);
        } else {
            Rect m29262x = m29262x();
            boolean z = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                m29262x.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z = !m29262x.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            m29298f(view, i);
            if (!z || !m29262x.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                return;
            }
            ((View) parent).invalidate(m29262x);
        }
    }

    /* renamed from: c */
    private static void m29304c(View view, C1634c.C1635a c1635a) {
        if (Build.VERSION.SDK_INT >= 21) {
            m29338G(view);
            m29283m0(c1635a.m29441b(), view);
            m29276q(view).add(c1635a);
            m29309Z(view, 0);
        }
    }

    /* renamed from: c0 */
    public static C1615e0 m29303c0(View view, C1615e0 c1615e0) {
        WindowInsets m29578v;
        if (Build.VERSION.SDK_INT >= 21 && (m29578v = c1615e0.m29578v()) != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(m29578v);
            if (!onApplyWindowInsets.equals(m29578v)) {
                return C1615e0.m29576x(onApplyWindowInsets, view);
            }
        }
        return c1615e0;
    }

    /* renamed from: d */
    public static C1601a0 m29302d(View view) {
        if (f6345g == null) {
            f6345g = new WeakHashMap<>();
        }
        C1601a0 c1601a0 = f6345g.get(view);
        C1601a0 c1601a02 = c1601a0;
        if (c1601a0 == null) {
            c1601a02 = new C1601a0(view);
            f6345g.put(view, c1601a02);
        }
        return c1601a02;
    }

    /* renamed from: d0 */
    public static void m29301d0(View view, C1634c c1634c) {
        view.onInitializeAccessibilityNodeInfo(c1634c.m29515G0());
    }

    /* renamed from: e */
    private static void m29300e(View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            m29319P0(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m29319P0((View) parent);
        }
    }

    /* renamed from: e0 */
    private static AbstractC1686g<CharSequence> m29299e0() {
        return new C1682c(C1520c.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    /* renamed from: f */
    private static void m29298f(View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            m29319P0(view);
            ViewParent parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            m29319P0((View) parent);
        }
    }

    /* renamed from: f0 */
    public static boolean m29297f0(View view, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.performAccessibilityAction(i, bundle);
        }
        return false;
    }

    /* renamed from: g */
    public static C1615e0 m29296g(View view, C1615e0 c1615e0, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? C1687h.m29232b(view, c1615e0, rect) : c1615e0;
    }

    /* renamed from: g0 */
    public static C1609c m29295g0(View view, C1609c c1609c) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + c1609c + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        AbstractC1674r abstractC1674r = (AbstractC1674r) view.getTag(C1520c.tag_on_receive_content_listener);
        if (abstractC1674r != null) {
            C1609c mo29355a = abstractC1674r.mo29355a(view, c1609c);
            return mo29355a == null ? null : m29260y(view).mo29256a(mo29355a);
        }
        return m29260y(view).mo29256a(c1609c);
    }

    /* renamed from: h */
    public static C1615e0 m29294h(View view, C1615e0 c1615e0) {
        WindowInsets m29578v;
        if (Build.VERSION.SDK_INT >= 21 && (m29578v = c1615e0.m29578v()) != null) {
            WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(m29578v);
            if (!dispatchApplyWindowInsets.equals(m29578v)) {
                return C1615e0.m29576x(dispatchApplyWindowInsets, view);
            }
        }
        return c1615e0;
    }

    /* renamed from: h0 */
    public static void m29293h0(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.postInvalidate();
        }
    }

    /* renamed from: i */
    public static boolean m29292i(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C1692l.m29226a(view).m29225b(view, keyEvent);
    }

    /* renamed from: i0 */
    public static void m29291i0(View view, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation(i, i2, i3, i4);
        } else {
            view.postInvalidate(i, i2, i3, i4);
        }
    }

    /* renamed from: j */
    public static boolean m29290j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return C1692l.m29226a(view).m29221f(keyEvent);
    }

    /* renamed from: j0 */
    public static void m29289j0(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    /* renamed from: k */
    public static int m29288k() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f6339a;
            i = atomicInteger.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    /* renamed from: k0 */
    public static void m29287k0(View view, Runnable runnable, long j) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimationDelayed(runnable, j);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j);
        }
    }

    /* renamed from: l */
    public static C1599a m29286l(View view) {
        View.AccessibilityDelegate m29284m = m29284m(view);
        if (m29284m == null) {
            return null;
        }
        return m29284m instanceof C1599a.C1600a ? ((C1599a.C1600a) m29284m).f6197a : new C1599a(m29284m);
    }

    /* renamed from: l0 */
    public static void m29285l0(View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            m29283m0(i, view);
            m29309Z(view, 0);
        }
    }

    /* renamed from: m */
    private static View.AccessibilityDelegate m29284m(View view) {
        return Build.VERSION.SDK_INT >= 29 ? view.getAccessibilityDelegate() : m29282n(view);
    }

    /* renamed from: m0 */
    private static void m29283m0(int i, View view) {
        List<C1634c.C1635a> m29276q = m29276q(view);
        for (int i2 = 0; i2 < m29276q.size(); i2++) {
            if (m29276q.get(i2).m29441b() == i) {
                m29276q.remove(i2);
                return;
            }
        }
    }

    /* renamed from: n */
    private static View.AccessibilityDelegate m29282n(View view) {
        if (f6347i) {
            return null;
        }
        if (f6346h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f6346h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable th) {
                f6347i = true;
                return null;
            }
        }
        try {
            Object obj = f6346h.get(view);
            if (!(obj instanceof View.AccessibilityDelegate)) {
                return null;
            }
            return (View.AccessibilityDelegate) obj;
        } catch (Throwable th2) {
            f6347i = true;
            return null;
        }
    }

    /* renamed from: n0 */
    public static void m29281n0(View view, C1634c.C1635a c1635a, CharSequence charSequence, AbstractC1644f abstractC1644f) {
        if (abstractC1644f == null && charSequence == null) {
            m29285l0(view, c1635a.m29441b());
        } else {
            m29304c(view, c1635a.m29442a(charSequence, abstractC1644f));
        }
    }

    /* renamed from: o */
    public static int m29280o(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return view.getAccessibilityLiveRegion();
        }
        return 0;
    }

    /* renamed from: o0 */
    public static void m29279o0(View view) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            view.requestApplyInsets();
        } else if (i < 16) {
        } else {
            view.requestFitSystemWindows();
        }
    }

    /* renamed from: p */
    public static CharSequence m29278p(View view) {
        return m29299e0().m29236f(view);
    }

    /* renamed from: p0 */
    public static void m29277p0(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            C1690j.m29228a(view, context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: q */
    private static List<C1634c.C1635a> m29276q(View view) {
        int i = C1520c.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(i, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: q0 */
    private static AbstractC1686g<Boolean> m29275q0() {
        return new C1681b(C1520c.tag_screen_reader_focusable, Boolean.class, 28);
    }

    /* renamed from: r */
    private static int m29274r(View view, CharSequence charSequence) {
        List<C1634c.C1635a> m29276q = m29276q(view);
        for (int i = 0; i < m29276q.size(); i++) {
            if (TextUtils.equals(charSequence, m29276q.get(i).m29440c())) {
                return m29276q.get(i).m29441b();
            }
        }
        int i2 = 0;
        int i3 = -1;
        while (true) {
            int[] iArr = f6349k;
            if (i2 >= iArr.length || i3 != -1) {
                break;
            }
            int i4 = iArr[i2];
            boolean z = true;
            for (int i5 = 0; i5 < m29276q.size(); i5++) {
                z &= m29276q.get(i5).m29441b() != i4;
            }
            if (z) {
                i3 = i4;
            }
            i2++;
        }
        return i3;
    }

    /* renamed from: r0 */
    public static void m29273r0(View view, C1599a c1599a) {
        C1599a c1599a2 = c1599a;
        if (c1599a == null) {
            c1599a2 = c1599a;
            if (m29284m(view) instanceof C1599a.C1600a) {
                c1599a2 = new C1599a();
            }
        }
        view.setAccessibilityDelegate(c1599a2 == null ? null : c1599a2.m29649d());
    }

    /* renamed from: s */
    public static ColorStateList m29272s(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        return view instanceof AbstractC1678v ? ((AbstractC1678v) view).getSupportBackgroundTintList() : null;
    }

    /* renamed from: s0 */
    public static void m29271s0(View view, boolean z) {
        m29308a().m29235g(view, Boolean.valueOf(z));
    }

    /* renamed from: t */
    public static PorterDuff.Mode m29270t(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintMode();
        }
        return view instanceof AbstractC1678v ? ((AbstractC1678v) view).getSupportBackgroundTintMode() : null;
    }

    /* renamed from: t0 */
    public static void m29269t0(View view, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            view.setAccessibilityLiveRegion(i);
        }
    }

    /* renamed from: u */
    public static Rect m29268u(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    /* renamed from: u0 */
    public static void m29267u0(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* renamed from: v */
    public static Display m29266v(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (!m29314U(view)) {
            return null;
        }
        return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
    }

    /* renamed from: v0 */
    public static void m29265v0(View view, ColorStateList colorStateList) {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(view instanceof AbstractC1678v)) {
                return;
            }
            ((AbstractC1678v) view).setSupportBackgroundTintList(colorStateList);
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (i != 21) {
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

    /* renamed from: w */
    public static float m29264w(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    /* renamed from: w0 */
    public static void m29263w0(View view, PorterDuff.Mode mode) {
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(view instanceof AbstractC1678v)) {
                return;
            }
            ((AbstractC1678v) view).setSupportBackgroundTintMode(mode);
            return;
        }
        view.setBackgroundTintMode(mode);
        if (i != 21) {
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

    /* renamed from: x */
    private static Rect m29262x() {
        if (f6348j == null) {
            f6348j = new ThreadLocal<>();
        }
        Rect rect = f6348j.get();
        Rect rect2 = rect;
        if (rect == null) {
            rect2 = new Rect();
            f6348j.set(rect2);
        }
        rect2.setEmpty();
        return rect2;
    }

    /* renamed from: x0 */
    public static void m29261x0(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    /* renamed from: y */
    private static AbstractC1675s m29260y(View view) {
        return view instanceof AbstractC1675s ? (AbstractC1675s) view : f6350l;
    }

    /* renamed from: y0 */
    public static void m29259y0(View view, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f);
        }
    }

    /* renamed from: z */
    public static boolean m29258z(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    @Deprecated
    /* renamed from: z0 */
    public static void m29257z0(View view, boolean z) {
        view.setFitsSystemWindows(z);
    }
}
