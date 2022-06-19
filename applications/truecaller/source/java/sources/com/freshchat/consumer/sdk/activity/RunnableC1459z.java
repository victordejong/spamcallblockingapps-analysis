package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.widget.Toast;
import com.freshchat.consumer.sdk.C1298R;
/* renamed from: com.freshchat.consumer.sdk.activity.z */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/z.class */
public class RunnableC1459z implements Runnable {

    /* renamed from: I */
    public final /* synthetic */ C1458y f4006I;

    public RunnableC1459z(C1458y c1458y) {
        this.f4006I = c1458y;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, com.freshchat.consumer.sdk.activity.ArticleDetailActivity] */
    @Override // java.lang.Runnable
    public void run() {
        Toast.makeText((Context) this.f4006I.f4005H.f4004F, C1298R.string.freshchat_faq_vote_successful, 1).show();
    }
}
