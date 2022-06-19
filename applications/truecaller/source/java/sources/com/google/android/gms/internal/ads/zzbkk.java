package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbkk.class */
public final class zzbkk {
    private MotionEvent zza = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);
    private MotionEvent zzb = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);
    private final Context zzc;
    private final ScheduledExecutorService zzd;
    private final zzbkm zze;

    public zzbkk(Context context, ScheduledExecutorService scheduledExecutorService, zzbkm zzbkmVar, byte[] bArr) {
        this.zzc = context;
        this.zzd = scheduledExecutorService;
        this.zze = zzbkmVar;
    }

    public final void zza(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.zza.getEventTime()) {
            this.zza = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.zzb.getEventTime()) {
        } else {
            this.zzb = MotionEvent.obtain(motionEvent);
        }
    }

    public final zzfsm<String> zzb() {
        return (zzfru) zzfsd.zzh(zzfru.zzw(zzfsd.zza(null)), zzbkx.zzc.zze().longValue(), TimeUnit.MILLISECONDS, this.zzd);
    }
}
