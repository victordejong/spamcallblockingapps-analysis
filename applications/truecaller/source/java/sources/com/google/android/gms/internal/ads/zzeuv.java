package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeuv.class */
public final class zzeuv extends zzbfm implements zzz, zzaxq, zzddb {
    public zzcuq zza;
    private final zzcoj zzb;
    private final Context zzc;
    private final ViewGroup zzd;
    private final String zzf;
    private final zzeup zzg;
    private final zzevv zzh;
    private final zzcgz zzi;
    private zzcuc zzk;
    private AtomicBoolean zze = new AtomicBoolean();
    private long zzj = -1;

    public zzeuv(zzcoj zzcojVar, Context context, String str, zzeup zzeupVar, zzevv zzevvVar, zzcgz zzcgzVar) {
        this.zzd = new FrameLayout(context);
        this.zzb = zzcojVar;
        this.zzc = context;
        this.zzf = str;
        this.zzg = zzeupVar;
        this.zzh = zzevvVar;
        zzevvVar.zzj(this);
        this.zzi = zzcgzVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzT(int i) {
        synchronized (this) {
            if (this.zze.compareAndSet(false, true)) {
                zzcuq zzcuqVar = this.zza;
                if (zzcuqVar != null && zzcuqVar.zzk() != null) {
                    this.zzh.zzr(this.zza.zzk());
                }
                this.zzh.zzp();
                this.zzd.removeAllViews();
                zzcuc zzcucVar = this.zzk;
                if (zzcucVar != null) {
                    zzt.zzf().zzc(zzcucVar);
                }
                if (this.zza != null) {
                    ?? r10 = true;
                    if (this.zzj != -1) {
                        r10 = zzt.zzj().mo38789a() - this.zzj;
                    }
                    this.zza.zzi(r10 == true ? 1L : 0L, i);
                }
                zzj();
            }
        }
    }

    public static /* synthetic */ zzq zzf(zzeuv zzeuvVar, zzcuq zzcuqVar) {
        boolean zzf = zzcuqVar.zzf();
        int intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzdn)).intValue();
        zzp zzpVar = new zzp();
        zzpVar.zzd = 50;
        zzpVar.zza = true != zzf ? 0 : intValue;
        int i = 0;
        if (true != zzf) {
            i = intValue;
        }
        zzpVar.zzb = i;
        zzpVar.zzc = intValue;
        return new zzq(zzeuvVar.zzc, zzpVar, zzeuvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbgz zzA() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzB() {
        String str;
        synchronized (this) {
            str = this.zzf;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfu zzC() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbfa zzD() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzE(zzbkg zzbkgVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzF(zzbex zzbexVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzG(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzH() {
        boolean zzb;
        synchronized (this) {
            zzb = this.zzg.zzb();
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzI(zzccf zzccfVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzJ(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzK(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbhc zzL() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzM(zzbis zzbisVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzN(zzbhg zzbhgVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzO(zzbdr zzbdrVar) {
        this.zzg.zzi(zzbdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzP(zzaxz zzaxzVar) {
        this.zzh.zzh(zzaxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzQ(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void zzR() {
        if (this.zza == null) {
            return;
        }
        this.zzj = zzt.zzj().mo38789a();
        int zzc = this.zza.zzc();
        if (zzc <= 0) {
            return;
        }
        zzcuc zzcucVar = new zzcuc(this.zzb.zzf(), zzt.zzj());
        this.zzk = zzcucVar;
        zzcucVar.zzb(zzc, new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzeus
            private final zzeuv zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzg();
            }
        });
    }

    public final /* synthetic */ void zzS() {
        zzT(5);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzX(zzbgw zzbgwVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzY(zzbdg zzbdgVar, zzbfd zzbfdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzZ(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzaxq
    public final void zza() {
        zzT(3);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzz
    public final void zzd() {
        zzT(4);
    }

    @VisibleForTesting
    public final void zzg() {
        zzber.zza();
        if (zzcgm.zzp()) {
            zzT(5);
        } else {
            this.zzb.zze().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzeur
                private final zzeuv zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzS();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() {
        Preconditions.m38902f("getAdFrame must be called on the main UI thread.");
        return new ObjectWrapper(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() {
        synchronized (this) {
            Preconditions.m38902f("destroy must be called on the main UI thread.");
            zzcuq zzcuqVar = this.zza;
            if (zzcuqVar != null) {
                zzcuqVar.zzT();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzk() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final boolean zzl(zzbdg zzbdgVar) throws RemoteException {
        synchronized (this) {
            Preconditions.m38902f("loadAd must be called on the main UI thread.");
            zzt.zzc();
            if (zzs.zzK(this.zzc) && zzbdgVar.zzs == null) {
                zzcgt.zzf("Failed to load the ad because app ID is missing.");
                this.zzh.zzbD(zzfbm.zzd(4, null, null));
                return false;
            }
            if (zzH()) {
                return false;
            }
            this.zze = new AtomicBoolean();
            return this.zzg.zza(zzbdgVar, this.zzf, new zzeut(this), new zzeuu(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzm() {
        synchronized (this) {
            Preconditions.m38902f("pause must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzn() {
        synchronized (this) {
            Preconditions.m38902f("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzo(zzbfa zzbfaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzp(zzbfu zzbfuVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzq(zzbfr zzbfrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final Bundle zzr() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() {
        synchronized (this) {
            Preconditions.m38902f("getAdSize must be called on the main UI thread.");
            zzcuq zzcuqVar = this.zza;
            if (zzcuqVar != null) {
                return zzfav.zzb(this.zzc, Collections.singletonList(zzcuqVar.zza()));
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzv(zzbdl zzbdlVar) {
        synchronized (this) {
            Preconditions.m38902f("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzw(zzbzz zzbzzVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzx(zzcac zzcacVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzy() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final String zzz() {
        synchronized (this) {
        }
        return null;
    }
}
