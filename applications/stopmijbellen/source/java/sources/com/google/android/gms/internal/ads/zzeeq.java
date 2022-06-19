package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeq.class */
public final class zzeeq {
    private final zzfxb zza;
    private final zzedx zzb;
    private final zzgpl<zzefh> zzc;

    public zzeeq(zzfxb zzfxbVar, zzedx zzedxVar, zzgpl<zzefh> zzgplVar) {
        this.zza = zzfxbVar;
        this.zzb = zzedxVar;
        this.zzc = zzgplVar;
    }

    private final <RetT> zzfxa<RetT> zzg(final zzcdq zzcdqVar, zzeep<InputStream> zzeepVar, final zzeep<InputStream> zzeepVar2, final zzfvx<InputStream, RetT> zzfvxVar) {
        String str = zzcdqVar.zzd;
        zzt.zzp();
        return zzfwq.zzg(zzfwq.zzn(zzfwh.zzw(com.google.android.gms.ads.internal.util.zzt.zzG(str) ? zzfwq.zzh(new zzeeg(1)) : zzfwq.zzg(zzeepVar.zza(zzcdqVar), ExecutionException.class, zzeeo.zza, this.zza)), zzfvxVar, this.zza), zzeeg.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeem
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzeeq.this.zzb(zzeepVar2, zzcdqVar, zzfvxVar, (zzeeg) obj);
            }
        }, this.zza);
    }

    public final zzfxa<zzcdq> zza(final zzcdq zzcdqVar) {
        zzfvx zzfvxVar = new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeel
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zzcdq zzcdqVar2 = zzcdq.this;
                zzcdqVar2.zzj = new String(zzfux.zza((InputStream) obj), zzfpt.zzc);
                return zzfwq.zzi(zzcdqVar2);
            }
        };
        final zzedx zzedxVar = this.zzb;
        return zzg(zzcdqVar, new zzeep() { // from class: com.google.android.gms.internal.ads.zzeeh
            @Override // com.google.android.gms.internal.ads.zzeep
            public final zzfxa zza(zzcdq zzcdqVar2) {
                return zzedx.this.zzb(zzcdqVar2);
            }
        }, new zzeep() { // from class: com.google.android.gms.internal.ads.zzeei
            @Override // com.google.android.gms.internal.ads.zzeep
            public final zzfxa zza(zzcdq zzcdqVar2) {
                return zzeeq.this.zzc(zzcdqVar2);
            }
        }, zzfvxVar);
    }

    public final /* synthetic */ zzfxa zzb(zzeep zzeepVar, zzcdq zzcdqVar, zzfvx zzfvxVar, zzeeg zzeegVar) throws Exception {
        return zzfwq.zzn(zzeepVar.zza(zzcdqVar), zzfvxVar, this.zza);
    }

    public final /* synthetic */ zzfxa zzc(zzcdq zzcdqVar) {
        return this.zzc.zzb().zzb(zzcdqVar, Binder.getCallingUid());
    }

    public final /* synthetic */ zzfxa zzd(zzcdq zzcdqVar) {
        return this.zzb.zzc(zzbnc.zzd.zze().booleanValue() ? zzcdqVar.zzh : zzcdqVar.zzj);
    }

    public final /* synthetic */ zzfxa zze(zzcdq zzcdqVar) {
        return this.zzc.zzb().zzi(zzbnc.zzd.zze().booleanValue() ? zzcdqVar.zzh : zzcdqVar.zzj);
    }

    public final zzfxa<Void> zzf(zzcdq zzcdqVar) {
        if (zzamv.zzg(zzcdqVar.zzj)) {
            return zzfwq.zzh(new zzecd(2, "Pool key missing from removeUrl call."));
        }
        return zzg(zzcdqVar, new zzeep() { // from class: com.google.android.gms.internal.ads.zzeej
            @Override // com.google.android.gms.internal.ads.zzeep
            public final zzfxa zza(zzcdq zzcdqVar2) {
                return zzeeq.this.zzd(zzcdqVar2);
            }
        }, new zzeep() { // from class: com.google.android.gms.internal.ads.zzeek
            @Override // com.google.android.gms.internal.ads.zzeep
            public final zzfxa zza(zzcdq zzcdqVar2) {
                return zzeeq.this.zze(zzcdqVar2);
            }
        }, zzeen.zza);
    }
}
