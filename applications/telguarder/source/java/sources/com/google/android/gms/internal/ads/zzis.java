package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzis.class */
public final class zzis extends Thread {
    private final /* synthetic */ AudioTrack zzajp;
    private final /* synthetic */ zzit zzajq;

    public zzis(zzit zzitVar, AudioTrack audioTrack) {
        this.zzajq = zzitVar;
        this.zzajp = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.zzajp.flush();
            this.zzajp.release();
        } finally {
            conditionVariable = this.zzajq.zzajy;
            conditionVariable.open();
        }
    }
}
