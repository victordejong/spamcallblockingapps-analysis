package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamv.class */
public final class zzamv<I, O> implements zzdyu<I, O> {
    private final zzamd<O> zzdky;
    private final zzamc<I> zzdkz;
    private final String zzdla;
    private final zzdzw<zzalx> zzdle;

    public zzamv(zzdzw<zzalx> zzdzwVar, String str, zzamc<I> zzamcVar, zzamd<O> zzamdVar) {
        this.zzdle = zzdzwVar;
        this.zzdla = str;
        this.zzdkz = zzamcVar;
        this.zzdky = zzamdVar;
    }

    public final /* synthetic */ zzdzw zza(Object obj, zzalx zzalxVar) throws Exception {
        zzbaa zzbaaVar = new zzbaa();
        zzr.zzkr();
        String zzyy = zzj.zzyy();
        zzahm.zzdhq.zza(zzyy, new zzamx(this, zzbaaVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", zzyy);
        jSONObject.put("args", this.zzdkz.zzi(obj));
        zzalxVar.zzb(this.zzdla, jSONObject);
        return zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw<O> zzf(I i) throws Exception {
        return zzdzk.zzb(this.zzdle, new zzdyu(this, i) { // from class: com.google.android.gms.internal.ads.zzamu
            private final zzamv zzdlj;
            private final Object zzdlk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlj = this;
                this.zzdlk = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return this.zzdlj.zza(this.zzdlk, (zzalx) obj);
            }
        }, zzazp.zzeih);
    }
}
