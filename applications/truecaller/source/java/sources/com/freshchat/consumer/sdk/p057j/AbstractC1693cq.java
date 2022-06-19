package com.freshchat.consumer.sdk.p057j;

import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1744b0.p1745a.AbstractC25617q;
/* renamed from: com.freshchat.consumer.sdk.j.cq */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cq.class */
public abstract class AbstractC1693cq implements AbstractC25617q {

    /* renamed from: lo */
    private final RecyclerView.AbstractC0317g f4485lo;

    public AbstractC1693cq(RecyclerView.AbstractC0317g abstractC0317g) {
        this.f4485lo = abstractC0317g;
    }

    /* renamed from: ht */
    public abstract void mo39993ht();

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onChanged(int i, int i2, Object obj) {
        this.f4485lo.notifyItemRangeChanged(i, i2, obj);
        mo39993ht();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onInserted(int i, int i2) {
        this.f4485lo.notifyItemRangeInserted(i, i2);
        mo39993ht();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onMoved(int i, int i2) {
        this.f4485lo.notifyItemMoved(i, i2);
        mo39993ht();
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onRemoved(int i, int i2) {
        this.f4485lo.notifyItemRangeRemoved(i, i2);
        mo39993ht();
    }
}
