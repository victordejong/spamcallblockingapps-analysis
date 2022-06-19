package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeqe.class */
public final class zzeqe implements zzery<zzeqf> {
    private final zzfsn zza;
    private final Context zzb;
    private final Set<String> zzc;

    public zzeqe(zzfsn zzfsnVar, Context context, Set<String> set) {
        this.zza = zzfsnVar;
        this.zzb = context;
        this.zzc = set;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeqf> zza() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeqd
            private final zzeqe zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzeqf zzb() throws Exception {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
            Set<String> set = this.zzc;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                return new zzeqf(zzt.zzr().zzc(this.zzb));
            }
        }
        return new zzeqf(null);
    }
}
