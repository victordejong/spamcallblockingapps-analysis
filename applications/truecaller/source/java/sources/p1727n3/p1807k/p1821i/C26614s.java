package p1727n3.p1807k.p1821i;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.C0122R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.p1822f0.AbstractC26591d;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
/* renamed from: n3.k.i.s */
/* loaded from: classes-dex2jar.jar:n3/k/i/s.class */
public class C26614s {

    /* renamed from: c */
    public static Field f74507c;

    /* renamed from: a */
    public static final AtomicInteger f74505a = new AtomicInteger(1);

    /* renamed from: b */
    public static WeakHashMap<View, C26625z> f74506b = null;

    /* renamed from: d */
    public static boolean f74508d = false;

    /* renamed from: e */
    public static final int[] f74509e = {C0122R.C0124id.accessibility_custom_action_0, C0122R.C0124id.accessibility_custom_action_1, C0122R.C0124id.accessibility_custom_action_2, C0122R.C0124id.accessibility_custom_action_3, C0122R.C0124id.accessibility_custom_action_4, C0122R.C0124id.accessibility_custom_action_5, C0122R.C0124id.accessibility_custom_action_6, C0122R.C0124id.accessibility_custom_action_7, C0122R.C0124id.accessibility_custom_action_8, C0122R.C0124id.accessibility_custom_action_9, C0122R.C0124id.accessibility_custom_action_10, C0122R.C0124id.accessibility_custom_action_11, C0122R.C0124id.accessibility_custom_action_12, C0122R.C0124id.accessibility_custom_action_13, C0122R.C0124id.accessibility_custom_action_14, C0122R.C0124id.accessibility_custom_action_15, C0122R.C0124id.accessibility_custom_action_16, C0122R.C0124id.accessibility_custom_action_17, C0122R.C0124id.accessibility_custom_action_18, C0122R.C0124id.accessibility_custom_action_19, C0122R.C0124id.accessibility_custom_action_20, C0122R.C0124id.accessibility_custom_action_21, C0122R.C0124id.accessibility_custom_action_22, C0122R.C0124id.accessibility_custom_action_23, C0122R.C0124id.accessibility_custom_action_24, C0122R.C0124id.accessibility_custom_action_25, C0122R.C0124id.accessibility_custom_action_26, C0122R.C0124id.accessibility_custom_action_27, C0122R.C0124id.accessibility_custom_action_28, C0122R.C0124id.accessibility_custom_action_29, C0122R.C0124id.accessibility_custom_action_30, C0122R.C0124id.accessibility_custom_action_31};

    /* renamed from: f */
    public static final AbstractC26611p f74510f = new C26615a();

    /* renamed from: n3.k.i.s$a */
    /* loaded from: classes-dex2jar.jar:n3/k/i/s$a.class */
    public class C26615a implements AbstractC26611p {
        @Override // p1727n3.p1807k.p1821i.AbstractC26611p
        /* renamed from: a */
        public C26564c mo1562a(C26564c c26564c) {
            return c26564c;
        }
    }

    /* renamed from: n3.k.i.s$b */
    /* loaded from: classes-dex2jar.jar:n3/k/i/s$b.class */
    public static abstract class AbstractC26616b<T> {

        /* renamed from: a */
        public final int f74511a;

        /* renamed from: b */
        public final Class<T> f74512b;

        /* renamed from: c */
        public final int f74513c;

        /* renamed from: d */
        public final int f74514d;

        public AbstractC26616b(int i, Class<T> cls, int i2) {
            this.f74511a = i;
            this.f74512b = cls;
            this.f74514d = 0;
            this.f74513c = i2;
        }

        public AbstractC26616b(int i, Class<T> cls, int i2, int i3) {
            this.f74511a = i;
            this.f74512b = cls;
            this.f74514d = i2;
            this.f74513c = i3;
        }

        /* renamed from: a */
        public boolean m1561a(Boolean bool, Boolean bool2) {
            boolean z = false;
            if ((bool == null ? false : bool.booleanValue()) == (bool2 == null ? false : bool2.booleanValue())) {
                z = true;
            }
            return z;
        }

