package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeuy.class */
public final class zzeuy implements zzevn<zzeuz> {
    private final zzchh zza;
    private final zzfxb zzb;
    private final Context zzc;

    public zzeuy(zzchh zzchhVar, zzfxb zzfxbVar, Context context) {
        this.zza = zzchhVar;
        this.zzb = zzfxbVar;
        this.zzc = context;
    }

    public final /* synthetic */ zzeuz zza() throws Exception {
        Long l;
        if (!this.zza.zzu(this.zzc)) {
            return new zzeuz(null, null, null, null, null);
        }
        String zze = this.zza.zze(this.zzc);
        if (zze == null) {
            zze = "";
        }
        String zzc = this.zza.zzc(this.zzc);
        if (zzc == null) {
            zzc = "";
        }
        String zza = this.zza.zza(this.zzc);
        if (zza == null) {
            zza = "";
        }
        String zzb = this.zza.zzb(this.zzc);
        if (zzb == null) {
            zzb = "";
        }
        if ("TIME_OUT".equals(zzc)) {
            l = (Long) zzbgq.zzc().zzb(zzblj.zzaa);
        } else {
            l = null;
        }
        return new zzeuz(zze, zzc, zza, zzb, l);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeuz> zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeux
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeuy.this.zza();
            }
        });
    }
}
