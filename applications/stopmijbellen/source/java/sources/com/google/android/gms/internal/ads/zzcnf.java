package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnf.class */
public abstract class zzcnf implements Releasable {
    public final Context zza;
    public final String zzb;
    public final WeakReference<zzclh> zzc;

    public zzcnf(zzclh zzclhVar) {
        Context context = zzclhVar.getContext();
        this.zza = context;
        this.zzb = zzt.zzp().zzd(context, zzclhVar.zzp().zza);
        this.zzc = new WeakReference<>(zzclhVar);
    }

    public static /* bridge */ /* synthetic */ void zza(zzcnf zzcnfVar, String str, Map map) {
        zzclh zzclhVar = zzcnfVar.zzc.get();
        if (zzclhVar != null) {
            zzclhVar.zzd("onPrecacheEvent", map);
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    public abstract void zzb();

    @VisibleForTesting
    public final void zzc(String str, String str2, String str3, String str4) {
        zzcis.zza.post(new zzcne(this, str, str2, str3, str4));
    }

    public final void zzd(String str, String str2, int i) {
        zzcis.zza.post(new zzcnc(this, str, str2, i));
    }

    @VisibleForTesting
    public final void zze(String str, String str2, long j) {
        zzcis.zza.post(new zzcnd(this, str, str2, j));
    }

    @VisibleForTesting
    public final void zzf(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzcis.zza.post(new zzcnb(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    @VisibleForTesting
    public final void zzg(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzcis.zza.post(new zzcna(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    public void zzh(int i) {
    }

    public void zzn(int i) {
    }

    public void zzo(int i) {
    }

    public void zzp(int i) {
    }

    public abstract boolean zzq(String str);

    public boolean zzr(String str, String[] strArr) {
        return zzq(str);
    }

    public boolean zzs(String str, String[] strArr, zzcmx zzcmxVar) {
        return zzq(str);
    }
}