        /* renamed from: b */
        public abstract T mo1555b(View view);

        /* renamed from: c */
        public abstract void mo1554c(View view, T t);

        /* renamed from: d */
        public T m1560d(View view) {
            if (Build.VERSION.SDK_INT >= this.f74513c) {
                return mo1555b(view);
            }
            T t = (T) view.getTag(this.f74511a);
            if (!this.f74512b.isInstance(t)) {
                return null;
            }
            return t;
        }

        /* renamed from: e */
        public void m1559e(View view, T t) {
            if (Build.VERSION.SDK_INT >= this.f74513c) {
                mo1554c(view, t);
            } else if (!mo1553f(m1560d(view), t)) {
            } else {
                C26558a m1576e = C26614s.m1576e(view);
                C26558a c26558a = m1576e;
                if (m1576e == null) {
                    c26558a = new C26558a();
                }
                C26614s.m1564q(view, c26558a);
                view.setTag(this.f74511a, t);
                C26614s.m1571j(view, this.f74514d);
            }
        }

        /* renamed from: f */
        public abstract boolean mo1553f(T t, T t2);
    }

    /* renamed from: n3.k.i.s$c */
    /* loaded from: classes-dex2jar.jar:n3/k/i/s$c.class */
    public interface AbstractC26617c {
        /* renamed from: a */
        boolean m1558a(View view, KeyEvent keyEvent);
    }

    /* renamed from: n3.k.i.s$d */
    /* loaded from: classes-dex2jar.jar:n3/k/i/s$d.class */
    public static class C26618d {

        /* renamed from: d */
        public static final ArrayList<WeakReference<View>> f74515d = new ArrayList<>();

        /* renamed from: a */
        public WeakHashMap<View, Boolean> f74516a = null;

        /* renamed from: b */
        public SparseArray<WeakReference<View>> f74517b = null;

        /* renamed from: c */
        public WeakReference<KeyEvent> f74518c = null;

        /* renamed from: a */
        public final View m1557a(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f74516a;
            if (weakHashMap == null || !weakHashMap.containsKey(view)) {
                return null;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View m1557a = m1557a(viewGroup.getChildAt(childCount), keyEvent);
                    if (m1557a != null) {
                        return m1557a;
                    }
                }
            }
            if (!m1556b(view, keyEvent)) {
                return null;
            }
            return view;
        }

