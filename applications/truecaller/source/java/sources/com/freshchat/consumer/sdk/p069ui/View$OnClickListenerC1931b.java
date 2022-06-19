package com.freshchat.consumer.sdk.p069ui;

import android.content.Context;
import android.view.View;
import com.freshchat.consumer.sdk.p061k.C1745i;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
/* renamed from: com.freshchat.consumer.sdk.ui.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/b.class */
public class View$OnClickListenerC1931b implements View.OnClickListener {

    /* renamed from: nP */
    public final /* synthetic */ CarouselCardView f4815nP;

    public View$OnClickListenerC1931b(CarouselCardView carouselCardView) {
        this.f4815nP = carouselCardView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1745i c1745i;
        C1745i c1745i2;
        Context context = this.f4815nP.getContext();
        c1745i = this.f4815nP.f4790nO;
        DeepLinkUtils.m39281b(context, c1745i.m39725hq());
        c1745i2 = this.f4815nP.f4790nO;
        c1745i2.m39723hs();
    }
}
