package com.freshchat.consumer.sdk.activity;

import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
/* renamed from: com.freshchat.consumer.sdk.activity.y */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/y.class */
public class C1458y implements AbstractC1804a {

    /* renamed from: H */
    public final /* synthetic */ View$OnClickListenerC1457x f4005H;

    public C1458y(View$OnClickListenerC1457x view$OnClickListenerC1457x) {
        this.f4005H = view$OnClickListenerC1457x;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.freshchat.consumer.sdk.activity.ArticleDetailActivity, android.app.Activity] */
    @Override // com.freshchat.consumer.sdk.service.AbstractC1804a
    /* renamed from: a */
    public void mo39382a(AbstractC1907k abstractC1907k) {
        this.f4005H.f4004F.f3686w = true;
        String unused = ArticleDetailActivity.f3667z = null;
        this.f4005H.f4004F.runOnUiThread(new RunnableC1459z(this));
    }
}
