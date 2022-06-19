package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzoa;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjy.class */
public final class zzjy {
    public final /* synthetic */ zzjz zza;

    public zzjy(zzjz zzjzVar) {
        this.zza = zzjzVar;
    }

    public final void zza() {
        this.zza.zzg();
        if (this.zza.zzs.zzd().zzl(this.zza.zzs.zzay().currentTimeMillis())) {
            this.zza.zzs.zzd().zzg.zzb(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            C0608b.m7623l(this.zza.zzs, "Detected application was in foreground");
            zzc(this.zza.zzs.zzay().currentTimeMillis(), false);
        }
    }

    public final void zzb(long j, boolean z) {
        this.zza.zzg();
        this.zza.zzl();
        if (this.zza.zzs.zzd().zzl(j)) {
            this.zza.zzs.zzd().zzg.zzb(true);
        }
        this.zza.zzs.zzd().zzj.zzb(j);
        if (this.zza.zzs.zzd().zzg.zza()) {
            zzc(j, z);
        }
    }

    @VisibleForTesting
    public final void zzc(long j, boolean z) {
        this.zza.zzg();
        if (!this.zza.zzs.zzF()) {
            return;
        }
        this.zza.zzs.zzd().zzj.zzb(j);
        this.zza.zzs.zzau().zzk().zzb("Session started, time", Long.valueOf(this.zza.zzs.zzay().elapsedRealtime()));
        Long valueOf = Long.valueOf(j / 1000);
        this.zza.zzs.zzk().zzB("auto", "_sid", valueOf, j);
        this.zza.zzs.zzd().zzg.zzb(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (this.zza.zzs.zzc().zzn(null, zzea.zzah) && z) {
            bundle.putLong("_aib", 1L);
        }
        this.zza.zzs.zzk().zzt("auto", "_s", j, bundle);
        zzoa.zzb();
        if (!this.zza.zzs.zzc().zzn(null, zzea.zzam)) {
            return;
        }
        String zza = this.zza.zzs.zzd().zzo.zza();
        if (TextUtils.isEmpty(zza)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", zza);
        this.zza.zzs.zzk().zzt("auto", "_ssr", j, bundle2);
    }
}
