package com.p051a.p052a.p053a.p054a.p055a;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.AbstractC0977w;
import com.p051a.p052a.p053a.p054a.p055a.C1103c;
import com.p051a.p052a.p053a.p054a.p059d.C1156b;
import java.util.Collections;
import java.util.List;
/* renamed from: com.a.a.a.a.a.e */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/e.class */
public class C1106e<VH extends RecyclerView.AbstractC0977w> extends RecyclerView.AbstractC0945a<VH> implements C1103c.AbstractC1104a, AbstractC1109h<VH> {

    /* renamed from: a */
    protected static final List<Object> f3495a = Collections.emptyList();

    /* renamed from: b */
    private RecyclerView.AbstractC0945a<VH> f3496b;

    /* renamed from: c */
    private C1103c f3497c;

    public C1106e(RecyclerView.AbstractC0945a<VH> abstractC0945a) {
        this.f3496b = abstractC0945a;
        this.f3497c = new C1103c(this, this.f3496b, null);
        this.f3496b.registerAdapterDataObserver(this.f3497c);
        super.setHasStableIds(this.f3496b.hasStableIds());
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1109h
    /* renamed from: a */
    public int mo4239a(C1102b c1102b, int i) {
        if (c1102b.f3490a == m4247b()) {
            return i;
        }
        return -1;
    }

    /* renamed from: a */
    public void mo4115a(int i, int i2) {
        notifyItemRangeChanged(i, i2);
    }

    /* renamed from: a */
    public void mo4114a(int i, int i2, int i3) {
        if (i3 == 1) {
            notifyItemMoved(i, i2);
            return;
        }
        throw new IllegalStateException("itemCount should be always 1  (actual: " + i3 + ")");
    }

    /* renamed from: a */
    protected void m4252a(int i, int i2, Object obj) {
        notifyItemRangeChanged(i, i2, obj);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: a */
    public final void mo4251a(RecyclerView.AbstractC0945a abstractC0945a, Object obj) {
        mo4107c();
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: a */
    public final void mo4250a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2) {
        mo4115a(i, i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: a */
    public final void mo4249a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2, int i3) {
        mo4114a(i, i2, i3);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: a */
    public final void mo4248a(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2, Object obj2) {
        m4252a(i, i2, obj2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g
    /* renamed from: a */
    public void mo4242a(VH vh, int i) {
        if (m4253a()) {
            C1156b.m3936c(this.f3496b, vh, i);
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1109h
    /* renamed from: a */
    public void mo4238a(C1107f c1107f, int i) {
        c1107f.f3498a = m4247b();
        c1107f.f3500c = i;
    }

    /* renamed from: a */
    public boolean m4253a() {
        return this.f3496b != null;
    }

    /* renamed from: b */
    public RecyclerView.AbstractC0945a<VH> m4247b() {
        return this.f3496b;
    }

    /* renamed from: b */
    public void mo4109b(int i, int i2) {
        notifyItemRangeInserted(i, i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: b */
    public final void mo4246b(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2) {
        mo4109b(i, i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g
    /* renamed from: b */
    public void mo4241b(VH vh, int i) {
        if (m4253a()) {
            C1156b.m3935d(this.f3496b, vh, i);
        }
    }

    /* renamed from: c */
    public void mo4107c() {
        notifyDataSetChanged();
    }

    /* renamed from: c */
    public void mo4106c(int i, int i2) {
        notifyItemRangeRemoved(i, i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.C1103c.AbstractC1104a
    /* renamed from: c */
    public final void mo4245c(RecyclerView.AbstractC0945a abstractC0945a, Object obj, int i, int i2) {
        mo4106c(i, i2);
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g
    /* renamed from: c */
    public void mo4105c(VH vh, int i) {
        if (m4253a()) {
            C1156b.m3938a(this.f3496b, vh, i);
        }
    }

    @Override // com.p051a.p052a.p053a.p054a.p055a.AbstractC1108g
    /* renamed from: d */
    public boolean mo4240d(VH vh, int i) {
        if (m4253a() ? C1156b.m3937b(this.f3496b, vh, i) : false) {
            return true;
        }
        return super.onFailedToRecycleView(vh);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemCount() {
        return m4253a() ? this.f3496b.getItemCount() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public long getItemId(int i) {
        return this.f3496b.getItemId(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public int getItemViewType(int i) {
        return this.f3496b.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        if (m4253a()) {
            this.f3496b.onAttachedToRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(VH vh, int i) {
        onBindViewHolder(vh, i, f3495a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onBindViewHolder(VH vh, int i, List<Object> list) {
        if (m4253a()) {
            this.f3496b.onBindViewHolder(vh, i, list);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.f3496b.onCreateViewHolder(viewGroup, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        if (m4253a()) {
            this.f3496b.onDetachedFromRecyclerView(recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public boolean onFailedToRecycleView(VH vh) {
        return mo4240d(vh, vh.getItemViewType());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onViewAttachedToWindow(VH vh) {
        mo4242a((C1106e<VH>) vh, vh.getItemViewType());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onViewDetachedFromWindow(VH vh) {
        mo4241b((C1106e<VH>) vh, vh.getItemViewType());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void onViewRecycled(VH vh) {
        mo4105c((C1106e<VH>) vh, vh.getItemViewType());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0945a
    public void setHasStableIds(boolean z) {
        super.setHasStableIds(z);
        if (m4253a()) {
            this.f3496b.setHasStableIds(z);
        }
    }
}
