package p020b.p055j.p056a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.List;
import p020b.p036e.C1503h;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.C1695z;
import p020b.p041h.p050l.p051f0.C1633b;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p041h.p050l.p051f0.C1639d;
import p020b.p041h.p050l.p051f0.C1643e;
import p020b.p055j.p056a.C1706b;
/* renamed from: b.j.a.a */
/* loaded from: classes-dex2jar.jar:b/j/a/a.class */
public abstract class AbstractC1702a extends C1599a {

    /* renamed from: d */
    private static final Rect f6379d = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: e */
    private static final C1706b.AbstractC1707a<C1634c> f6380e = new C1703a();

    /* renamed from: f */
    private static final C1706b.AbstractC1708b<C1503h<C1634c>, C1634c> f6381f = new C1704b();

    /* renamed from: k */
    private final AccessibilityManager f6386k;

    /* renamed from: l */
    private final View f6387l;

    /* renamed from: m */
    private C1705c f6388m;

    /* renamed from: g */
    private final Rect f6382g = new Rect();

    /* renamed from: h */
    private final Rect f6383h = new Rect();

    /* renamed from: i */
    private final Rect f6384i = new Rect();

    /* renamed from: j */
    private final int[] f6385j = new int[2];

    /* renamed from: n */
    int f6389n = Integer.MIN_VALUE;

    /* renamed from: o */
    int f6390o = Integer.MIN_VALUE;

    /* renamed from: p */
    private int f6391p = Integer.MIN_VALUE;

    /* renamed from: b.j.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/j/a/a$a.class */
    static final class C1703a implements C1706b.AbstractC1707a<C1634c> {
        C1703a() {
        }

        /* renamed from: b */
        public void mo29141a(C1634c c1634c, Rect rect) {
            c1634c.m29470m(rect);
        }
    }

    /* renamed from: b.j.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/j/a/a$b.class */
    static final class C1704b implements C1706b.AbstractC1708b<C1503h<C1634c>, C1634c> {
        C1704b() {
        }

        /* renamed from: c */
        public C1634c mo29140a(C1503h<C1634c> c1503h, int i) {
            return c1503h.m29898n(i);
        }

        /* renamed from: d */
        public int mo29139b(C1503h<C1634c> c1503h) {
            return c1503h.m29899m();
        }
    }

    /* renamed from: b.j.a.a$c */
    /* loaded from: classes-dex2jar.jar:b/j/a/a$c.class */
    private class C1705c extends C1639d {
        C1705c() {
            AbstractC1702a.this = r4;
        }

        @Override // p020b.p041h.p050l.p051f0.C1639d
        /* renamed from: b */
        public C1634c mo29159b(int i) {
            return C1634c.m29504Q(AbstractC1702a.this.m29187J(i));
        }

        @Override // p020b.p041h.p050l.p051f0.C1639d
        /* renamed from: d */
        public C1634c mo29158d(int i) {
            int i2 = i == 2 ? AbstractC1702a.this.f6389n : AbstractC1702a.this.f6390o;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo29159b(i2);
        }

        @Override // p020b.p041h.p050l.p051f0.C1639d
        /* renamed from: f */
        public boolean mo29157f(int i, int i2, Bundle bundle) {
            return AbstractC1702a.this.m29183R(i, i2, bundle);
        }
    }

