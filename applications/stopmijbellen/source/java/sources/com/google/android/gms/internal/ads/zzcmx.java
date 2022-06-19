package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmx.class */
public final class zzcmx extends zzb {
    public final zzclh zza;
    public final zzcnf zzb;
    private final String zzc;
    private final String[] zzd;

    public zzcmx(zzclh zzclhVar, zzcnf zzcnfVar, String str, String[] strArr) {
        this.zza = zzclhVar;
        this.zzb = zzcnfVar;
        this.zzc = str;
        this.zzd = strArr;
        zzt.zzy().zzb(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.zzb.zzr(this.zzc, this.zzd);
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcmw(this));
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcmw(this));
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final zzfxa<?> zzb() {
        return (!((Boolean) zzbgq.zzc().zzb(zzblj.zzbu)).booleanValue() || !(this.zzb instanceof zzcno)) ? super.zzb() : zzcjm.zze.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcmv
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzcmx.this.zzd();
            }
        });
    }

    public final /* synthetic */ Boolean zzd() throws Exception {
        return Boolean.valueOf(this.zzb.zzs(this.zzc, this.zzd, this));
    }

    public final String zze() {
        return this.zzc;
    }
}
