package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.service.p067d.C1867b;
/* renamed from: com.freshchat.consumer.sdk.activity.af */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/af.class */
public class View$OnClickListenerC1398af implements View.OnClickListener {

    /* renamed from: ae */
    public final /* synthetic */ ArticleListActivity f3901ae;

    public View$OnClickListenerC1398af(ArticleListActivity articleListActivity) {
        this.f3901ae = articleListActivity;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1730v m41367r;
        m41367r = this.f3901ae.m41367r();
        m41367r.m39810aE();
        new C1867b(this.f3901ae.getApplicationContext(), C1867b.EnumC1868a.channels_launch).m39394g("source", "contact_us").m39395dB();
    }
}
