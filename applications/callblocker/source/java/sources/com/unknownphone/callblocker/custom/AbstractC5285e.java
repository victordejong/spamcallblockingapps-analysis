package com.unknownphone.callblocker.custom;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.unknownphone.callblocker.custom.e */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/e.class */
public abstract class AbstractC5285e extends RecyclerView.AbstractC0934n {

    /* renamed from: a */
    private LinearLayoutManager f22141a;

    /* renamed from: b */
    private int f22142b = 0;

    public AbstractC5285e(LinearLayoutManager linearLayoutManager) {
        this.f22141a = linearLayoutManager;
    }

    /* renamed from: a */
    public abstract void mo997a();

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0934n
    /* renamed from: a */
    public void mo1098a(RecyclerView recyclerView, int i, int i2) {
        super.mo1098a(recyclerView, i, i2);
        if (i2 <= 0) {
            return;
        }
        if (this.f22141a.m18910y() + this.f22141a.m19074o() + this.f22142b < this.f22141a.m19003I()) {
            return;
        }
        mo997a();
    }
}
