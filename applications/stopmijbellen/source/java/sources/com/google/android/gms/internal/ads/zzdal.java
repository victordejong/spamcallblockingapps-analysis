package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdal.class */
public final class zzdal implements zzdgf, zzdfl {
    private final Context zza;
    private final zzcop zzb;
    private final zzfdn zzc;
    private final zzcjf zzd;
    @GuardedBy("this")
    private IObjectWrapper zze;
    @GuardedBy("this")
    private boolean zzf;

    public zzdal(Context context, zzcop zzcopVar, zzfdn zzfdnVar, zzcjf zzcjfVar) {
        this.zza = context;
        this.zzb = zzcopVar;
        this.zzc = zzfdnVar;
        this.zzd = zzcjfVar;
    }

    private final void zza() {
        zzcbn zzcbnVar;
        zzcbo zzcboVar;
        synchronized (this) {
            if (!this.zzc.zzQ) {
                return;
            }
            if (this.zzb == null) {
                return;
            }
            if (!zzt.zzh().zzi(this.zza)) {
                return;
            }
            zzcjf zzcjfVar = this.zzd;
            int i = zzcjfVar.zzb;
            int i2 = zzcjfVar.zzc;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String zza = this.zzc.zzS.zza();
            if (this.zzc.zzS.zzb() == 1) {
                zzcbnVar = zzcbn.VIDEO;
                zzcboVar = zzcbo.DEFINED_BY_JAVASCRIPT;
            } else {
                zzcbnVar = zzcbn.HTML_DISPLAY;
                zzcboVar = this.zzc.zzf == 1 ? zzcbo.ONE_PIXEL : zzcbo.BEGIN_TO_RENDER;
            }
            IObjectWrapper zza2 = zzt.zzh().zza(sb2, this.zzb.zzI(), "", "javascript", zza, zzcboVar, zzcbnVar, this.zzc.zzaj);
            this.zze = zza2;
            zzcop zzcopVar = this.zzb;
            if (zza2 == null) {
                return;
            }
            zzt.zzh().zzg(this.zze, (View) zzcopVar);
            this.zzb.zzar(this.zze);
            zzt.zzh().zzh(this.zze);
            this.zzf = true;
            this.zzb.zzd("onSdkLoaded", new C4251a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        zzcop zzcopVar;
        synchronized (this) {
            if (!this.zzf) {
                zza();
            }
            if (!this.zzc.zzQ || this.zze == null || (zzcopVar = this.zzb) == null) {
                return;
            }
            zzcopVar.zzd("onSdkImpression", new C4251a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        synchronized (this) {
            if (this.zzf) {
                return;
            }
            zza();
        }
    }
}
