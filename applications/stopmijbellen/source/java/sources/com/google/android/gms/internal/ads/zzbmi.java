package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmi.class */
public final class zzbmi {
    private MotionEvent zza = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);
    private MotionEvent zzb = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);
    private final Context zzc;
    private final ScheduledExecutorService zzd;
    private final zzbmk zze;

    public zzbmi(Context context, ScheduledExecutorService scheduledExecutorService, zzbmk zzbmkVar, byte[] bArr) {
        this.zzc = context;
        this.zzd = scheduledExecutorService;
        this.zze = zzbmkVar;
    }

    public final zzfxa<String> zza() {
        return (zzfwh) zzfwq.zzo(zzfwh.zzw(zzfwq.zzi(null)), zzbmw.zzc.zze().longValue(), TimeUnit.MILLISECONDS, this.zzd);
    }

    public final void zzb(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && motionEvent.getEventTime() > this.zza.getEventTime()) {
            this.zza = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() != 0 || motionEvent.getEventTime() <= this.zzb.getEventTime()) {
        } else {
            this.zzb = MotionEvent.obtain(motionEvent);
        }
    }
}
