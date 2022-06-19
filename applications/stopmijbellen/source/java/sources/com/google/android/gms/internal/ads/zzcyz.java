package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyz.class */
public final class zzcyz extends zzcyw {
    private final Context zzc;
    private final View zzd;
    private final zzcop zze;
    private final zzfdo zzf;
    private final zzdat zzg;
    private final zzdqn zzh;
    private final zzdmf zzi;
    private final zzgpl<zzenz> zzj;
    private final Executor zzk;
    private zzbfi zzl;

    public zzcyz(zzdau zzdauVar, Context context, zzfdo zzfdoVar, View view, zzcop zzcopVar, zzdat zzdatVar, zzdqn zzdqnVar, zzdmf zzdmfVar, zzgpl<zzenz> zzgplVar, Executor executor) {
        super(zzdauVar);
        this.zzc = context;
        this.zzd = view;
        this.zze = zzcopVar;
        this.zzf = zzfdoVar;
        this.zzg = zzdatVar;
        this.zzh = zzdqnVar;
        this.zzi = zzdmfVar;
        this.zzj = zzgplVar;
        this.zzk = executor;
    }

    public static /* synthetic */ void zzi(zzcyz zzcyzVar) {
        if (zzcyzVar.zzh.zze() == null) {
            return;
        }
        try {
            zzcyzVar.zzh.zze().zze(zzcyzVar.zzj.zzb(), ObjectWrapper.wrap(zzcyzVar.zzc));
        } catch (RemoteException e) {
            zzciz.zzh("RemoteException when notifyAdLoad is called", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdav
    public final void zzU() {
        this.zzk.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcyy
            @Override // java.lang.Runnable
            public final void run() {
                zzcyz.zzi(zzcyz.this);
            }
        });
        super.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final int zza() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfI)).booleanValue() && this.zzb.zzae) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfJ)).booleanValue()) {
                return 0;
            }
        }
        return this.zza.zzb.zzb.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final View zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzbiz zzd() {
        try {
            return this.zzg.zza();
        } catch (zzfek e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzfdo zze() {
        zzbfi zzbfiVar = this.zzl;
        if (zzbfiVar != null) {
            return zzfej.zzc(zzbfiVar);
        }
        zzfdn zzfdnVar = this.zzb;
        if (zzfdnVar.zzZ) {
            for (String str : zzfdnVar.zza) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new zzfdo(this.zzd.getWidth(), this.zzd.getHeight(), false);
        }
        return zzfej.zzb(this.zzb.zzs, this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final zzfdo zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final void zzg() {
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcyw
    public final void zzh(ViewGroup viewGroup, zzbfi zzbfiVar) {
        zzcop zzcopVar;
        if (viewGroup == null || (zzcopVar = this.zze) == null) {
            return;
        }
        zzcopVar.zzai(zzcqe.zzc(zzbfiVar));
        viewGroup.setMinimumHeight(zzbfiVar.zzc);
        viewGroup.setMinimumWidth(zzbfiVar.zzf);
        this.zzl = zzbfiVar;
    }
}
