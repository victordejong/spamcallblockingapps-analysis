package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamk.class */
public final class zzamk<I, O> implements zzamb<I, O> {
    private final zzakz zzdkx;
    private final zzamd<O> zzdky;
    private final zzamc<I> zzdkz;
    private final String zzdla;

    public zzamk(zzakz zzakzVar, String str, zzamc<I> zzamcVar, zzamd<O> zzamdVar) {
        this.zzdkx = zzakzVar;
        this.zzdla = str;
        this.zzdkz = zzamcVar;
        this.zzdky = zzamdVar;
    }

    public final void zza(zzalm zzalmVar, zzalx zzalxVar, I i, zzbaa<O> zzbaaVar) {
        try {
            zzr.zzkr();
            String zzyy = zzj.zzyy();
            zzahm.zzdhq.zza(zzyy, new zzamp(this, zzalmVar, zzbaaVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", zzyy);
            jSONObject.put("args", this.zzdkz.zzi(i));
            zzalxVar.zzb(this.zzdla, jSONObject);
        } catch (Exception e) {
            try {
                zzbaaVar.setException(e);
                zzd.zzc("Unable to invokeJavascript", e);
            } finally {
                zzalmVar.release();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw<O> zzf(I i) throws Exception {
        return zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzamb
    public final zzdzw<O> zzh(I i) {
        zzbaa zzbaaVar = new zzbaa();
        zzalm zzb = this.zzdkx.zzb((zzei) null);
        zzb.zza(new zzamn(this, zzb, i, zzbaaVar), new zzamm(this, zzbaaVar, zzb));
        return zzbaaVar;
    }
}
