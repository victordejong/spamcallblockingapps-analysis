package com.inmobi.ads;

import android.os.Handler;
import android.os.Message;
/* renamed from: com.inmobi.ads.q */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/q.class */
public final class HandlerC8301q extends Handler {

    /* renamed from: a */
    public InMobiBanner f32302a;

    public HandlerC8301q(InMobiBanner inMobiBanner) {
        this.f32302a = inMobiBanner;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (message.what == 1) {
            this.f32302a.m6723a(true);
        }
    }
}
