package com.freshchat.consumer.sdk.activity;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: com.freshchat.consumer.sdk.activity.ae */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ae.class */
public class C1397ae implements AdapterView.OnItemClickListener {

    /* renamed from: ae */
    public final /* synthetic */ ArticleListActivity f3900ae;

    public C1397ae(ArticleListActivity articleListActivity) {
        this.f3900ae = articleListActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f3900ae.m41395a(j);
    }
}
