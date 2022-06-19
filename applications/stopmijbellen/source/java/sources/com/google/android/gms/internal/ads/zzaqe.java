package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqe.class */
public final class zzaqe extends Thread {
    public final /* synthetic */ AudioTrack zza;
    public final /* synthetic */ zzaqo zzb;

    public zzaqe(zzaqo zzaqoVar, AudioTrack audioTrack) {
        this.zzb = zzaqoVar;
        this.zza = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.zza.flush();
            this.zza.release();
        } finally {
            conditionVariable = this.zzb.zze;
            conditionVariable.open();
        }
    }
}
