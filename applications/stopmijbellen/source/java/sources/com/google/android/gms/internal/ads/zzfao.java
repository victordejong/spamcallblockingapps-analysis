package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdav;
import com.google.android.gms.internal.ads.zzdea;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfao.class */
public final class zzfao<R extends zzdea<AdT>, AdT extends zzdav> implements zzfbc<R, zzfan<R, AdT>> {
    private final zzffn zza;
    private final Executor zzb;
    private final zzfwm<Void> zzc = new zzfam(this);

    public zzfao(zzffn zzffnVar, Executor executor) {
        this.zza = zzffnVar;
        this.zzb = executor;
    }

    public final /* synthetic */ zzfxa zza(zzdea zzdeaVar, zzfax zzfaxVar) throws Exception {
        zzfxa zzfxaVar;
        zzffx zzffxVar = zzfaxVar.zzb;
        zzcdq zzcdqVar = zzfaxVar.zza;
        zzffw<?, ?> zzb = zzffxVar != null ? this.zza.zzb(zzffxVar) : null;
        if (zzffxVar == null) {
            zzfxaVar = zzfwq.zzi(null);
        } else {
            if (zzb != null && zzcdqVar != null) {
                zzfwq.zzr(zzdeaVar.zzb().zzg(zzcdqVar), this.zzc, this.zzb);
            }
            zzfxaVar = zzfwq.zzi(new zzfan(zzffxVar, zzcdqVar, zzb));
        }
        return zzfxaVar;
    }

    public final zzfxa<zzfan<R, AdT>> zzb(zzfbd zzfbdVar, zzfbb<R> zzfbbVar, final R r) {
        return zzfwq.zzf(zzfwq.zzn(zzfwh.zzw(new zzfay(this.zza, r, this.zzb).zzc()), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzfak
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzfao.this.zza(r, (zzfax) obj);
            }
        }, this.zzb), Exception.class, new zzfal(this), this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ zzfxa zzc(zzfbd zzfbdVar, zzfbb zzfbbVar, Object obj) {
        return zzb(zzfbdVar, zzfbbVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfbc
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
