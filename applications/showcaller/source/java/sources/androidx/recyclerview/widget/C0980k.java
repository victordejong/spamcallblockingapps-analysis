package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.Map;
import java.util.WeakHashMap;
import p020b.p041h.p050l.C1599a;
import p020b.p041h.p050l.C1679w;
import p020b.p041h.p050l.p051f0.C1634c;
import p020b.p041h.p050l.p051f0.C1639d;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
public class C0980k extends C1599a {

    /* renamed from: d */
    final RecyclerView f4375d;

    /* renamed from: e */
    private final C0981a f4376e;

    /* renamed from: androidx.recyclerview.widget.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k$a.class */
    public static class C0981a extends C1599a {

        /* renamed from: d */
        final C0980k f4377d;

        /* renamed from: e */
        private Map<View, C1599a> f4378e = new WeakHashMap();

        public C0981a(C0980k c0980k) {
            this.f4377d = c0980k;
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: a */
        public boolean mo29651a(View view, AccessibilityEvent accessibilityEvent) {
            C1599a c1599a = this.f4378e.get(view);
            return c1599a != null ? c1599a.mo29651a(view, accessibilityEvent) : super.mo29651a(view, accessibilityEvent);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: b */
        public C1639d mo29176b(View view) {
            C1599a c1599a = this.f4378e.get(view);
            return c1599a != null ? c1599a.mo29176b(view) : super.mo29176b(view);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: f */
        public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                c1599a.mo4650f(view, accessibilityEvent);
            } else {
                super.mo4650f(view, accessibilityEvent);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: g */
        public void mo3869g(View view, C1634c c1634c) {
            if (this.f4377d.m31372o() || this.f4377d.f4375d.getLayoutManager() == null) {
                super.mo3869g(view, c1634c);
                return;
            }
            this.f4377d.f4375d.getLayoutManager().m31848O0(view, c1634c);
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                c1599a.mo3869g(view, c1634c);
            } else {
                super.mo3869g(view, c1634c);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: h */
        public void mo3945h(View view, AccessibilityEvent accessibilityEvent) {
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                c1599a.mo3945h(view, accessibilityEvent);
            } else {
                super.mo3945h(view, accessibilityEvent);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: i */
        public boolean mo29647i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C1599a c1599a = this.f4378e.get(viewGroup);
            return c1599a != null ? c1599a.mo29647i(viewGroup, view, accessibilityEvent) : super.mo29647i(viewGroup, view, accessibilityEvent);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: j */
        public boolean mo29646j(View view, int i, Bundle bundle) {
            if (this.f4377d.m31372o() || this.f4377d.f4375d.getLayoutManager() == null) {
                return super.mo29646j(view, i, bundle);
            }
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                if (c1599a.mo29646j(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo29646j(view, i, bundle)) {
                return true;
            }
            return this.f4377d.f4375d.getLayoutManager().m31813i1(view, i, bundle);
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: l */
        public void mo29644l(View view, int i) {
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                c1599a.mo29644l(view, i);
            } else {
                super.mo29644l(view, i);
            }
        }

        @Override // p020b.p041h.p050l.C1599a
        /* renamed from: m */
        public void mo29643m(View view, AccessibilityEvent accessibilityEvent) {
            C1599a c1599a = this.f4378e.get(view);
            if (c1599a != null) {
                c1599a.mo29643m(view, accessibilityEvent);
            } else {
                super.mo29643m(view, accessibilityEvent);
            }
        }

        /* renamed from: n */
        public C1599a m31371n(View view) {
            return this.f4378e.remove(view);
        }

        /* renamed from: o */
        public void m31370o(View view) {
            C1599a m29286l = C1679w.m29286l(view);
            if (m29286l == null || m29286l == this) {
                return;
            }
            this.f4378e.put(view, m29286l);
        }
    }

    public C0980k(RecyclerView recyclerView) {
        this.f4375d = recyclerView;
        C1599a m31373n = m31373n();
        if (m31373n == null || !(m31373n instanceof C0981a)) {
            this.f4376e = new C0981a(this);
        } else {
            this.f4376e = (C0981a) m31373n;
        }
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: f */
    public void mo4650f(View view, AccessibilityEvent accessibilityEvent) {
        super.mo4650f(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || m31372o()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().mo31679K0(accessibilityEvent);
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: g */
    public void mo3869g(View view, C1634c c1634c) {
        super.mo3869g(view, c1634c);
        if (m31372o() || this.f4375d.getLayoutManager() == null) {
            return;
        }
        this.f4375d.getLayoutManager().m31851M0(c1634c);
    }

    @Override // p020b.p041h.p050l.C1599a
    /* renamed from: j */
    public boolean mo29646j(View view, int i, Bundle bundle) {
        if (super.mo29646j(view, i, bundle)) {
            return true;
        }
        if (!m31372o() && this.f4375d.getLayoutManager() != null) {
            return this.f4375d.getLayoutManager().m31818g1(i, bundle);
        }
        return false;
    }

    /* renamed from: n */
    public C1599a m31373n() {
        return this.f4376e;
    }

    /* renamed from: o */
    boolean m31372o() {
        return this.f4375d.m32011m0();
    }
}
