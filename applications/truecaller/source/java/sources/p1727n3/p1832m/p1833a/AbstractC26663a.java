package p1727n3.p1832m.p1833a;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1788g.C26188i;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1807k.p1821i.p1822f0.C26588c;
/* renamed from: n3.m.a.a */
/* loaded from: classes-dex2jar.jar:n3/m/a/a.class */
public abstract class AbstractC26663a extends C26558a {

    /* renamed from: n */
    public static final Rect f74618n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o */
    public static final AbstractC26667b<C26584b> f74619o = new C26664a();

    /* renamed from: p */
    public static final AbstractC26668c<C26188i<C26584b>, C26584b> f74620p = new C26665b();

    /* renamed from: h */
    public final AccessibilityManager f74625h;

    /* renamed from: i */
    public final View f74626i;

    /* renamed from: j */
    public C26666c f74627j;

    /* renamed from: d */
    public final Rect f74621d = new Rect();

    /* renamed from: e */
    public final Rect f74622e = new Rect();

    /* renamed from: f */
    public final Rect f74623f = new Rect();

    /* renamed from: g */
    public final int[] f74624g = new int[2];

    /* renamed from: k */
    public int f74628k = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f74629l = Integer.MIN_VALUE;

    /* renamed from: m */
    private int f74630m = Integer.MIN_VALUE;

    /* renamed from: n3.m.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/m/a/a$a.class */
    public static final class C26664a implements AbstractC26667b<C26584b> {
        /* renamed from: a */
        public void m1492a(Object obj, Rect rect) {
            ((C26584b) obj).f74463a.getBoundsInParent(rect);
        }
    }

    /* renamed from: n3.m.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/m/a/a$b.class */
    public static final class C26665b implements AbstractC26668c<C26188i<C26584b>, C26584b> {
    }

    /* renamed from: n3.m.a.a$c */
    /* loaded from: classes-dex2jar.jar:n3/m/a/a$c.class */
    public class C26666c extends C26588c {
        public C26666c() {
            AbstractC26663a.this = r4;
        }

        @Override // p1727n3.p1807k.p1821i.p1822f0.C26588c
        /* renamed from: a */
        public C26584b mo1491a(int i) {
            return new C26584b(AccessibilityNodeInfo.obtain(AbstractC26663a.this.m1500s(i).f74463a));
        }

        @Override // p1727n3.p1807k.p1821i.p1822f0.C26588c
        /* renamed from: b */
        public C26584b mo1490b(int i) {
            int i2 = i == 2 ? AbstractC26663a.this.f74628k : AbstractC26663a.this.f74629l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return new C26584b(AccessibilityNodeInfo.obtain(AbstractC26663a.this.m1500s(i2).f74463a));
        }

        @Override // p1727n3.p1807k.p1821i.p1822f0.C26588c
        /* renamed from: c */
        public boolean mo1489c(int i, int i2, Bundle bundle) {
            boolean z;
            int i3;
            AbstractC26663a abstractC26663a = AbstractC26663a.this;
            if (i != -1) {
                z = true;
                if (i2 == 1) {
                    z = abstractC26663a.m1495x(i);
                } else if (i2 == 2) {
                    z = abstractC26663a.m1508k(i);
                } else if (i2 != 64) {
                    z = i2 != 128 ? abstractC26663a.m1499t(i, i2, bundle) : abstractC26663a.m1509j(i);
                } else if (!abstractC26663a.f74625h.isEnabled() || !abstractC26663a.f74625h.isTouchExplorationEnabled() || (i3 = abstractC26663a.f74628k) == i) {
                    z = false;
                } else {
                    if (i3 != Integer.MIN_VALUE) {
                        abstractC26663a.m1509j(i3);
                    }
                    abstractC26663a.f74628k = i;
                    abstractC26663a.f74626i.invalidate();
                    abstractC26663a.m1494y(i, 32768);
                }
            } else {
                View view = abstractC26663a.f74626i;
                AtomicInteger atomicInteger = C26614s.f74505a;
                z = view.performAccessibilityAction(i2, bundle);
            }
            return z;
        }
    }