        /* renamed from: b */
        public final boolean m1556b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(C0122R.C0124id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((AbstractC26617c) arrayList.get(size)).m1558a(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
    }

    static {
        new WeakHashMap();
    }

    /* renamed from: a */
    public static void m1580a(View view, C26584b.C26585a c26585a) {
        C26558a m1576e = m1576e(view);
        C26558a c26558a = m1576e;
        if (m1576e == null) {
            c26558a = new C26558a();
        }
        m1564q(view, c26558a);
        m1567n(c26585a.m1613a(), view);
        m1573h(view).add(c26585a);
        m1571j(view, 0);
    }

    /* renamed from: b */
    public static C26625z m1579b(View view) {
        if (f74506b == null) {
            f74506b = new WeakHashMap<>();
        }
        C26625z c26625z = f74506b.get(view);
        C26625z c26625z2 = c26625z;
        if (c26625z == null) {
            c26625z2 = new C26625z(view);
            f74506b.put(view, c26625z2);
        }
        return c26625z2;
    }

    /* renamed from: c */
    public static C26568d0 m1578c(View view, C26568d0 c26568d0) {
        WindowInsets m1657j = c26568d0.m1657j();
        if (m1657j != null) {
            WindowInsets dispatchApplyWindowInsets = view.dispatchApplyWindowInsets(m1657j);
            if (!dispatchApplyWindowInsets.equals(m1657j)) {
                return C26568d0.m1655l(dispatchApplyWindowInsets, view);
            }
        }
        return c26568d0;
    }

    /* renamed from: d */
    public static boolean m1577d(View view, KeyEvent keyEvent) {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList<WeakReference<View>> arrayList = C26618d.f74515d;
        int i = C0122R.C0124id.tag_unhandled_key_event_manager;
        C26618d c26618d = (C26618d) view.getTag(i);
        C26618d c26618d2 = c26618d;
        if (c26618d == null) {
            c26618d2 = new C26618d();
            view.setTag(i, c26618d2);
        }
        if (keyEvent.getAction() == 0) {
            Boolean bool = Boolean.TRUE;
            WeakHashMap<View, Boolean> weakHashMap = c26618d2.f74516a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList2 = C26618d.f74515d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    if (c26618d2.f74516a == null) {
                        c26618d2.f74516a = new WeakHashMap<>();
                    }
                    int size = arrayList2.size();
                    while (true) {
                        int i2 = size - 1;
                        if (i2 < 0) {
                            break;
                        }
                        ArrayList<WeakReference<View>> arrayList3 = C26618d.f74515d;
                        View view2 = arrayList3.get(i2).get();
                        if (view2 == null) {
                            arrayList3.remove(i2);
                            size = i2;
                        } else {
                            c26618d2.f74516a.put(view2, bool);
                            ViewParent parent = view2.getParent();
                            while (true) {
                                size = i2;
                                if (parent instanceof View) {
                                    c26618d2.f74516a.put((View) parent, bool);
                                    parent = parent.getParent();
                                }
                            }
                        }
                    }
                }
            }
        }
        View m1557a = c26618d2.m1557a(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (m1557a != null && !KeyEvent.isModifierKey(keyCode)) {
                if (c26618d2.f74517b == null) {
                    c26618d2.f74517b = new SparseArray<>();
                }
                c26618d2.f74517b.put(keyCode, new WeakReference<>(m1557a));
            }
        }
        if (m1557a != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public static C26558a m1576e(View view) {
        View.AccessibilityDelegate m1575f = m1575f(view);
        if (m1575f == null) {
            return null;
        }
        return m1575f instanceof C26558a.C26559a ? ((C26558a.C26559a) m1575f).f74413a : new C26558a(m1575f);
    }

    /* renamed from: f */
    public static View.AccessibilityDelegate m1575f(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (f74508d) {
            accessibilityDelegate = null;
        } else {
            if (f74507c == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    f74507c = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable th) {
                    f74508d = true;
                    accessibilityDelegate = null;
                }
            }
            try {
                Object obj = f74507c.get(view);
                accessibilityDelegate = null;
                if (obj instanceof View.AccessibilityDelegate) {
                    accessibilityDelegate = (View.AccessibilityDelegate) obj;
                }
            } catch (Throwable th2) {
                f74508d = true;
                accessibilityDelegate = null;
            }
        }
        return accessibilityDelegate;
    }

    /* renamed from: g */
    public static CharSequence m1574g(View view) {
        return new C26620u(C0122R.C0124id.tag_accessibility_pane_title, CharSequence.class, 8, 28).m1560d(view);
    }

