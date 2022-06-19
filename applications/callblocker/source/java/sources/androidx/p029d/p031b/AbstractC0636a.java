package androidx.p029d.p031b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.C0606x;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.p026h.p027a.C0557d;
import androidx.core.p026h.p027a.C0560e;
import androidx.p013b.C0387h;
import androidx.p029d.p031b.C0640b;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.d.b.a */
/* loaded from: classes-dex2jar.jar:androidx/d/b/a.class */
public abstract class AbstractC0636a extends C0549a {

    /* renamed from: c */
    private static final Rect f2204c = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION);

    /* renamed from: l */
    private static final C0640b.AbstractC0641a<C0553c> f2205l = new C0640b.AbstractC0641a<C0553c>() { // from class: androidx.d.b.a.1
        /* renamed from: a */
        public void mo20067a(C0553c c0553c, Rect rect) {
            c0553c.m20522a(rect);
        }
    };

    /* renamed from: m */
    private static final C0640b.AbstractC0642b<C0387h<C0553c>, C0553c> f2206m = new C0640b.AbstractC0642b<C0387h<C0553c>, C0553c>() { // from class: androidx.d.b.a.2
        /* renamed from: a */
        public int mo20066a(C0387h<C0553c> c0387h) {
            return c0387h.m21077b();
        }

        /* renamed from: a */
        public C0553c mo20065a(C0387h<C0553c> c0387h, int i) {
            return c0387h.m21070d(i);
        }
    };

    /* renamed from: h */
    private final AccessibilityManager f2213h;

    /* renamed from: i */
    private final View f2214i;

    /* renamed from: j */
    private C0639a f2215j;

    /* renamed from: d */
    private final Rect f2209d = new Rect();

    /* renamed from: e */
    private final Rect f2210e = new Rect();

    /* renamed from: f */
    private final Rect f2211f = new Rect();

    /* renamed from: g */
    private final int[] f2212g = new int[2];

    /* renamed from: a */
    int f2207a = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: b */
    int f2208b = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: k */
    private int f2216k = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: androidx.d.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/b/a$a.class */
    private class C0639a extends C0557d {
        C0639a() {
            AbstractC0636a.this = r4;
        }

        @Override // androidx.core.p026h.p027a.C0557d
        /* renamed from: a */
        public C0553c mo20085a(int i) {
            return C0553c.m20515a(AbstractC0636a.this.m20117a(i));
        }

        @Override // androidx.core.p026h.p027a.C0557d
        /* renamed from: a */
        public boolean mo20084a(int i, int i2, Bundle bundle) {
            return AbstractC0636a.this.m20115a(i, i2, bundle);
        }

        @Override // androidx.core.p026h.p027a.C0557d
        /* renamed from: b */
        public C0553c mo20083b(int i) {
            int i2 = i == 2 ? AbstractC0636a.this.f2207a : AbstractC0636a.this.f2208b;
            return i2 == Integer.MIN_VALUE ? null : mo20085a(i2);
        }
    }

    public AbstractC0636a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f2214i = view;
        this.f2213h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (C0595u.m20322f(view) != 0) {
            return;
        }
        C0595u.m20335b(view, 1);
    }

    /* renamed from: a */
    private static Rect m20108a(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        switch (i) {
            case 17:
                rect.set(width, 0, width, height);
                break;
            case 33:
                rect.set(0, height, width, height);
                break;
            case 66:
                rect.set(-1, 0, -1, height);
                break;
            case 130:
                rect.set(0, -1, width, -1);
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    /* renamed from: a */
    private void m20114a(int i, Rect rect) {
        m20117a(i).m20522a(rect);
    }

    /* renamed from: a */
    private boolean m20113a(int i, Bundle bundle) {
        return C0595u.m20354a(this.f2214i, i, bundle);
    }

    /* renamed from: a */
    private boolean m20111a(Rect rect) {
        boolean z = false;
        if (rect != null) {
            if (rect.isEmpty()) {
                z = false;
            } else {
                z = false;
                if (this.f2214i.getWindowVisibility() == 0) {
                    ViewParent parent = this.f2214i.getParent();
                    while (true) {
                        ViewParent viewParent = parent;
                        if (viewParent instanceof View) {
                            View view = (View) viewParent;
                            z = false;
                            if (view.getAlpha() <= 0.0f) {
                                break;
                            }
                            z = false;
                            if (view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else {
                            z = viewParent != null;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private AccessibilityEvent m20103b(int i, int i2) {
        AccessibilityEvent m20092f;
        switch (i) {
            case -1:
                m20092f = m20092f(i2);
                break;
            default:
                m20092f = m20099c(i, i2);
                break;
        }
        return m20092f;
    }

    /* renamed from: b */
    private boolean m20102b(int i, Rect rect) {
        C0553c c0553c;
        boolean z = true;
        C0387h<C0553c> m20097d = m20097d();
        int i2 = this.f2208b;
        C0553c m21080a = i2 == Integer.MIN_VALUE ? null : m20097d.m21080a(i2);
        switch (i) {
            case 1:
            case 2:
                if (C0595u.m20320g(this.f2214i) != 1) {
                    z = false;
                }
                c0553c = (C0553c) C0640b.m20078a(m20097d, f2206m, f2205l, m21080a, i, z, false);
                break;
            case 17:
            case 33:
            case 66:
            case 130:
                Rect rect2 = new Rect();
                if (this.f2208b != Integer.MIN_VALUE) {
                    m20114a(this.f2208b, rect2);
                } else if (rect != null) {
                    rect2.set(rect);
                } else {
                    m20108a(this.f2214i, i, rect2);
                }
                c0553c = (C0553c) C0640b.m20077a(m20097d, f2206m, f2205l, m21080a, rect2, i);
                break;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return m20104b(c0553c == null ? Integer.MIN_VALUE : m20097d.m21073c(m20097d.m21078a((C0387h<C0553c>) c0553c)));
    }

    /* renamed from: c */
    private AccessibilityEvent m20099c(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        C0553c m20117a = m20117a(i);
        obtain.getText().add(m20117a.m20462q());
        obtain.setContentDescription(m20117a.m20461r());
        obtain.setScrollable(m20117a.m20466n());
        obtain.setPassword(m20117a.m20468m());
        obtain.setEnabled(m20117a.m20470l());
        obtain.setChecked(m20117a.m20485f());
        m20112a(i, obtain);
        if (!obtain.getText().isEmpty() || obtain.getContentDescription() != null) {
            obtain.setClassName(m20117a.m20463p());
            C0560e.m20446a(obtain, this.f2214i, i);
            obtain.setPackageName(this.f2214i.getContext().getPackageName());
            return obtain;
        }
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }

    /* renamed from: c */
    private boolean m20098c(int i, int i2, Bundle bundle) {
        boolean m20100c;
        switch (i2) {
            case 1:
                m20100c = m20104b(i);
                break;
            case 2:
                m20100c = m20100c(i);
                break;
            case 64:
                m20100c = m20090h(i);
                break;
            case 128:
                m20100c = m20089i(i);
                break;
            default:
                m20100c = mo3438b(i, i2, bundle);
                break;
        }
        return m20100c;
    }

    /* renamed from: d */
    private static int m20096d(int i) {
        int i2;
        switch (i) {
            case 19:
                i2 = 33;
                break;
            case 20:
            default:
                i2 = 130;
                break;
            case 21:
                i2 = 17;
                break;
            case 22:
                i2 = 66;
                break;
        }
        return i2;
    }

    /* renamed from: d */
    private C0387h<C0553c> m20097d() {
        ArrayList arrayList = new ArrayList();
        mo3439a(arrayList);
        C0387h<C0553c> c0387h = new C0387h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            c0387h.m21075b(i, m20091g(i));
        }
        return c0387h;
    }

    /* renamed from: e */
    private void m20094e(int i) {
        if (this.f2216k == i) {
            return;
        }
        int i2 = this.f2216k;
        this.f2216k = i;
        m20116a(i, 128);
        m20116a(i2, 256);
    }

    /* renamed from: e */
    private boolean m20095e() {
        return this.f2208b != Integer.MIN_VALUE && mo3438b(this.f2208b, 16, null);
    }

    /* renamed from: f */
    private AccessibilityEvent m20092f(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.f2214i.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    /* renamed from: f */
    private C0553c m20093f() {
        C0553c m20519a = C0553c.m20519a(this.f2214i);
        C0595u.m20346a(this.f2214i, m20519a);
        ArrayList arrayList = new ArrayList();
        mo3439a(arrayList);
        if (m20519a.m20501c() <= 0 || arrayList.size() <= 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m20519a.m20505b(this.f2214i, ((Integer) arrayList.get(i)).intValue());
            }
            return m20519a;
        }
        throw new RuntimeException("Views cannot have both real and virtual children");
    }

    /* renamed from: g */
    private C0553c m20091g(int i) {
        C0553c m20509b = C0553c.m20509b();
        m20509b.m20477h(true);
        m20509b.m20495c(true);
        m20509b.m20504b("android.view.View");
        m20509b.m20507b(f2204c);
        m20509b.m20493d(f2204c);
        m20509b.m20506b(this.f2214i);
        mo3442a(i, m20509b);
        if (m20509b.m20462q() == null && m20509b.m20461r() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        m20509b.m20522a(this.f2210e);
        if (this.f2210e.equals(f2204c)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int m20494d = m20509b.m20494d();
        if ((m20494d & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((m20494d & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        m20509b.m20514a((CharSequence) this.f2214i.getContext().getPackageName());
        m20509b.m20518a(this.f2214i, i);
        if (this.f2207a == i) {
            m20509b.m20483f(true);
            m20509b.m20525a(128);
        } else {
            m20509b.m20483f(false);
            m20509b.m20525a(64);
        }
        boolean z = this.f2208b == i;
        if (z) {
            m20509b.m20525a(2);
        } else if (m20509b.m20482g()) {
            m20509b.m20525a(1);
        }
        m20509b.m20490d(z);
        this.f2214i.getLocationOnScreen(this.f2212g);
        m20509b.m20499c(this.f2209d);
        if (this.f2209d.equals(f2204c)) {
            m20509b.m20522a(this.f2209d);
            if (m20509b.f2021a != -1) {
                C0553c m20509b2 = C0553c.m20509b();
                int i2 = m20509b.f2021a;
                while (true) {
                    int i3 = i2;
                    if (i3 == -1) {
                        break;
                    }
                    m20509b2.m20497c(this.f2214i, -1);
                    m20509b2.m20507b(f2204c);
                    mo3442a(i3, m20509b2);
                    m20509b2.m20522a(this.f2210e);
                    this.f2209d.offset(this.f2210e.left, this.f2210e.top);
                    i2 = m20509b2.f2021a;
                }
                m20509b2.m20460s();
            }
            this.f2209d.offset(this.f2212g[0] - this.f2214i.getScrollX(), this.f2212g[1] - this.f2214i.getScrollY());
        }
        if (this.f2214i.getLocalVisibleRect(this.f2211f)) {
            this.f2211f.offset(this.f2212g[0] - this.f2214i.getScrollX(), this.f2212g[1] - this.f2214i.getScrollY());
            if (this.f2209d.intersect(this.f2211f)) {
                m20509b.m20493d(this.f2209d);
                if (m20111a(this.f2209d)) {
                    m20509b.m20486e(true);
                }
            }
        }
        return m20509b;
    }

    /* renamed from: h */
    private boolean m20090h(int i) {
        boolean z = false;
        if (this.f2213h.isEnabled()) {
            if (!this.f2213h.isTouchExplorationEnabled()) {
                z = false;
            } else {
                z = false;
                if (this.f2207a != i) {
                    if (this.f2207a != Integer.MIN_VALUE) {
                        m20089i(this.f2207a);
                    }
                    this.f2207a = i;
                    this.f2214i.invalidate();
                    m20116a(i, 32768);
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: i */
    private boolean m20089i(int i) {
        boolean z;
        if (this.f2207a == i) {
            this.f2207a = RecyclerView.UNDEFINED_DURATION;
            this.f2214i.invalidate();
            m20116a(i, 65536);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    protected abstract int mo3443a(float f, float f2);

    /* renamed from: a */
    C0553c m20117a(int i) {
        return i == -1 ? m20093f() : m20091g(i);
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: a */
    public C0557d mo18439a(View view) {
        if (this.f2215j == null) {
            this.f2215j = new C0639a();
        }
        return this.f2215j;
    }

    /* renamed from: a */
    protected void m20112a(int i, AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: a */
    protected abstract void mo3442a(int i, C0553c c0553c);

    /* renamed from: a */
    protected void mo3441a(int i, boolean z) {
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: a */
    public void mo2272a(View view, C0553c c0553c) {
        super.mo2272a(view, c0553c);
        mo3440a(c0553c);
    }

    /* renamed from: a */
    protected void m20107a(AccessibilityEvent accessibilityEvent) {
    }

    /* renamed from: a */
    protected void mo3440a(C0553c c0553c) {
    }

    /* renamed from: a */
    protected abstract void mo3439a(List<Integer> list);

    /* renamed from: a */
    public final void m20106a(boolean z, int i, Rect rect) {
        if (this.f2208b != Integer.MIN_VALUE) {
            m20100c(this.f2208b);
        }
        if (z) {
            m20102b(i, rect);
        }
    }

    /* renamed from: a */
    public final boolean m20116a(int i, int i2) {
        boolean z = false;
        if (i != Integer.MIN_VALUE) {
            if (!this.f2213h.isEnabled()) {
                z = false;
            } else {
                ViewParent parent = this.f2214i.getParent();
                z = false;
                if (parent != null) {
                    z = C0606x.m20258a(parent, this.f2214i, m20103b(i, i2));
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    boolean m20115a(int i, int i2, Bundle bundle) {
        boolean m20113a;
        switch (i) {
            case -1:
                m20113a = m20113a(i2, bundle);
                break;
            default:
                m20113a = m20098c(i, i2, bundle);
                break;
        }
        return m20113a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final boolean m20110a(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (keyEvent.hasNoModifiers()) {
                        int m20096d = m20096d(keyCode);
                        int repeatCount = keyEvent.getRepeatCount();
                        int i = 0;
                        boolean z2 = false;
                        while (true) {
                            boolean z3 = z2;
                            z = z3;
                            if (i >= repeatCount + 1) {
                                break;
                            } else {
                                z = z3;
                                if (!m20102b(m20096d, (Rect) null)) {
                                    break;
                                } else {
                                    i++;
                                    z2 = true;
                                }
                            }
                        }
                    }
                    break;
                case 23:
                case 66:
                    if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                        m20095e();
                        z = true;
                        break;
                    }
                    break;
                case 61:
                    if (!keyEvent.hasNoModifiers()) {
                        if (keyEvent.hasModifiers(1)) {
                            z = m20102b(1, (Rect) null);
                            break;
                        }
                    } else {
                        z = m20102b(2, (Rect) null);
                        break;
                    }
                    break;
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public final boolean m20109a(MotionEvent motionEvent) {
        boolean z = false;
        if (this.f2213h.isEnabled()) {
            if (this.f2213h.isTouchExplorationEnabled()) {
                switch (motionEvent.getAction()) {
                    case 7:
                    case 9:
                        int mo3443a = mo3443a(motionEvent.getX(), motionEvent.getY());
                        m20094e(mo3443a);
                        if (mo3443a == Integer.MIN_VALUE) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    case 8:
                    default:
                        z = false;
                        break;
                    case 10:
                        z = false;
                        if (this.f2216k != Integer.MIN_VALUE) {
                            m20094e(RecyclerView.UNDEFINED_DURATION);
                            z = true;
                            break;
                        }
                        break;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final int m20105b() {
        return this.f2207a;
    }

    /* renamed from: b */
    public final boolean m20104b(int i) {
        boolean z = false;
        if ((this.f2214i.isFocused() || this.f2214i.requestFocus()) && this.f2208b != i) {
            if (this.f2208b != Integer.MIN_VALUE) {
                m20100c(this.f2208b);
            }
            this.f2208b = i;
            mo3441a(i, true);
            m20116a(i, 8);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    protected abstract boolean mo3438b(int i, int i2, Bundle bundle);

    /* renamed from: c */
    public final int m20101c() {
        return this.f2208b;
    }

    /* renamed from: c */
    public final boolean m20100c(int i) {
        boolean z = false;
        if (this.f2208b == i) {
            this.f2208b = RecyclerView.UNDEFINED_DURATION;
            mo3441a(i, false);
            m20116a(i, 8);
            z = true;
        }
        return z;
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: d */
    public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo2915d(view, accessibilityEvent);
        m20107a(accessibilityEvent);
    }
}
