package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaok.class */
public final class zzaok extends Thread {
    public final /* synthetic */ AudioTrack zza;
    public final /* synthetic */ zzaot zzb;

    public zzaok(zzaot zzaotVar, AudioTrack audioTrack) {
        this.zzb = zzaotVar;
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
