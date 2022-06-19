package p1727n3.p1744b0.p1745a;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import java.util.WeakHashMap;
import p1727n3.p1807k.p1821i.C26558a;
import p1727n3.p1807k.p1821i.p1822f0.C26584b;
import p1727n3.p1807k.p1821i.p1822f0.C26588c;
/* renamed from: n3.b0.a.w */
/* loaded from: classes-dex2jar.jar:n3/b0/a/w.class */
public class C25623w extends C26558a {

    /* renamed from: d */
    public final RecyclerView f71791d;

    /* renamed from: e */
    public final C25624a f71792e;

    /* renamed from: n3.b0.a.w$a */
    /* loaded from: classes-dex2jar.jar:n3/b0/a/w$a.class */
    public static class C25624a extends C26558a {

        /* renamed from: d */
        public final C25623w f71793d;

        /* renamed from: e */
        public Map<View, C26558a> f71794e = new WeakHashMap();

        public C25624a(C25623w c25623w) {
            this.f71793d = c25623w;
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: a */
        public boolean mo1683a(View view, AccessibilityEvent accessibilityEvent) {
            C26558a c26558a = this.f71794e.get(view);
            return c26558a != null ? c26558a.mo1683a(view, accessibilityEvent) : this.f74411a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: b */
        public C26588c mo1512b(View view) {
            C26558a c26558a = this.f71794e.get(view);
            return c26558a != null ? c26558a.mo1512b(view) : super.mo1512b(view);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: c */
        public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                c26558a.mo1511c(view, accessibilityEvent);
            } else {
                this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: d */
        public void mo1510d(View view, C26584b c26584b) {
            if (this.f71793d.m3119j() || this.f71793d.f71791d.getLayoutManager() == null) {
                this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
                return;
            }
            this.f71793d.f71791d.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, c26584b);
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                c26558a.mo1510d(view, c26584b);
            } else {
                this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: e */
        public void mo1682e(View view, AccessibilityEvent accessibilityEvent) {
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                c26558a.mo1682e(view, accessibilityEvent);
            } else {
                this.f74411a.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: f */
        public boolean mo1681f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            C26558a c26558a = this.f71794e.get(viewGroup);
            return c26558a != null ? c26558a.mo1681f(viewGroup, view, accessibilityEvent) : this.f74411a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: g */
        public boolean mo1680g(View view, int i, Bundle bundle) {
            if (this.f71793d.m3119j() || this.f71793d.f71791d.getLayoutManager() == null) {
                return super.mo1680g(view, i, bundle);
            }
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                if (c26558a.mo1680g(view, i, bundle)) {
                    return true;
                }
            } else if (super.mo1680g(view, i, bundle)) {
                return true;
            }
            return this.f71793d.f71791d.getLayoutManager().performAccessibilityActionForItem(view, i, bundle);
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: h */
        public void mo1679h(View view, int i) {
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                c26558a.mo1679h(view, i);
            } else {
                this.f74411a.sendAccessibilityEvent(view, i);
            }
        }

        @Override // p1727n3.p1807k.p1821i.C26558a
        /* renamed from: i */
        public void mo1678i(View view, AccessibilityEvent accessibilityEvent) {
            C26558a c26558a = this.f71794e.get(view);
            if (c26558a != null) {
                c26558a.mo1678i(view, accessibilityEvent);
            } else {
                this.f74411a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        }
    }

    public C25623w(RecyclerView recyclerView) {
        this.f71791d = recyclerView;
        C25624a c25624a = this.f71792e;
        if (c25624a != null) {
            this.f71792e = c25624a;
        } else {
            this.f71792e = new C25624a(this);
        }
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: c */
    public void mo1511c(View view, AccessibilityEvent accessibilityEvent) {
        this.f74411a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || m3119j()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: d */
    public void mo1510d(View view, C26584b c26584b) {
        this.f74411a.onInitializeAccessibilityNodeInfo(view, c26584b.f74463a);
        if (m3119j() || this.f71791d.getLayoutManager() == null) {
            return;
        }
        this.f71791d.getLayoutManager().onInitializeAccessibilityNodeInfo(c26584b);
    }

    @Override // p1727n3.p1807k.p1821i.C26558a
    /* renamed from: g */
    public boolean mo1680g(View view, int i, Bundle bundle) {
        if (super.mo1680g(view, i, bundle)) {
            return true;
        }
        if (!m3119j() && this.f71791d.getLayoutManager() != null) {
            return this.f71791d.getLayoutManager().performAccessibilityAction(i, bundle);
        }
        return false;
    }

    /* renamed from: j */
    public boolean m3119j() {
        return this.f71791d.hasPendingAdapterUpdates();
    }
}
