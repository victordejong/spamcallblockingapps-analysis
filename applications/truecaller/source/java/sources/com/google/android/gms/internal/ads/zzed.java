package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzed.class */
public final class zzed extends Thread {
    public final /* synthetic */ AudioTrack zza;
    public final /* synthetic */ zzen zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzed(zzen zzenVar, String str, AudioTrack audioTrack) {
        super("ExoPlayer:AudioTrackReleaseThread");
        this.zzb = zzenVar;
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
