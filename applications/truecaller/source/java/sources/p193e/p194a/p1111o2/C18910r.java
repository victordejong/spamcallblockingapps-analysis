package p193e.p194a.p1111o2;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.AbstractC0313c0;
import e.m.d.y.n;
import s1.z.b.l;
/* renamed from: e.a.o2.r */
/* loaded from: classes4-dex2jar.jar:e/a/o2/r.class */
public final class C18910r<PV, ItemViewHolder extends RecyclerView.AbstractC0313c0> implements AbstractC18892a, AbstractC18893b<PV>, AbstractC18911s {

    /* renamed from: a */
    public boolean f53030a;

    /* renamed from: b */
    public final AbstractC18893b<PV> f53031b;

    /* renamed from: c */
    public final int f53032c;

    /* renamed from: d */
    public final l<View, ItemViewHolder> f53033d;

    /* renamed from: e */
    public final l<ItemViewHolder, PV> f53034e;

    /* renamed from: f */
    public final /* synthetic */ C18896e f53035f = new C18896e();

    /* JADX WARN: Multi-variable type inference failed */
    public C18910r(AbstractC18893b<? super PV> abstractC18893b, int i, l<? super View, ? extends ItemViewHolder> lVar, l<? super ItemViewHolder, ? extends PV> lVar2) {
        s1.z.c.l.e(abstractC18893b, "adapterPresenter");
        s1.z.c.l.e(lVar, "viewHolderFactory");
        s1.z.c.l.e(lVar2, "mapper");
        this.f53031b = abstractC18893b;
        this.f53032c = i;
        this.f53033d = lVar;
        this.f53034e = lVar2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(PV pv, int i) {
        this.f53031b.mo11464G(pv, i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: b */
    public void mo14331b(l<? super Integer, Integer> lVar) {
        s1.z.c.l.e(lVar, "unwrapper");
        this.f53035f.mo14331b(lVar);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: c */
    public void mo14342c(PV pv) {
        this.f53031b.mo14342c(pv);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: f */
    public C18913u mo14330f(AbstractC18892a abstractC18892a, AbstractC18912t abstractC18912t) {
        s1.z.c.l.e(abstractC18892a, "outerDelegate");
        s1.z.c.l.e(abstractC18912t, "wrapper");
        return n.D1(this, abstractC18892a, abstractC18912t);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public int getItemCount() {
        return !this.f53030a ? this.f53031b.getItemCount() : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public long getItemId(int i) {
        return this.f53031b.getItemId(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public int getItemViewType(int i) {
        return this.f53032c;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: j */
    public int mo14329j(int i) {
        return this.f53035f.mo14329j(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: o */
    public void mo14341o(PV pv) {
        this.f53031b.mo14341o(pv);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        s1.z.c.l.e(abstractC0313c0, "holder");
        this.f53031b.mo11464G(this.f53034e.d(abstractC0313c0), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        l<View, ItemViewHolder> lVar = this.f53033d;
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f53032c, viewGroup, false);
        s1.z.c.l.d(inflate, "LayoutInflater\n         …layoutRes, parent, false)");
        RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) lVar.d(inflate);
        this.f53031b.mo14340p(this.f53034e.d(abstractC0313c0));
        return abstractC0313c0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        s1.z.c.l.e(abstractC0313c0, "holder");
        this.f53031b.mo14342c(this.f53034e.d(abstractC0313c0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        s1.z.c.l.e(abstractC0313c0, "holder");
        this.f53031b.mo14339y(this.f53034e.d(abstractC0313c0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18892a
    public void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        s1.z.c.l.e(abstractC0313c0, "holder");
        this.f53031b.mo14341o(this.f53034e.d(abstractC0313c0));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: p */
    public void mo14340p(PV pv) {
        this.f53031b.mo14340p(pv);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: s */
    public int mo14328s(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18905m
    /* renamed from: t */
    public boolean mo14327t(C18900h c18900h) {
        s1.z.c.l.e(c18900h, "event");
        boolean z = false;
        if (c18900h.f53002b >= 0) {
            AbstractC18893b<PV> abstractC18893b = this.f53031b;
            AbstractC18893b<PV> abstractC18893b2 = abstractC18893b;
            if (!(abstractC18893b instanceof AbstractC18904l)) {
                abstractC18893b2 = null;
            }
            AbstractC18904l abstractC18904l = (AbstractC18904l) abstractC18893b2;
            z = false;
            if (abstractC18904l != null ? abstractC18904l.mo10026v(c18900h) : false) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: u */
    public void mo14326u(boolean z) {
        this.f53030a = z;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: v */
    public boolean mo14325v(int i) {
        return this.f53032c == i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: y */
    public void mo14339y(PV pv) {
        this.f53031b.mo14339y(pv);
    }
}
