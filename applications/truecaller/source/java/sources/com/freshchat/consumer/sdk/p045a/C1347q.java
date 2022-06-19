package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.beans.ICategory;
import com.freshchat.consumer.sdk.p045a.C1310b;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.service.Status;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.q */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/q.class */
public class C1347q<T extends ICategory> extends C1310b<T> {

    /* renamed from: qO */
    private final AbstractC1354v f3645qO;

    public C1347q(Context context, List<T> list, boolean z, C1310b.AbstractC1312a abstractC1312a, AbstractC1539e abstractC1539e) {
        super(context, list, z, abstractC1312a);
        this.f3645qO = new C1348r(this, this, abstractC1539e);
    }

    @Override // com.freshchat.consumer.sdk.p045a.C1310b, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f3645qO.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f3645qO.getItemViewType(i);
    }

    @Override // com.freshchat.consumer.sdk.p045a.C1310b, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if (abstractC0313c0 instanceof C1310b.C1313b) {
            super.onBindViewHolder(abstractC0313c0, i);
        } else {
            this.f3645qO.onBindViewHolder(abstractC0313c0, i);
        }
    }

    @Override // com.freshchat.consumer.sdk.p045a.C1310b, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i == 0 ? super.onCreateViewHolder(viewGroup, i) : this.f3645qO.onCreateViewHolder(viewGroup, i);
    }

    public void setStatus(Status status) {
        this.f3645qO.setStatus(status);
    }
}