    /* renamed from: h */
    public static List<C26584b.C26585a> m1573h(View view) {
        int i = C0122R.C0124id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i);
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
            view.setTag(i, arrayList2);
        }
        return arrayList2;
    }

    /* renamed from: i */
    public static C26568d0 m1572i(View view) {
        C26568d0 c26568d0;
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            c26568d0 = null;
        } else {
            C26568d0 m1656k = C26568d0.m1656k(rootWindowInsets);
            m1656k.f74427a.mo1635p(m1656k);
            m1656k.f74427a.mo1647d(view.getRootView());
            c26568d0 = m1656k;
        }
        return c26568d0;
    }

    /* renamed from: j */
    public static void m1571j(View view, int i) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        boolean z = m1574g(view) != null && view.getVisibility() == 0;
        int i2 = 32;
        if (view.getAccessibilityLiveRegion() == 0 && !z) {
            if (i != 32) {
                if (view.getParent() == null) {
                    return;
                }
                try {
                    view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                    return;
                } catch (AbstractMethodError e) {
                    view.getParent().getClass().getSimpleName();
                    return;
                }
            }
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(obtain);
            obtain.setEventType(32);
            obtain.setContentChangeTypes(i);
            obtain.setSource(view);
            view.onPopulateAccessibilityEvent(obtain);
            obtain.getText().add(m1574g(view));
            accessibilityManager.sendAccessibilityEvent(obtain);
            return;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
        if (!z) {
            i2 = 2048;
        }
        obtain2.setEventType(i2);
        obtain2.setContentChangeTypes(i);
        if (z) {
            obtain2.getText().add(m1574g(view));
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            ViewParent parent = view.getParent();
            while (true) {
                ViewParent viewParent = parent;
                if (!(viewParent instanceof View)) {
                    break;
                } else if (((View) viewParent).getImportantForAccessibility() == 4) {
                    view.setImportantForAccessibility(2);
                    break;
                } else {
                    parent = viewParent.getParent();
                }
            }
        }
        view.sendAccessibilityEventUnchecked(obtain2);
    }

    /* renamed from: k */
    public static C26568d0 m1570k(View view, C26568d0 c26568d0) {
        WindowInsets m1657j = c26568d0.m1657j();
        if (m1657j != null) {
            WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(m1657j);
            if (!onApplyWindowInsets.equals(m1657j)) {
                return C26568d0.m1655l(onApplyWindowInsets, view);
            }
        }
        return c26568d0;
    }

    /* renamed from: l */
    public static C26564c m1569l(View view, C26564c c26564c) {
        C26564c c26564c2;
        if (Log.isLoggable("ViewCompat", 3)) {
            String str = "performReceiveContent: " + c26564c + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]";
        }
        AbstractC26610o abstractC26610o = (AbstractC26610o) view.getTag(C0122R.C0124id.tag_on_receive_content_listener);
        if (abstractC26610o == null) {
            return (view instanceof AbstractC26611p ? (AbstractC26611p) view : f74510f).mo1562a(c26564c);
        }
        C26564c mo1538a = abstractC26610o.mo1538a(view, c26564c);
        if (mo1538a == null) {
            c26564c2 = null;
        } else {
            c26564c2 = (view instanceof AbstractC26611p ? (AbstractC26611p) view : f74510f).mo1562a(mo1538a);
        }
        return c26564c2;
    }

    /* renamed from: m */
    public static void m1568m(View view, int i) {
        m1567n(i, view);
        m1571j(view, 0);
    }

    /* renamed from: n */
    public static void m1567n(int i, View view) {
        List<C26584b.C26585a> m1573h = m1573h(view);
        for (int i2 = 0; i2 < m1573h.size(); i2++) {
            if (m1573h.get(i2).m1613a() == i) {
                m1573h.remove(i2);
                return;
            }
        }
    }

    /* renamed from: o */
    public static void m1566o(View view, C26584b.C26585a c26585a, CharSequence charSequence, AbstractC26591d abstractC26591d) {
        if (abstractC26591d != null) {
            m1580a(view, new C26584b.C26585a(null, c26585a.f74478b, null, abstractC26591d, c26585a.f74479c));
            return;
        }
        m1567n(c26585a.m1613a(), view);
        m1571j(view, 0);
    }

    /* renamed from: p */
    public static void m1565p(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 29) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* renamed from: q */
    public static void m1564q(View view, C26558a c26558a) {
        C26558a c26558a2 = c26558a;
        if (c26558a == null) {
            c26558a2 = c26558a;
            if (m1575f(view) instanceof C26558a.C26559a) {
                c26558a2 = new C26558a();
            }
        }
        view.setAccessibilityDelegate(c26558a2 == null ? null : c26558a2.f74412b);
    }

    /* renamed from: r */
    public static void m1563r(View view, AbstractC26609n abstractC26609n) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(C0122R.C0124id.tag_on_apply_window_listener, abstractC26609n);
        }
        if (abstractC26609n == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(C0122R.C0124id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new View$OnApplyWindowInsetsListenerC26623x(view, abstractC26609n));
        }
    }
}
