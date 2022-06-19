package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzll;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjp.class */
public final class zzjp {
    final /* synthetic */ zzjq zza;

    public zzjp(zzjq zzjqVar) {
        this.zza = zzjqVar;
    }

    public final void zza() {
        this.zza.zzg();
        if (this.zza.zzx.zzd().zzl(this.zza.zzx.zzax().currentTimeMillis())) {
            this.zza.zzx.zzd().zzl.zzb(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            this.zza.zzx.zzat().zzk().zza("Detected application was in foreground");
            zzc(this.zza.zzx.zzax().currentTimeMillis(), false);
        }
    }

    public final void zzb(long j, boolean z) {
        this.zza.zzg();
        this.zza.zzl();
        if (this.zza.zzx.zzd().zzl(j)) {
            this.zza.zzx.zzd().zzl.zzb(true);
        }
        this.zza.zzx.zzd().zzo.zzb(j);
        if (this.zza.zzx.zzd().zzl.zza()) {
            zzc(j, z);
        }
    }

    final void zzc(long j, boolean z) {
        this.zza.zzg();
        if (!this.zza.zzx.zzF()) {
            return;
        }
        this.zza.zzx.zzd().zzo.zzb(j);
        this.zza.zzx.zzat().zzk().zzb("Session started, time", Long.valueOf(this.zza.zzx.zzax().elapsedRealtime()));
        Long valueOf = Long.valueOf(j / 1000);
        this.zza.zzx.zzk().zzB("auto", "_sid", valueOf, j);
        this.zza.zzx.zzd().zzl.zzb(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.zza.zzx.zzc().zzn(null, zzdw.zzai) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.zza.zzx.zzk().zzt("auto", "_s", j, bundle);
        zzll.zzb();
        if (!this.zza.zzx.zzc().zzn(null, zzdw.zzan)) {
            return;
        }
        String zza = this.zza.zzx.zzd().zzt.zza();
        if (TextUtils.isEmpty(zza)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", zza);
        this.zza.zzx.zzk().zzt("auto", "_ssr", j, bundle2);
    }
}
