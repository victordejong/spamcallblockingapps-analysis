package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;
import p163m0.C3546a;
import p174n0.C3694b;
import p174n0.C3698c;
/* renamed from: androidx.recyclerview.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/y.class */
public class C0651y extends C3546a {

    /* renamed from: d */
    public final RecyclerView f2546d;

    /* renamed from: e */
    public final C0652a f2547e;

    /* renamed from: androidx.recyclerview.widget.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/y$a.class */
    public static class C0652a extends C3546a {

        /* renamed from: d */
        public final C0651y f2548d;

        /* renamed from: e */
        public Map<View, C3546a> f2549e = new WeakHashMap();

        public C0652a(C0651y c0651y) {
            this.f2548d = c0651y;
        }

        @Override // p163m0.C3546a
        /* renamed from: a */
        public boolean mo2196a(View view, AccessibilityEvent accessibilityEvent) {
            C3546a c3546a = this.f2549e.get(view);
            return c3546a != null ? c3546a.mo2196a(view, accessibilityEvent) : this.f11715a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // p163m0.C3546a
        /* renamed from: b */
        public C3698c mo1183b(View view) {
            C3546a c3546a = this.f2549e.get(view);
            return c3546a != null ? c3546a.mo1183b(view) : super.mo1183b(view);
        }

        @Override // p163m0.C3546a
        /* renamed from: c */
        public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                c3546a.mo737c(view, accessibilityEvent);
            } else {
                this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // p163m0.C3546a
        /* renamed from: d */
        public void mo697d(View view, C3694b c3694b) {
            if (this.f2548d.m7522j() || this.f2548d.f2546d.getLayoutManager() == null) {
                this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
                return;
            }
            this.f2548d.f2546d.getLayoutManager().m7790c0(view, c3694b);
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                c3546a.mo697d(view, c3694b);
            } else {
                this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
            }
        }

        @Override // p163m0.C3546a
        /* renamed from: e */
        public void mo2195e(View view, AccessibilityEvent accessibilityEvent) {
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                c3546a.mo2195e(view, accessibilityEvent);
            } else {
                this.f11715a.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // p163m0.C3546a
        /* renamed from: f */
        public boolean mo2194f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C3546a c3546a = this.f2549e.get(viewGroup);
            return c3546a != null ? c3546a.mo2194f(viewGroup, view, accessibilityEvent) : this.f11715a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // p163m0.C3546a
        /* renamed from: g */
        public boolean mo2193g(View view, int i, Bundle bundle) {
            if (this.f2548d.m7522j() || this.f2548d.f2546d.getLayoutManager() == null) {
                return super.mo2193g(view, i, bundle);
            }
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                if (c3546a.mo2193g(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo2193g(view, i, bundle)) {
                return true;
            }
            RecyclerView.C0584s c0584s = this.f2548d.f2546d.getLayoutManager().f2256b.f2175b;
            return false;
        }

        @Override // p163m0.C3546a
        /* renamed from: h */
        public void mo2192h(View view, int i) {
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                c3546a.mo2192h(view, i);
            } else {
                this.f11715a.sendAccessibilityEvent(view, i);
            }
        }

        @Override // p163m0.C3546a
        /* renamed from: i */
        public void mo2191i(View view, AccessibilityEvent accessibilityEvent) {
            C3546a c3546a = this.f2549e.get(view);
            if (c3546a != null) {
                c3546a.mo2191i(view, accessibilityEvent);
            } else {
                this.f11715a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public C0651y(RecyclerView recyclerView) {
        this.f2546d = recyclerView;
        C0652a c0652a = this.f2547e;
        if (c0652a != null) {
            this.f2547e = c0652a;
        } else {
            this.f2547e = new C0652a(this);
        }
    }

    @Override // p163m0.C3546a
    /* renamed from: c */
    public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || m7522j()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().mo7713b0(accessibilityEvent);
    }

    @Override // p163m0.C3546a
    /* renamed from: d */
    public void mo697d(View view, C3694b c3694b) {
        this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
        if (m7522j() || this.f2546d.getLayoutManager() == null) {
            return;
        }
        RecyclerView.AbstractC0573m layoutManager = this.f2546d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.f2256b;
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        RecyclerView.C0592x c0592x = recyclerView.f2186g0;
        if (recyclerView.canScrollVertically(-1) || layoutManager.f2256b.canScrollHorizontally(-1)) {
            c3694b.f12070a.addAction(8192);
            c3694b.f12070a.setScrollable(true);
        }
        if (layoutManager.f2256b.canScrollVertically(1) || layoutManager.f2256b.canScrollHorizontally(1)) {
            c3694b.f12070a.addAction(4096);
            c3694b.f12070a.setScrollable(true);
        }
        c3694b.m1872l(C3694b.C3696b.m1866a(layoutManager.mo7729S(c0584s, c0592x), layoutManager.mo7671z(c0584s, c0592x), false, 0));
    }

    @Override // p163m0.C3546a
    /* renamed from: g */
    public boolean mo2193g(View view, int i, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z = true;
        if (super.mo2193g(view, i, bundle)) {
            return true;
        }
        if (m7522j() || this.f2546d.getLayoutManager() == null) {
            return false;
        }
        RecyclerView.AbstractC0573m layoutManager = this.f2546d.getLayoutManager();
        RecyclerView recyclerView = layoutManager.f2256b;
        RecyclerView.C0584s c0584s = recyclerView.f2175b;
        if (i == 4096) {
            i5 = recyclerView.canScrollVertically(1) ? (layoutManager.f2269o - layoutManager.m7798P()) - layoutManager.m7801M() : 0;
            i2 = i5;
            if (layoutManager.f2256b.canScrollHorizontally(1)) {
                i4 = (layoutManager.f2268n - layoutManager.m7800N()) - layoutManager.m7799O();
                int i6 = i4;
                i2 = i5;
                i3 = i6;
            }
            i3 = 0;
        } else if (i != 8192) {
            i3 = 0;
            i2 = 0;
        } else {
            i5 = recyclerView.canScrollVertically(-1) ? -((layoutManager.f2269o - layoutManager.m7798P()) - layoutManager.m7801M()) : 0;
            i2 = i5;
            if (layoutManager.f2256b.canScrollHorizontally(-1)) {
                i4 = -((layoutManager.f2268n - layoutManager.m7800N()) - layoutManager.m7799O());
                int i62 = i4;
                i2 = i5;
                i3 = i62;
            }
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            z = false;
        } else {
            layoutManager.f2256b.m7879g0(i3, i2, null, Integer.MIN_VALUE, true);
        }
        return z;
    }

    /* renamed from: j */
    public boolean m7522j() {
        return this.f2546d.m7905M();
    }
}
