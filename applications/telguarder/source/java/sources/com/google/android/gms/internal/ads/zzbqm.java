package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqm.class */
public final class zzbqm implements zzeqb<zzdvz<zzdmw, zzad>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzdnp> zzfvf;

    public zzbqm(zzeqo<Context> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<zzdnp> zzeqoVar3) {
        this.zzewk = zzeqoVar;
        this.zzfqo = zzeqoVar2;
        this.zzfvf = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdvz) zzeqh.zza(new zzdvz(this.zzewk.get(), this.zzfqo.get(), this.zzfvf.get()) { // from class: com.google.android.gms.internal.ads.zzbqj
            private final Context zzcmi;
            private final zzazn zzfuz;
            private final zzdnp zzfxx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzcmi = context;
                this.zzfuz = zzaznVar;
                this.zzfxx = zzdnpVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                Context context2 = this.zzcmi;
                zzazn zzaznVar2 = this.zzfuz;
                zzdnp zzdnpVar2 = this.zzfxx;
                zzdmw zzdmwVar = (zzdmw) obj;
                zzad zzadVar = new zzad(context2);
                zzadVar.zzem(zzdmwVar.zzdwd);
                zzadVar.zzen(zzdmwVar.zzhjl.toString());
                zzadVar.zzu(zzaznVar2.zzbrp);
                zzadVar.setAdUnitId(zzdnpVar2.zzhkx);
                return zzadVar;
            }
        }, "Cannot return null from a non-@Nullable @Provides method");
    }
}
