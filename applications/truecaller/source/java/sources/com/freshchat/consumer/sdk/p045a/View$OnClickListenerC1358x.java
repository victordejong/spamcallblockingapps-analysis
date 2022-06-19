package com.freshchat.consumer.sdk.p045a;

import android.view.View;
import com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment;
import com.freshchat.consumer.sdk.p045a.C1355w;
/* renamed from: com.freshchat.consumer.sdk.a.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/x.class */
public class View$OnClickListenerC1358x implements View.OnClickListener {

    /* renamed from: jC */
    public final /* synthetic */ StaticTemplateFragment f3661jC;

    /* renamed from: jD */
    public final /* synthetic */ C1355w f3662jD;

    public View$OnClickListenerC1358x(C1355w c1355w, StaticTemplateFragment staticTemplateFragment) {
        this.f3662jD = c1355w;
        this.f3661jC = staticTemplateFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1355w.AbstractC1357b abstractC1357b;
        String str;
        abstractC1357b = this.f3662jD.f3657jA;
        StaticTemplateFragment staticTemplateFragment = this.f3661jC;
        str = this.f3662jD.f3658jB;
        abstractC1357b.mo39967a(view, staticTemplateFragment, str);
    }
}
