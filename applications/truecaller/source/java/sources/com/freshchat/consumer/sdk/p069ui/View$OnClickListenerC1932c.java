package com.freshchat.consumer.sdk.p069ui;

import android.view.View;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.p061k.C1745i;
import com.freshchat.consumer.sdk.p069ui.CarouselCardView;
/* renamed from: com.freshchat.consumer.sdk.ui.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/c.class */
public class View$OnClickListenerC1932c implements View.OnClickListener {

    /* renamed from: nP */
    public final /* synthetic */ CarouselCardView f4816nP;

    public View$OnClickListenerC1932c(CarouselCardView carouselCardView) {
        this.f4816nP = carouselCardView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1745i c1745i;
        CarouselCardView.AbstractC1926a abstractC1926a;
        CarouselCardView.AbstractC1926a abstractC1926a2;
        c1745i = this.f4816nP.f4790nO;
        CarouselCardDefaultFragment m39728hn = c1745i.m39728hn();
        abstractC1926a = this.f4816nP.f4781lR;
        if (abstractC1926a == null || m39728hn == null) {
            return;
        }
        abstractC1926a2 = this.f4816nP.f4781lR;
        abstractC1926a2.mo39300a(m39728hn);
    }
}
