package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p069ui.CarouselCardView;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.a.g */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/g.class */
public class C1329g extends RecyclerView.AbstractC0317g<C1330a> {
    private final Context context;
    private final List<MessageFragment> fragments;

    /* renamed from: lR */
    private final CarouselCardView.AbstractC1926a f3615lR;

    /* renamed from: com.freshchat.consumer.sdk.a.g$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/g$a.class */
    public class C1330a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: lT */
        private final CarouselCardView f3616lT;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1330a(CarouselCardView carouselCardView) {
            super(carouselCardView);
            C1329g.this = r4;
            this.f3616lT = carouselCardView;
        }
    }

    public C1329g(Context context, List<MessageFragment> list, CarouselCardView.AbstractC1926a abstractC1926a) {
        this.context = context;
        this.fragments = list;
        this.f3615lR = abstractC1926a;
    }

    /* renamed from: a */
    public void onBindViewHolder(C1330a c1330a, int i) {
        c1330a.f3616lT.setData((CarouselCardDefaultFragment) this.fragments.get(i));
    }

    /* renamed from: c */
    public C1330a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C1330a c1330a = new C1330a(new CarouselCardView(this.context));
        c1330a.f3616lT.setListener(this.f3615lR);
        return c1330a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C1716k.m39900b(this.fragments);
    }
}
