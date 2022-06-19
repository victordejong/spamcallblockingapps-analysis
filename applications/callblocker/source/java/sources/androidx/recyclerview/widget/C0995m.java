package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p026h.C0549a;
import androidx.core.p026h.C0595u;
import androidx.core.p026h.p027a.C0553c;
import androidx.core.p026h.p027a.C0557d;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
public class C0995m extends C0549a {

    /* renamed from: a */
    final RecyclerView f3406a;

    /* renamed from: b */
    private final C0996a f3407b;

    /* renamed from: androidx.recyclerview.widget.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m$a.class */
    public static class C0996a extends C0549a {

        /* renamed from: a */
        final C0995m f3408a;

        /* renamed from: b */
        private Map<View, C0549a> f3409b = new WeakHashMap();

        public C0996a(C0995m c0995m) {
            this.f3408a = c0995m;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public C0557d mo18439a(View view) {
            C0549a c0549a = this.f3409b.get(view);
            return c0549a != null ? c0549a.mo18439a(view) : super.mo18439a(view);
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo18438a(View view, int i) {
            C0549a c0549a = this.f3409b.get(view);
            if (c0549a != null) {
                c0549a.mo18438a(view, i);
            } else {
                super.mo18438a(view, i);
            }
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo18437a(View view, AccessibilityEvent accessibilityEvent) {
            C0549a c0549a = this.f3409b.get(view);
            if (c0549a != null) {
                c0549a.mo18437a(view, accessibilityEvent);
            } else {
                super.mo18437a(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public void mo2272a(View view, C0553c c0553c) {
            if (this.f3408a.m18441b() || this.f3408a.f3406a.getLayoutManager() == null) {
                super.mo2272a(view, c0553c);
                return;
            }
            this.f3408a.f3406a.getLayoutManager().m18981a(view, c0553c);
            C0549a c0549a = this.f3409b.get(view);
            if (c0549a != null) {
                c0549a.mo2272a(view, c0553c);
            } else {
                super.mo2272a(view, c0553c);
            }
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public boolean mo2512a(View view, int i, Bundle bundle) {
            boolean mo2512a;
            if (this.f3408a.m18441b() || this.f3408a.f3406a.getLayoutManager() == null) {
                mo2512a = super.mo2512a(view, i, bundle);
            } else {
                C0549a c0549a = this.f3409b.get(view);
                if (c0549a != null) {
                    if (c0549a.mo2512a(view, i, bundle)) {
                        mo2512a = true;
                    }
                    mo2512a = this.f3408a.f3406a.getLayoutManager().m18985a(view, i, bundle);
                } else {
                    if (super.mo2512a(view, i, bundle)) {
                        mo2512a = true;
                    }
                    mo2512a = this.f3408a.f3406a.getLayoutManager().m18985a(view, i, bundle);
                }
            }
            return mo2512a;
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: a */
        public boolean mo18436a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C0549a c0549a = this.f3409b.get(viewGroup);
            return c0549a != null ? c0549a.mo18436a(viewGroup, view, accessibilityEvent) : super.mo18436a(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: b */
        public boolean mo18435b(View view, AccessibilityEvent accessibilityEvent) {
            C0549a c0549a = this.f3409b.get(view);
            return c0549a != null ? c0549a.mo18435b(view, accessibilityEvent) : super.mo18435b(view, accessibilityEvent);
        }

        /* renamed from: c */
        public void m18434c(View view) {
            C0549a m20336b = C0595u.m20336b(view);
            if (m20336b == null || m20336b == this) {
                return;
            }
            this.f3409b.put(view, m20336b);
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: c */
        public void mo2271c(View view, AccessibilityEvent accessibilityEvent) {
            C0549a c0549a = this.f3409b.get(view);
            if (c0549a != null) {
                c0549a.mo2271c(view, accessibilityEvent);
            } else {
                super.mo2271c(view, accessibilityEvent);
            }
        }

        /* renamed from: d */
        public C0549a m18433d(View view) {
            return this.f3409b.remove(view);
        }

        @Override // androidx.core.p026h.C0549a
        /* renamed from: d */
        public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
            C0549a c0549a = this.f3409b.get(view);
            if (c0549a != null) {
                c0549a.mo2915d(view, accessibilityEvent);
            } else {
                super.mo2915d(view, accessibilityEvent);
            }
        }
    }

    public C0995m(RecyclerView recyclerView) {
        this.f3406a = recyclerView;
        C0549a m18440c = m18440c();
        if (m18440c == null || !(m18440c instanceof C0996a)) {
            this.f3407b = new C0996a(this);
        } else {
            this.f3407b = (C0996a) m18440c;
        }
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: a */
    public void mo2272a(View view, C0553c c0553c) {
        super.mo2272a(view, c0553c);
        if (m18441b() || this.f3406a.getLayoutManager() == null) {
            return;
        }
        this.f3406a.getLayoutManager().m18977a(c0553c);
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: a */
    public boolean mo2512a(View view, int i, Bundle bundle) {
        return super.mo2512a(view, i, bundle) ? true : (m18441b() || this.f3406a.getLayoutManager() == null) ? false : this.f3406a.getLayoutManager().m18995a(i, bundle);
    }

    /* renamed from: b */
    boolean m18441b() {
        return this.f3406a.hasPendingAdapterUpdates();
    }

    /* renamed from: c */
    public C0549a m18440c() {
        return this.f3407b;
    }

    @Override // androidx.core.p026h.C0549a
    /* renamed from: d */
    public void mo2915d(View view, AccessibilityEvent accessibilityEvent) {
        super.mo2915d(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || m18441b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().mo18754a(accessibilityEvent);
    }
}
