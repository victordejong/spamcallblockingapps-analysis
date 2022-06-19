package com.freshchat.consumer.sdk.p045a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.p053f.AbstractC1539e;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.service.Status;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/s.class */
public class C1349s extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

    /* renamed from: qO */
    private final AbstractC1354v f3647qO;

    /* renamed from: qQ */
    private final List<FAQ> f3648qQ;

    /* renamed from: qR */
    private final AbstractC1351b f3649qR;

    /* renamed from: com.freshchat.consumer.sdk.a.s$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/s$a.class */
    public static class C1350a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: cg */
        private TextView f3650cg;

        public C1350a(View view) {
            super(view);
            this.f3650cg = (TextView) view.findViewById(C1298R.C1300id.freshchat_article_listitem_title);
        }

        /* renamed from: iI */
        public TextView m41438iI() {
            return this.f3650cg;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.s$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/s$b.class */
    public interface AbstractC1351b {
        /* renamed from: d */
        void mo41076d(View view, int i);
    }

    public C1349s(List<FAQ> list, AbstractC1351b abstractC1351b, AbstractC1539e abstractC1539e) {
        this.f3648qQ = list;
        this.f3649qR = abstractC1351b;
        this.f3647qO = new C1352t(this, this, abstractC1539e, list);
    }

    /* renamed from: W */
    private FAQ m41440W(int i) {
        if (C1716k.m39902a(this.f3648qQ)) {
            return this.f3648qQ.get(i);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f3647qO.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f3647qO.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if (!(abstractC0313c0 instanceof C1350a)) {
            this.f3647qO.onBindViewHolder(abstractC0313c0, i);
            return;
        }
        FAQ m41440W = m41440W(i);
        if (m41440W == null) {
            return;
        }
        String title = m41440W.getTitle();
        C1350a c1350a = (C1350a) abstractC0313c0;
        c1350a.m41438iI().setText(title);
        c1350a.m41438iI().setOnClickListener(new View$OnClickListenerC1353u(this, i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return i == 0 ? new C1350a(LayoutInflater.from(viewGroup.getContext()).inflate(C1298R.layout.freshchat_listitem_article, viewGroup, false)) : this.f3647qO.onCreateViewHolder(viewGroup, i);
    }

    public void setStatus(Status status) {
        this.f3647qO.setStatus(status);
    }
}
