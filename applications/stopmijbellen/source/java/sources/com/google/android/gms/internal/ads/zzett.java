package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzett.class */
public final class zzett implements zzevn<zzetu> {
    private final zzfxb zza;
    private final Context zzb;
    private final Set<String> zzc;

    public zzett(zzfxb zzfxbVar, Context context, Set<String> set) {
        this.zza = zzfxbVar;
        this.zzb = context;
        this.zzc = set;
    }

    public final /* synthetic */ zzetu zza() throws Exception {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
            Set<String> set = this.zzc;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                return new zzetu(zzt.zzh().zzc(this.zzb));
            }
        }
        return new zzetu(null);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzetu> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzets
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzett.this.zza();
            }
        });
    }
}
