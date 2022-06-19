package com.freshchat.consumer.sdk.p063m;

import android.view.View;
/* renamed from: com.freshchat.consumer.sdk.m.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/k.class */
public class RunnableC1788k implements Runnable {

    /* renamed from: cV */
    public final /* synthetic */ View f4645cV;

    /* renamed from: pf */
    public final /* synthetic */ C1787j f4646pf;

    public RunnableC1788k(C1787j c1787j, View view) {
        this.f4646pf = c1787j;
        this.f4645cV = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1782f m39593hB = this.f4646pf.m39593hB();
        if (m39593hB != null) {
            m39593hB.m39550R(this.f4645cV.getMeasuredHeight());
        }
    }
}
