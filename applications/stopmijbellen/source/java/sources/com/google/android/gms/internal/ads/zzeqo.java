package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqo.class */
public final class zzeqo implements zzevn<zzeqq> {
    private final zzfxb zza;
    private final zzdww zzb;
    private final zzebb zzc;
    private final zzeqr zzd;

    public zzeqo(zzfxb zzfxbVar, zzdww zzdwwVar, zzebb zzebbVar, zzeqr zzeqrVar) {
        this.zza = zzfxbVar;
        this.zzb = zzdwwVar;
        this.zzc = zzebbVar;
        this.zzd = zzeqrVar;
    }

    public final /* synthetic */ zzeqq zza() throws Exception {
        List<String> asList = Arrays.asList(((String) zzbgq.zzc().zzb(zzblj.zzbc)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zzfev zzb = this.zzb.zzb(str, new JSONObject());
                zzb.zzA();
                Bundle bundle2 = new Bundle();
                try {
                    zzcab zzf = zzb.zzf();
                    if (zzf != null) {
                        bundle2.putString("sdk_version", zzf.toString());
                    }
                } catch (zzfek e) {
                }
                try {
                    zzcab zze = zzb.zze();
                    if (zze != null) {
                        bundle2.putString("adapter_version", zze.toString());
                    }
                } catch (zzfek e2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (zzfek e3) {
            }
        }
        return new zzeqq(bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeqq> zzb() {
        if (zzfqr.zzd((String) zzbgq.zzc().zzb(zzblj.zzbc)) || this.zzd.zzb() || !this.zzc.zzs()) {
            return zzfwq.zzi(new zzeqq(new Bundle(), null));
        }
        this.zzd.zza(true);
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeqn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeqo.this.zza();
            }
        });
    }
}
