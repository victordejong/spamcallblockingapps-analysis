package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcla.class */
public abstract class zzcla implements Releasable {
    public final Context zza;
    public final String zzb;
    public final WeakReference<zzcjb> zzc;

    public zzcla(zzcjb zzcjbVar) {
        Context context = zzcjbVar.getContext();
        this.zza = context;
        this.zzb = zzt.zzc().zzi(context, zzcjbVar.zzt().zza);
        this.zzc = new WeakReference<>(zzcjbVar);
    }

    public static /* synthetic */ void zzs(zzcla zzclaVar, String str, Map map) {
        zzcjb zzcjbVar = zzclaVar.zzc.get();
        if (zzcjbVar != null) {
            zzcjbVar.zze("onPrecacheEvent", map);
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    public abstract boolean zzd(String str);

    public boolean zze(String str, String[] strArr) {
        return zzd(str);
    }

    public boolean zzf(String str, String[] strArr, zzcks zzcksVar) {
        return zzd(str);
    }

    public void zzg(int i) {
    }

    public void zzh(int i) {
    }

    public void zzi(int i) {
    }

    public void zzl(int i) {
    }

    public abstract void zzm();

    @VisibleForTesting
    public final void zzn(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzcgm.zza.post(new zzckv(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    @VisibleForTesting
    public final void zzo(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzcgm.zza.post(new zzckw(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void zzp(String str, String str2, int i) {
        zzcgm.zza.post(new zzckx(this, str, str2, i));
    }

    @VisibleForTesting
    public final void zzq(String str, String str2, long j) {
        zzcgm.zza.post(new zzcky(this, str, str2, j));
    }

    @VisibleForTesting
    public final void zzr(String str, String str2, String str3, String str4) {
        zzcgm.zza.post(new zzckz(this, str, str2, str3, str4));
    }
}
