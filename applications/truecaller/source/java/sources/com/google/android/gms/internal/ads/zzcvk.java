package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcvk.class */
public final class zzcvk extends zzcvh {
    private final Context zzc;
    private final View zzd;
    private final zzcml zze;
    private final zzfaa zzf;
    private final zzcxe zzg;
    private final zzdmx zzh;
    private final zzdiq zzi;
    private final zzgku<zzekj> zzj;
    private final Executor zzk;
    private zzbdl zzl;

    public zzcvk(zzcxf zzcxfVar, Context context, zzfaa zzfaaVar, View view, zzcml zzcmlVar, zzcxe zzcxeVar, zzdmx zzdmxVar, zzdiq zzdiqVar, zzgku<zzekj> zzgkuVar, Executor executor) {
        super(zzcxfVar);
        this.zzc = context;
        this.zzd = view;
        this.zze = zzcmlVar;
        this.zzf = zzfaaVar;
        this.zzg = zzcxeVar;
        this.zzh = zzdmxVar;
        this.zzi = zzdiqVar;
        this.zzj = zzgkuVar;
        this.zzk = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzS() {
        this.zzk.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcvj
            private final zzcvk zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj();
            }
        });
        super.zzS();
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final View zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final void zzb(ViewGroup viewGroup, zzbdl zzbdlVar) {
        zzcml zzcmlVar;
        if (viewGroup == null || (zzcmlVar = this.zze) == null) {
            return;
        }
        zzcmlVar.zzaf(zzcob.zza(zzbdlVar));
        viewGroup.setMinimumHeight(zzbdlVar.zzc);
        viewGroup.setMinimumWidth(zzbdlVar.zzf);
        this.zzl = zzbdlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzbhc zzc() {
        try {
            return this.zzg.zza();
        } catch (zzfaw e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzfaa zze() {
        zzbdl zzbdlVar = this.zzl;
        if (zzbdlVar != null) {
            return zzfav.zzc(zzbdlVar);
        }
        zzezz zzezzVar = this.zzb;
        if (zzezzVar.zzY) {
            for (String str : zzezzVar.zza) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            return new zzfaa(this.zzd.getWidth(), this.zzd.getHeight(), false);
        }
        return zzfav.zza(this.zzb.zzr, this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzfaa zzf() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final int zzg() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfB)).booleanValue() && this.zzb.zzad) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfC)).booleanValue()) {
                return 0;
            }
        }
        return this.zza.zzb.zzb.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final void zzh() {
        this.zzi.zza();
    }

    public final void zzj() {
        if (this.zzh.zzd() == null) {
            return;
        }
        try {
            this.zzh.zzd().zze(this.zzj.zzb(), new ObjectWrapper(this.zzc));
        } catch (RemoteException e) {
            zzcgt.zzg("RemoteException when notifyAdLoad is called", e);
        }
    }
}
