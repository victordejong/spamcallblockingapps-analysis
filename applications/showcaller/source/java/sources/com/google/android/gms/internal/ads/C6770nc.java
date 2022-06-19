package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* renamed from: com.google.android.gms.internal.ads.nc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nc.class */
public final class C6770nc extends Thread {

    /* renamed from: d */
    final /* synthetic */ AudioTrack f27073d;

    /* renamed from: e */
    final /* synthetic */ C6992tc f27074e;

    public C6770nc(C6992tc c6992tc, AudioTrack audioTrack) {
        this.f27074e = c6992tc;
        this.f27073d = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f27073d.flush();
            this.f27073d.release();
        } finally {
            conditionVariable = this.f27074e.f29918e;
            conditionVariable.open();
        }
    }
}
