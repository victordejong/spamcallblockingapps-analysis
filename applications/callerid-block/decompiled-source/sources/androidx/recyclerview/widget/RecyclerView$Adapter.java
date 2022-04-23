package androidx.recyclerview.widget;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView$a0;
import d.h.i.b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Adapter.class */
public abstract class RecyclerView$Adapter<VH extends RecyclerView$a0> {

    /* renamed from: a */
    private final RecyclerView$g f2182a = new RecyclerView$g();

    /* renamed from: b */
    private boolean f2183b = false;

    /* renamed from: c */
    private StateRestorationPolicy f2184c = StateRestorationPolicy.ALLOW;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy.class */
    public enum StateRestorationPolicy {
        ALLOW,
        PREVENT_WHEN_EMPTY,
        PREVENT
    }

    /* renamed from: c */
    public final void m12841c(VH vh, int i) {
        boolean z = vh.f2213s == null;
        if (z) {
            vh.f2197c = i;
            if (m12834j()) {
                vh.f2199e = m12837g(i);
            }
            vh.m12808F(1, 519);
            b.a("RV OnBindView");
        }
        vh.f2213s = this;
        m12830n(vh, i, vh.m12787o());
        if (z) {
            vh.m12798d();
            ViewGroup.LayoutParams layoutParams = vh.f2195a.getLayoutParams();
            if (layoutParams instanceof RecyclerView$LayoutParams) {
                ((RecyclerView$LayoutParams) layoutParams).f2191c = true;
            }
            b.b();
        }
    }

    /* renamed from: d */
    boolean m12840d() {
        int i = RecyclerView$f.f2214a[this.f2184c.ordinal()];
        boolean z = false;
        if (i != 1) {
            if (i != 2) {
                return true;
            }
            z = false;
            if (m12838f() > 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: e */
    public final VH m12839e(ViewGroup viewGroup, int i) {
        try {
            b.a("RV CreateView");
            VH o = m12829o(viewGroup, i);
            if (o.f2195a.getParent() == null) {
                o.f2200f = i;
                b.b();
                return o;
            }
            throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
        } catch (Throwable th) {
            b.b();
            throw th;
        }
    }

    /* renamed from: f */
    public abstract int m12838f();

    /* renamed from: g */
    public long m12837g(int i) {
        return -1L;
    }

    /* renamed from: h */
    public int m12836h(int i) {
        return 0;
    }

    /* renamed from: i */
    public final boolean m12835i() {
        return this.f2182a.m12775a();
    }

    /* renamed from: j */
    public final boolean m12834j() {
        return this.f2183b;
    }

    /* renamed from: k */
    public final void m12833k() {
        this.f2182a.m12774b();
    }

    /* renamed from: l */
    public void m12832l(RecyclerView recyclerView) {
    }

    /* renamed from: m */
    public abstract void m12831m(VH vh, int i);

    /* renamed from: n */
    public void m12830n(VH vh, int i, List<Object> list) {
        m12831m(vh, i);
    }

    /* renamed from: o */
    public abstract VH m12829o(ViewGroup viewGroup, int i);

    /* renamed from: p */
    public void m12828p(RecyclerView recyclerView) {
    }

    /* renamed from: q */
    public boolean m12827q(VH vh) {
        return false;
    }

    /* renamed from: r */
    public void m12826r(VH vh) {
    }

    /* renamed from: s */
    public void m12825s(VH vh) {
    }

    /* renamed from: t */
    public void m12824t(VH vh) {
    }

    /* renamed from: u */
    public void m12823u(RecyclerView$h recyclerView$h) {
        this.f2182a.registerObserver(recyclerView$h);
    }

    /* renamed from: v */
    public void m12822v(boolean z) {
        if (!m12835i()) {
            this.f2183b = z;
            return;
        }
        throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
    }

    /* renamed from: w */
    public void m12821w(RecyclerView$h recyclerView$h) {
        this.f2182a.unregisterObserver(recyclerView$h);
    }
}