    public AbstractC26663a(View view) {
        if (view != null) {
            this.f74626i = view;
            this.f74625h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (view.getImportantForAccessibility() != 0) {
                return;
            }
            view.setImportantForAccessibility(1);
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: b */
    public C26588c mo1512b(View view) {
        if (this.f74627j == null) {
            this.f74627j = new C26666c();
        }
        return this.f74627j;
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: c */
    public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: d */
    public void mo1510d(View view, C26584b c26584b) {
        this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
        m1498u(c26584b);
    }

    /* renamed from: j */
    public final boolean m1509j(int i) {
        if (this.f74628k == i) {
            this.f74628k = Integer.MIN_VALUE;
            this.f74626i.invalidate();
            m1494y(i, 65536);
            return true;
        }
        return false;
    }

    /* renamed from: k */
    public final boolean m1508k(int i) {
        if (this.f74629l != i) {
            return false;
        }
        this.f74629l = Integer.MIN_VALUE;
        m1496w(i, false);
        m1494y(i, 8);
        return true;
    }

    /* renamed from: l */
    public final AccessibilityEvent m1507l(int i, int i2) {
        if (i == -1) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            this.f74626i.onInitializeAccessibilityEvent(obtain);
            return obtain;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain(i2);
        C26584b m1500s = m1500s(i);
        obtain2.getText().add(m1500s.m1622i());
        obtain2.setContentDescription(m1500s.m1624g());
        obtain2.setScrollable(m1500s.f74463a.isScrollable());
        obtain2.setPassword(m1500s.f74463a.isPassword());
        obtain2.setEnabled(m1500s.m1621j());
        obtain2.setChecked(m1500s.f74463a.isChecked());
        if (obtain2.getText().isEmpty() && obtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain2.setClassName(m1500s.m1626e());
        obtain2.setSource(this.f74626i, i);
        obtain2.setPackageName(this.f74626i.getContext().getPackageName());
        return obtain2;
    }

    /* renamed from: m */
    public final C26584b m1506m(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        C26584b c26584b = new C26584b(obtain);
        obtain.setEnabled(true);
        c26584b.f74463a.setFocusable(true);
        c26584b.f74463a.setClassName("android.view.View");
        Rect rect = f74618n;
        c26584b.f74463a.setBoundsInParent(rect);
        c26584b.f74463a.setBoundsInScreen(rect);
        c26584b.m1614q(this.f74626i);
        m1497v(i, c26584b);
        if (c26584b.m1622i() == null && c26584b.m1624g() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        c26584b.f74463a.getBoundsInParent(this.f74622e);
        if (this.f74622e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int m1627d = c26584b.m1627d();
        if ((m1627d & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((m1627d & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        c26584b.f74463a.setPackageName(this.f74626i.getContext().getPackageName());
        View view = this.f74626i;
        c26584b.f74465c = i;
        c26584b.f74463a.setSource(view, i);
        if (this.f74628k == i) {
            c26584b.f74463a.setAccessibilityFocused(true);
            c26584b.f74463a.addAction(128);
        } else {
            c26584b.f74463a.setAccessibilityFocused(false);
            c26584b.f74463a.addAction(64);
        }
        boolean z = this.f74629l == i;
        if (z) {
            c26584b.f74463a.addAction(2);
        } else if (c26584b.m1620k()) {
            c26584b.f74463a.addAction(1);
        }
        c26584b.f74463a.setFocused(z);
        this.f74626i.getLocationOnScreen(this.f74624g);
        c26584b.f74463a.getBoundsInScreen(this.f74621d);
        if (this.f74621d.equals(rect)) {
            c26584b.f74463a.getBoundsInParent(this.f74621d);
            if (c26584b.f74464b != -1) {
                C26584b c26584b2 = new C26584b(AccessibilityNodeInfo.obtain());
                int i2 = c26584b.f74464b;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    View view2 = this.f74626i;
                    c26584b2.f74464b = -1;
                    c26584b2.f74463a.setParent(view2, -1);
                    c26584b2.f74463a.setBoundsInParent(f74618n);
                    m1497v(i3, c26584b2);
                    c26584b2.f74463a.getBoundsInParent(this.f74622e);
                    Rect rect2 = this.f74621d;
                    Rect rect3 = this.f74622e;
                    rect2.offset(rect3.left, rect3.top);
                    i2 = c26584b2.f74464b;
                }
                c26584b2.f74463a.recycle();
            }
            this.f74621d.offset(this.f74624g[0] - this.f74626i.getScrollX(), this.f74624g[1] - this.f74626i.getScrollY());
        }
        if (this.f74626i.getLocalVisibleRect(this.f74623f)) {
            this.f74623f.offset(this.f74624g[0] - this.f74626i.getScrollX(), this.f74624g[1] - this.f74626i.getScrollY());
            if (this.f74621d.intersect(this.f74623f)) {
                c26584b.f74463a.setBoundsInScreen(this.f74621d);
                Rect rect4 = this.f74621d;
                boolean z2 = false;
                if (rect4 != null) {
                    if (rect4.isEmpty()) {
                        z2 = false;
                    } else if (this.f74626i.getWindowVisibility() != 0) {
                        z2 = false;
                    } else {
                        ViewParent parent = this.f74626i.getParent();
                        while (true) {
                            ViewParent viewParent = parent;
                            if (viewParent instanceof View) {
                                View view3 = (View) viewParent;
                                z2 = false;
                                if (view3.getAlpha() <= 0.0f) {
                                    break;
                                } else if (view3.getVisibility() != 0) {
                                    z2 = false;
                                    break;
                                } else {
                                    parent = view3.getParent();
                                }
                            } else {
                                z2 = false;
                                if (viewParent != null) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
                if (z2) {
                    c26584b.f74463a.setVisibleToUser(true);
                }
            }
        }
        return c26584b;
    }

    /* renamed from: n */
    public final boolean m1505n(MotionEvent motionEvent) {
        int i;
        boolean z = false;
        if (this.f74625h.isEnabled()) {
            if (!this.f74625h.isTouchExplorationEnabled()) {
                z = false;
            } else {
                int action = motionEvent.getAction();
                if (action != 7 && action != 9) {
                    if (action != 10 || (i = this.f74630m) == Integer.MIN_VALUE) {
                        return false;
                    }
                    if (i == Integer.MIN_VALUE) {
                        return true;
                    }
                    this.f74630m = Integer.MIN_VALUE;
                    m1494y(Integer.MIN_VALUE, 128);
                    m1494y(i, 256);
                    return true;
                }
                int m1504o = m1504o(motionEvent.getX(), motionEvent.getY());
                int i2 = this.f74630m;
                if (i2 != m1504o) {
                    this.f74630m = m1504o;
                    m1494y(m1504o, 128);
                    m1494y(i2, 256);
                }
                z = false;
                if (m1504o != Integer.MIN_VALUE) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: o */
    public abstract int m1504o(float f, float f2);

    /* renamed from: p */
    public abstract void m1503p(List<Integer> list);

    /* renamed from: q */
    public final void m1502q(int i) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f74625h.isEnabled() || (parent = this.f74626i.getParent()) == null) {
            return;
        }
        AccessibilityEvent m1507l = m1507l(i, 2048);
        m1507l.setContentChangeTypes(0);
        parent.requestSendAccessibilityEvent(this.f74626i, m1507l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0274, code lost:
        if (((r0 * r0) + ((r0 * 13) * r0)) < ((r0 * r0) + ((r0 * 13) * r0))) goto L76;
     */
    /* JADX WARN: Removed duplicated region for block: B:132:0x028f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0285  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1501r(int r7, android.graphics.Rect r8) {
        /*
            Method dump skipped, instructions count: 974
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1832m.p1833a.AbstractC26663a.m1501r(int, android.graphics.Rect):boolean");
    }

    /* renamed from: s */
    public C26584b m1500s(int i) {
        if (i == -1) {
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(this.f74626i);
            C26584b c26584b = new C26584b(obtain);
            View view = this.f74626i;
            AtomicInteger atomicInteger = C26614s.f74505a;
            view.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            m1503p(arrayList);
            if (c26584b.f74463a.getChildCount() > 0 && arrayList.size() > 0) {
                throw new RuntimeException("Views cannot have both real and virtual children");
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                c26584b.f74463a.addChild(this.f74626i, ((Integer) arrayList.get(i2)).intValue());
            }
            return c26584b;
        }
        return m1506m(i);
    }

    /* renamed from: t */
    public abstract boolean m1499t(int i, int i2, Bundle bundle);

    /* renamed from: u */
    public void m1498u(C26584b c26584b) {
    }

    /* renamed from: v */
    public abstract void m1497v(int i, C26584b c26584b);

    /* renamed from: w */
    public void m1496w(int i, boolean z) {
    }

    /* renamed from: x */
    public final boolean m1495x(int i) {
        int i2;
        if ((this.f74626i.isFocused() || this.f74626i.requestFocus()) && (i2 = this.f74629l) != i) {
            if (i2 != Integer.MIN_VALUE) {
                m1508k(i2);
            }
            this.f74629l = i;
            m1496w(i, true);
            m1494y(i, 8);
            return true;
        }
        return false;
    }

    /* renamed from: y */
    public final boolean m1494y(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f74625h.isEnabled() || (parent = this.f74626i.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.f74626i, m1507l(i, i2));
    }

    /* renamed from: z */
    public final void m1493z(int i) {
        int i2 = this.f74630m;
        if (i2 == i) {
            return;
        }
        this.f74630m = i;
        m1494y(i, 128);
        m1494y(i2, 256);
    }
}