    public AbstractC1702a(View view) {
        if (view != null) {
            this.f6387l = view;
            this.f6386k = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (C1679w.m29350A(view) != 0) {
                return;
            }
            C1679w.m29347B0(view, 1);
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    /* renamed from: D */
    private static Rect m29193D(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    /* renamed from: G */
    private boolean m29190G(Rect rect) {
        boolean z = false;
        if (rect != null) {
            if (rect.isEmpty()) {
                z = false;
            } else if (this.f6387l.getWindowVisibility() != 0) {
                return false;
            } else {
                ViewParent parent = this.f6387l.getParent();
                while (true) {
                    ViewParent viewParent = parent;
                    if (viewParent instanceof View) {
                        View view = (View) viewParent;
                        if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                            return false;
                        }
                        parent = view.getParent();
                    } else {
                        z = false;
                        if (viewParent != null) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: H */
    private static int m29189H(int i) {
        if (i != 19) {
            if (i == 21) {
                return 17;
            }
            return i != 22 ? 130 : 66;
        }
        return 33;
    }

    /* renamed from: I */
    private boolean m29188I(int i, Rect rect) {
        C1634c c1634c;
        C1503h<C1634c> m29164y = m29164y();
        int i2 = this.f6390o;
        C1634c m29904g = i2 == Integer.MIN_VALUE ? null : m29164y.m29904g(i2);
        if (i == 1 || i == 2) {
            c1634c = (C1634c) C1706b.m29153d(m29164y, f6381f, f6380e, m29904g, i, C1679w.m29346C(this.f6387l) == 1, false);
        } else if (i != 17 && i != 33 && i != 66 && i != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            Rect rect2 = new Rect();
            int i3 = this.f6390o;
            if (i3 != Integer.MIN_VALUE) {
                m29163z(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m29193D(this.f6387l, i, rect2);
            }
            c1634c = (C1634c) C1706b.m29154c(m29164y, f6381f, f6380e, m29904g, rect2, i);
        }
        return m29179V(c1634c == null ? Integer.MIN_VALUE : m29164y.m29901j(m29164y.m29902i(c1634c)));
    }

    /* renamed from: S */
    private boolean m29182S(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? mo4224L(i, i2, bundle) : m29175n(i) : m29180U(i) : m29174o(i) : m29179V(i);
    }

    /* renamed from: T */
    private boolean m29181T(int i, Bundle bundle) {
        return C1679w.m29297f0(this.f6387l, i, bundle);
    }

    /* renamed from: U */
    private boolean m29180U(int i) {
        int i2;
        if (!this.f6386k.isEnabled() || !this.f6386k.isTouchExplorationEnabled() || (i2 = this.f6389n) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m29175n(i2);
        }
        this.f6389n = i;
        this.f6387l.invalidate();
        m29178W(i, 32768);
        return true;
    }

    /* renamed from: X */
    private void m29177X(int i) {
        int i2 = this.f6391p;
        if (i2 == i) {
            return;
        }
        this.f6391p = i;
        m29178W(i, 128);
        m29178W(i2, 256);
    }

    /* renamed from: n */
    private boolean m29175n(int i) {
        if (this.f6389n == i) {
            this.f6389n = Integer.MIN_VALUE;
            this.f6387l.invalidate();
            m29178W(i, 65536);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    private boolean m29173p() {
        int i = this.f6390o;
        return i != Integer.MIN_VALUE && mo4224L(i, 16, null);
    }

    /* renamed from: q */
    private AccessibilityEvent m29172q(int i, int i2) {
        return i != -1 ? m29171r(i, i2) : m29170s(i2);
    }

    /* renamed from: r */
    private AccessibilityEvent m29171r(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        C1634c m29187J = m29187J(i);
        obtain.getText().add(m29187J.m29448x());
        obtain.setContentDescription(m29187J.m29460r());
        obtain.setScrollable(m29187J.m29510K());
        obtain.setPassword(m29187J.m29511J());
        obtain.setEnabled(m29187J.m29518F());
        obtain.setChecked(m29187J.m29522D());
        m29184N(i, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(m29187J.m29464p());
            C1643e.m29429c(obtain, this.f6387l, i);
            obtain.setPackageName(this.f6387l.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    /* renamed from: s */
    private AccessibilityEvent m29170s(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.f6387l.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    /* renamed from: t */
    private C1634c m29169t(int i) {
        C1634c m29506O = C1634c.m29506O();
        m29506O.m29479h0(true);
        m29506O.m29475j0(true);
        m29506O.m29489c0("android.view.View");
        Rect rect = f6379d;
        m29506O.m29497X(rect);
        m29506O.m29496Y(rect);
        m29506O.m29457s0(this.f6387l);
        mo4223P(i, m29506O);
        if (m29506O.m29448x() == null && m29506O.m29460r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        m29506O.m29470m(this.f6383h);
        if (this.f6383h.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int m29474k = m29506O.m29474k();
        if ((m29474k & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((m29474k & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        m29506O.m29461q0(this.f6387l.getContext().getPackageName());
        m29506O.m29525B0(this.f6387l, i);
        if (this.f6389n == i) {
            m29506O.m29499V(true);
            m29506O.m29494a(128);
        } else {
            m29506O.m29499V(false);
            m29506O.m29494a(64);
        }
        boolean z = this.f6390o == i;
        if (z) {
            m29506O.m29494a(2);
        } else if (m29506O.m29516G()) {
            m29506O.m29494a(1);
        }
        m29506O.m29473k0(z);
        this.f6387l.getLocationOnScreen(this.f6385j);
        m29506O.m29468n(this.f6382g);
        if (this.f6382g.equals(rect)) {
            m29506O.m29470m(this.f6382g);
            if (m29506O.f6267c != -1) {
                C1634c m29506O2 = C1634c.m29506O();
                int i2 = m29506O.f6267c;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    m29506O2.m29455t0(this.f6387l, -1);
                    m29506O2.m29497X(f6379d);
                    mo4223P(i3, m29506O2);
                    m29506O2.m29470m(this.f6383h);
                    Rect rect2 = this.f6382g;
                    Rect rect3 = this.f6383h;
                    rect2.offset(rect3.left, rect3.top);
                    i2 = m29506O2.f6267c;
                }
                m29506O2.m29502S();
            }
            this.f6382g.offset(this.f6385j[0] - this.f6387l.getScrollX(), this.f6385j[1] - this.f6387l.getScrollY());
        }
        if (this.f6387l.getLocalVisibleRect(this.f6384i)) {
            this.f6384i.offset(this.f6385j[0] - this.f6387l.getScrollX(), this.f6385j[1] - this.f6387l.getScrollY());
            if (this.f6382g.intersect(this.f6384i)) {
                m29506O.m29496Y(this.f6382g);
                if (m29190G(this.f6382g)) {
                    m29506O.m29517F0(true);
                }
            }
        }
        return m29506O;
    }

    /* renamed from: u */
    private C1634c m29168u() {
        C1634c m29505P = C1634c.m29505P(this.f6387l);
        C1679w.m29301d0(this.f6387l, m29505P);
        ArrayList arrayList = new ArrayList();
        mo4225C(arrayList);
        if (m29505P.m29466o() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m29505P.m29488d(this.f6387l, ((Integer) arrayList.get(i)).intValue());
            }
            return m29505P;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    /* renamed from: y */
    private C1503h<C1634c> m29164y() {
        ArrayList arrayList = new ArrayList();
        mo4225C(arrayList);
        C1503h<C1634c> c1503h = new C1503h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            c1503h.m29900l(i, m29169t(i));
        }
        return c1503h;
    }

    /* renamed from: z */
    private void m29163z(int i, Rect rect) {
        m29187J(i).m29470m(rect);
    }

    /* renamed from: A */
    public final int m29194A() {
        return this.f6390o;
    }

    /* renamed from: B */
    protected abstract int mo4226B(float f, float f2);

    /* renamed from: C */
    protected abstract void mo4225C(List<Integer> list);

    /* renamed from: E */
    public final void m29192E(int i) {
        m29191F(i, 0);
    }

    /* renamed from: F */
    public final void m29191F(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f6386k.isEnabled() || (parent = this.f6387l.getParent()) == null) {
            return;
        }
        AccessibilityEvent m29172q = m29172q(i, 2048);
        C1633b.m29529b(m29172q, i2);
        C1695z.m29205h(parent, this.f6387l, m29172q);
    }

    /* renamed from: J */
    C1634c m29187J(int i) {
        return i == -1 ? m29168u() : m29169t(i);
    }

    /* renamed from: K */
    public final void m29186K(boolean z, int i, Rect rect) {
        int i2 = this.f6390o;
        if (i2 != Integer.MIN_VALUE) {
            m29174o(i2);
        }
        if (z) {
            m29188I(i, rect);
        }
    }

    /* renamed from: L */
    protected abstract boolean mo4224L(int i, int i2, Bundle bundle);

    /* renamed from: M */
    protected void m29185M(AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: N */
    protected void m29184N(int i, AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: O */
    protected void mo5221O(C1634c c1634c) {
    }

    /* renamed from: P */
    protected abstract void mo4223P(int i, C1634c c1634c);

    /* renamed from: Q */
    protected void mo5220Q(int i, boolean z) {
    }

    /* renamed from: R */
    boolean m29183R(int i, int i2, Bundle bundle) {
        return i != -1 ? m29182S(i, i2, bundle) : m29181T(i2, bundle);
    }

    /* renamed from: V */
    public final boolean m29179V(int i) {
        int i2;
        if ((this.f6387l.isFocused() || this.f6387l.requestFocus()) && (i2 = this.f6390o) != i) {
            if (i2 != Integer.MIN_VALUE) {
                m29174o(i2);
            }
            this.f6390o = i;
            mo5220Q(i, true);
            m29178W(i, 8);
            return true;
        }
        return false;
    }

    /* renamed from: W */
    public final boolean m29178W(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f6386k.isEnabled() || (parent = this.f6387l.getParent()) == null) {
            return false;
        }
        return C1695z.m29205h(parent, this.f6387l, m29172q(i, i2));
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: b */
    public C1639d mo29176b(View view) {
        if (this.f6388m == null) {
            this.f6388m = new C1705c();
        }
        return this.f6388m;
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: f */
    public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
        super.mo4650f(view, accessibilityEvent);
        m29185M(accessibilityEvent);
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: g */
    public void mo3869g(View view, C1634c c1634c) {
        super.mo3869g(view, c1634c);
        mo5221O(c1634c);
    }

    /* renamed from: o */
    public final boolean m29174o(int i) {
        if (this.f6390o != i) {
            return false;
        }
        this.f6390o = Integer.MIN_VALUE;
        mo5220Q(i, false);
        m29178W(i, 8);
        return true;
    }

    /* renamed from: v */
    public final boolean m29167v(MotionEvent motionEvent) {
        boolean z = false;
        if (this.f6386k.isEnabled()) {
            if (!this.f6386k.isTouchExplorationEnabled()) {
                z = false;
            } else {
                int action = motionEvent.getAction();
                if (action != 7 && action != 9) {
                    if (action != 10 || this.f6391p == Integer.MIN_VALUE) {
                        return false;
                    }
                    m29177X(Integer.MIN_VALUE);
                    return true;
                }
                int mo4226B = mo4226B(motionEvent.getX(), motionEvent.getY());
                m29177X(mo4226B);
                z = false;
                if (mo4226B != Integer.MIN_VALUE) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: w */
    public final boolean m29166w(KeyEvent keyEvent) {
        int i = 0;
        boolean z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            z = false;
                            if (keyEvent.hasNoModifiers()) {
                                int m29189H = m29189H(keyCode);
                                int repeatCount = keyEvent.getRepeatCount();
                                boolean z2 = false;
                                while (true) {
                                    z = z2;
                                    if (i < repeatCount + 1 && m29188I(m29189H, null)) {
                                        i++;
                                        z2 = true;
                                    }
                                }
                            }
                            break;
                        case 23:
                            break;
                        default:
                            z = false;
                            break;
                    }
                }
                z = false;
                if (keyEvent.hasNoModifiers()) {
                    z = false;
                    if (keyEvent.getRepeatCount() == 0) {
                        m29173p();
                        z = true;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = m29188I(2, null);
            } else {
                z = false;
                if (keyEvent.hasModifiers(1)) {
                    z = m29188I(1, null);
                }
            }
        }
        return z;
    }

    /* renamed from: x */
    public final int m29165x() {
        return this.f6389n;
    }
}
