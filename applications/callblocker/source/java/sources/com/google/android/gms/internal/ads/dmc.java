package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmc.class */
public final class dmc extends Thread {

    /* renamed from: a */
    private final /* synthetic */ AudioTrack f14712a;

    /* renamed from: b */
    private final /* synthetic */ dmd f14713b;

    public dmc(dmd dmdVar, AudioTrack audioTrack) {
        this.f14713b = dmdVar;
        this.f14712a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f14712a.flush();
            this.f14712a.release();
        } finally {
            conditionVariable = this.f14713b.f14753h;
            conditionVariable.open();
        }
    }
}
