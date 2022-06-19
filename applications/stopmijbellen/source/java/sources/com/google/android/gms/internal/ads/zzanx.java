package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanx.class */
public final class zzanx extends zzaoa {
    private final View zzi;

    public zzanx(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2, View view) {
        super(zzamsVar, "hQ5xuCRMiz6eJqaT4+9Wf/Kj854Yma0NmQLTM8SLOoEkyUHQjbgUSxF3PTxTz3Bq", "CIY4BMAyy7Fe28Pq7/h8od2SEEojcWEgmd3J7ORxssU=", zzaizVar, i, 57);
        this.zzi = view;
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        if (this.zzi != null) {
            Boolean bool = (Boolean) zzbgq.zzc().zzb(zzblj.zzcd);
            zzamw zzamwVar = new zzamw((String) this.zzf.invoke(null, this.zzi, this.zzb.zzb().getResources().getDisplayMetrics(), bool));
            zzajn zza = zzajo.zza();
            zza.zzb(zzamwVar.zza.longValue());
            zza.zzc(zzamwVar.zzb.longValue());
            zza.zzd(zzamwVar.zzc.longValue());
            if (bool.booleanValue()) {
                zza.zza(zzamwVar.zzd.longValue());
            }
            this.zze.zzT(zza.zzah());
        }
    }
}
