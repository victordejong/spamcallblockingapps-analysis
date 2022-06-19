package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzewd.class */
public final class zzewd extends zzbfm implements zzo, zzaxq {
    public zzcva zza;
    private final zzcoj zzb;
    private final Context zzc;
    private final String zze;
    private final zzevx zzf;
    private final zzevv zzg;
    private zzcuc zzi;
    private AtomicBoolean zzd = new AtomicBoolean();
    private long zzh = -1;

    public zzewd(zzcoj zzcojVar, Context context, String str, zzevx zzevxVar, zzevv zzevvVar) {
        this.zzb = zzcojVar;
        this.zzc = context;
        this.zze = str;
        this.zzf = zzevxVar;
        this.zzg = zzevvVar;
        zzevvVar.zzk(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzS(int i) {
        synchronized (this) {
            if (this.zzd.compareAndSet(false, true)) {
                this.zzg.zzp();
                zzcuc zzcucVar = this.zzi;
                if (zzcucVar != null) {
                    zzt.zzf().zzc(zzcucVar);
                }
                if (this.zza != null) {
                    ?? r10 = true;
                    if (this.zzh != -1) {
                        r10 = zzt.zzj().mo38789a() - this.zzh;
                    }
                    this.zza.zze(r10 == true ? 1L : 0L, i);
                }
                zzj();
            }
        }
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
            str = this.zze;
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
            zzb = this.zzf.zzb();
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
        this.zzf.zzi(zzbdrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzP(zzaxz zzaxzVar) {
        this.zzg.zzh(zzaxzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzQ(boolean z) {
    }

    public final /* synthetic */ void zzR() {
        zzS(5);
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
        zzS(3);
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzaa(zzbgb zzbgbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzab(zzbfy zzbfyVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        synchronized (this) {
            if (this.zza == null) {
                return;
            }
            this.zzh = zzt.zzj().mo38789a();
            int zzc = this.zza.zzc();
            if (zzc <= 0) {
                return;
            }
            zzcuc zzcucVar = new zzcuc(this.zzb.zzf(), zzt.zzj());
            this.zzi = zzcucVar;
            zzcucVar.zzb(zzc, new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzewa
                private final zzewd zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzh();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 0) {
                zzS(2);
                return;
            } else if (i2 == 1) {
                zzS(4);
                return;
            } else if (i2 == 2) {
                zzS(3);
                return;
            } else if (i2 != 3) {
                return;
            } else {
                zzS(6);
                return;
            }
        }
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        synchronized (this) {
            zzcva zzcvaVar = this.zza;
            if (zzcvaVar != null) {
                zzcvaVar.zze(zzt.zzj().mo38789a() - this.zzh, 1);
            }
        }
    }

    @VisibleForTesting
    public final void zzh() {
        this.zzb.zze().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzevz
            private final zzewd zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzR();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final IObjectWrapper zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzj() {
        synchronized (this) {
            Preconditions.m38902f("destroy must be called on the main UI thread.");
            zzcva zzcvaVar = this.zza;
            if (zzcvaVar != null) {
                zzcvaVar.zzT();
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
                this.zzg.zzbD(zzfbm.zzd(4, null, null));
                return false;
            }
            if (zzH()) {
                return false;
            }
            this.zzd = new AtomicBoolean();
            return this.zzf.zza(zzbdgVar, this.zze, new zzewb(this), new zzewc(this));
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
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final void zzt() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfn
    public final zzbdl zzu() {
        synchronized (this) {
        }
        return null;
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
