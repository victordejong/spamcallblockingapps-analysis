package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.p057j.C1730v;
/* renamed from: com.freshchat.consumer.sdk.activity.aa */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/aa.class */
public class View$OnClickListenerC1393aa implements View.OnClickListener {

    /* renamed from: F */
    public final /* synthetic */ ArticleDetailActivity f3896F;

    public View$OnClickListenerC1393aa(ArticleDetailActivity articleDetailActivity) {
        this.f3896F = articleDetailActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        C1730v m41398r;
        z = this.f3896F.f3688y;
        if (z) {
            this.f3896F.finish();
        } else {
            m41398r = this.f3896F.m41398r();
            m41398r.m39810aE();
        }
        this.f3896F.m41403l();
    }
}
