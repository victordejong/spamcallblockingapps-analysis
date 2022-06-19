package p193e.p194a.p1111o2;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.o2.f */
/* loaded from: classes4-dex2jar.jar:e/a/o2/f.class */
public final class C18898f extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> implements AbstractC18892a {

    /* renamed from: a */
    public final AbstractC18892a f52999a;

    public C18898f(AbstractC18892a abstractC18892a) {
        l.e(abstractC18892a, "adapterDelegate");
        this.f52999a = abstractC18892a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: b */
    public void mo14331b(s1.z.b.l<? super Integer, Integer> lVar) {
        l.e(lVar, "unwrapper");
        this.f52999a.mo14331b(lVar);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: f */
    public C18913u mo14330f(AbstractC18892a abstractC18892a, AbstractC18912t abstractC18912t) {
        l.e(abstractC18892a, "outerDelegate");
        l.e(abstractC18912t, "wrapper");
        return this.f52999a.mo14330f(abstractC18892a, abstractC18912t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f52999a.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return this.f52999a.getItemId(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f52999a.getItemViewType(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18911s
    /* renamed from: j */
    public int mo14329j(int i) {
        return this.f52999a.mo14329j(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        this.f52999a.onBindViewHolder(abstractC0313c0, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        return this.f52999a.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        this.f52999a.onViewAttachedToWindow(abstractC0313c0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        this.f52999a.onViewDetachedFromWindow(abstractC0313c0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        l.e(abstractC0313c0, "holder");
        this.f52999a.onViewRecycled(abstractC0313c0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: s */
    public int mo14328s(int i) {
        return this.f52999a.mo14328s(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18905m
    /* renamed from: t */
    public boolean mo14327t(C18900h c18900h) {
        l.e(c18900h, "event");
        return this.f52999a.mo14327t(c18900h);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: u */
    public void mo14326u(boolean z) {
        this.f52999a.mo14326u(z);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18892a
    /* renamed from: v */
    public boolean mo14325v(int i) {
        return this.f52999a.mo14325v(i);
    }
}
