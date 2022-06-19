package com.freshchat.consumer.sdk.p063m;

import com.freshchat.consumer.sdk.C1298R;
/* renamed from: com.freshchat.consumer.sdk.m.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/s.class */
public class RunnableC1796s implements Runnable {

    /* renamed from: pm */
    public final /* synthetic */ C1795r f4659pm;

    public RunnableC1796s(C1795r c1795r) {
        this.f4659pm = c1795r;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1782f m39593hB = this.f4659pm.f4658pl.m39593hB();
        if (m39593hB != null) {
            m39593hB.m39550R(this.f4659pm.f4658pl.getResources().getDimensionPixelSize(C1298R.dimen.freshchat_calendar_limited_timeslot_height));
        }
    }
}
