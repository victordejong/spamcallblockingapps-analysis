package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcww.class */
public final class zzcww implements zzdcq, zzdbw {
    private final Context zza;
    private final zzcml zzb;
    private final zzezz zzc;
    private final zzcgz zzd;
    private IObjectWrapper zze;
    private boolean zzf;

    public zzcww(Context context, zzcml zzcmlVar, zzezz zzezzVar, zzcgz zzcgzVar) {
        this.zza = context;
        this.zzb = zzcmlVar;
        this.zzc = zzezzVar;
        this.zzd = zzcgzVar;
    }

    private final void zza() {
        zzbzl zzbzlVar;
        zzbzm zzbzmVar;
        synchronized (this) {
            if (!this.zzc.zzP) {
                return;
            }
            if (this.zzb == null) {
                return;
            }
            if (!zzt.zzr().zza(this.zza)) {
                return;
            }
            zzcgz zzcgzVar = this.zzd;
            int i = zzcgzVar.zzb;
            int i2 = zzcgzVar.zzc;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(StringConstant.DOT);
            sb.append(i2);
            String sb2 = sb.toString();
            String zza = this.zzc.zzR.zza();
            if (this.zzc.zzR.zzb() == 1) {
                zzbzlVar = zzbzl.VIDEO;
                zzbzmVar = zzbzm.DEFINED_BY_JAVASCRIPT;
            } else {
                zzbzlVar = zzbzl.HTML_DISPLAY;
                zzbzmVar = this.zzc.zzf == 1 ? zzbzm.ONE_PIXEL : zzbzm.BEGIN_TO_RENDER;
            }
            IObjectWrapper zzd = zzt.zzr().zzd(sb2, this.zzb.zzG(), "", "javascript", zza, zzbzmVar, zzbzlVar, this.zzc.zzai);
            this.zze = zzd;
            zzcml zzcmlVar = this.zzb;
            if (zzd == null) {
                return;
            }
            zzt.zzr().zzh(this.zze, (View) zzcmlVar);
            this.zzb.zzak(this.zze);
            zzt.zzr().zzf(this.zze);
            this.zzf = true;
            this.zzb.zze("onSdkLoaded", new C26174a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        synchronized (this) {
            if (this.zzf) {
                return;
            }
            zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        zzcml zzcmlVar;
        synchronized (this) {
            if (!this.zzf) {
                zza();
            }
            if (!this.zzc.zzP || this.zze == null || (zzcmlVar = this.zzb) == null) {
                return;
            }
            zzcmlVar.zze("onSdkImpression", new C26174a());
        }
    }
}
