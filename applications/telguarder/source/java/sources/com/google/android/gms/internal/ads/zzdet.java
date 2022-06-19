package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdet.class */
public final class zzdet implements zzdfi<zzdeq> {
    private final Context context;
    private final zzaxc zzbqv;
    private final zzdzv zzghl;

    public zzdet(zzaxc zzaxcVar, zzdzv zzdzvVar, Context context) {
        this.zzbqv = zzaxcVar;
        this.zzghl = zzdzvVar;
        this.context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdeq> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdes
            private final zzdet zzhcy;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhcy = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhcy.zzatn();
            }
        });
    }

    public final /* synthetic */ zzdeq zzatn() throws Exception {
        Long l;
        if (!this.zzbqv.zzy(this.context)) {
            return new zzdeq(null, null, null, null, null);
        }
        String zzab = this.zzbqv.zzab(this.context);
        if (zzab == null) {
            zzab = "";
        }
        String zzac = this.zzbqv.zzac(this.context);
        if (zzac == null) {
            zzac = "";
        }
        String zzad = this.zzbqv.zzad(this.context);
        if (zzad == null) {
            zzad = "";
        }
        String zzae = this.zzbqv.zzae(this.context);
        if (zzae == null) {
            zzae = "";
        }
        if ("TIME_OUT".equals(zzac)) {
            l = (Long) zzwr.zzqr().zzd(zzabp.zzcoi);
        } else {
            l = null;
        }
        return new zzdeq(zzab, zzac, zzad, zzae, l);
    }
}
