package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzerj.class */
public final class zzerj implements zzery<zzerk> {
    private final zzcfa zza;
    private final zzfsn zzb;
    private final Context zzc;

    public zzerj(zzcfa zzcfaVar, zzfsn zzfsnVar, Context context) {
        this.zza = zzcfaVar;
        this.zzb = zzfsnVar;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzerk> zza() {
        return this.zzb.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeri
            private final zzerj zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzerk zzb() throws Exception {
        Long l;
        if (!this.zza.zzb(this.zzc)) {
            return new zzerk(null, null, null, null, null);
        }
        String zzj = this.zza.zzj(this.zzc);
        if (zzj == null) {
            zzj = "";
        }
        String zzk = this.zza.zzk(this.zzc);
        if (zzk == null) {
            zzk = "";
        }
        String zzl = this.zza.zzl(this.zzc);
        if (zzl == null) {
            zzl = "";
        }
        String zzm = this.zza.zzm(this.zzc);
        if (zzm == null) {
            zzm = "";
        }
        if ("TIME_OUT".equals(zzk)) {
            l = (Long) zzbet.zzc().zzc(zzbjl.zzaa);
        } else {
            l = null;
        }
        return new zzerk(zzj, zzk, zzl, zzm, l);
    }
}
