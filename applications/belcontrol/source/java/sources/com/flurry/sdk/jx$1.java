package com.flurry.sdk;

import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jx$1.class */
public final class jx$1 extends TimerTask {

    /* renamed from: a */
    public final /* synthetic */ jx f3425a;

    public jx$1(jx jxVar) {
        this.f3425a = jxVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (jx.a(this.f3425a) <= 0 || jx.a(this.f3425a) >= System.currentTimeMillis()) {
            return;
        }
        C0478ku.m4596a(4, jx.h(), "No location received in 90 seconds , stopping LocationManager");
        jx.b(this.f3425a);
    }
}
