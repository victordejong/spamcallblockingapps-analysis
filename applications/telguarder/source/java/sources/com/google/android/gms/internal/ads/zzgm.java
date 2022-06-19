package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgm.class */
public final class zzgm extends zzgn {
    private final View zzaat;

    public zzgm(zzfc zzfcVar, String str, String str2, zzcf.zza.zzb zzbVar, int i, int i2, View view) {
        super(zzfcVar, str, str2, zzbVar, i, 57);
        this.zzaat = view;
    }

    @Override // com.google.android.gms.internal.ads.zzgn
    protected final void zzcw() throws IllegalAccessException, InvocationTargetException {
        if (this.zzaat != null) {
            Boolean bool = (Boolean) zzwr.zzqr().zzd(zzabp.zzcsn);
            zzfk zzfkVar = new zzfk((String) this.zzabl.invoke(null, this.zzaat, this.zzwc.getContext().getResources().getDisplayMetrics(), bool));
            zzcf.zza.zzf.C2604zza zzaw = zzcf.zza.zzf.zzaw();
            zzaw.zzdc(zzfkVar.zzaan.longValue()).zzdd(zzfkVar.zzaao.longValue()).zzde(zzfkVar.zzaap.longValue());
            if (bool.booleanValue()) {
                zzaw.zzdf(zzfkVar.zzaaq.longValue());
            }
            this.zzabb.zzb((zzcf.zza.zzf) ((zzelb) zzaw.zzbiw()));
        }
    }
}
