package com.freshchat.consumer.sdk.activity;

import com.freshchat.consumer.sdk.p057j.C1646be;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.activity.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/j.class */
public class RunnableC1443j implements Runnable {

    /* renamed from: al */
    public final /* synthetic */ CategoryListActivity f3978al;

    public RunnableC1443j(CategoryListActivity categoryListActivity) {
        this.f3978al = categoryListActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList m41340e;
        CategoryListActivity categoryListActivity = this.f3978al;
        m41340e = categoryListActivity.m41340e(categoryListActivity.f3727ah);
        C1646be.m40116eC().m40115gF().execute(new RunnableC1444k(this, m41340e));
    }
}
