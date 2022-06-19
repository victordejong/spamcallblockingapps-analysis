package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezr.class */
public final class zzezr extends zzbhj implements zzo, zzazn {
    @GuardedBy("this")
    public zzcyp zza;
    private final zzcqm zzb;
    private final Context zzc;
    private final String zze;
    private final zzezl zzf;
    private final zzezj zzg;
    @GuardedBy("this")
    private zzcxr zzi;
    private AtomicBoolean zzd = new AtomicBoolean();
    @GuardedBy("this")
    private long zzh = -1;

    public zzezr(zzcqm zzcqmVar, Context context, String str, zzezl zzezlVar, zzezj zzezjVar) {
        this.zzb = zzcqmVar;
        this.zzc = context;
        this.zze = str;
        this.zzf = zzezlVar;
        this.zzg = zzezjVar;
        zzezjVar.zzo(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzp(int i) {
        synchronized (this) {
            if (this.zzd.compareAndSet(false, true)) {
                this.zzg.zzj();
                zzcxr zzcxrVar = this.zzi;
                if (zzcxrVar != null) {
                    zzt.zzb().zze(zzcxrVar);
                }
                if (this.zza != null) {
                    ?? r10 = true;
                    if (this.zzh != -1) {
                        r10 = zzt.zzA().elapsedRealtime() - this.zzh;
                    }
                    this.zza.zze(r10 == true ? 1L : 0L, i);
                }
                zzx();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzA() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzB() {
        synchronized (this) {
            Preconditions.checkMainThread("resume must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzC(zzbgu zzbguVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzD(zzbgx zzbgxVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzE(zzbho zzbhoVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzF(zzbfi zzbfiVar) {
        synchronized (this) {
            Preconditions.checkMainThread("setAdSize must be called on the main UI thread.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzG(zzbhr zzbhrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzH(zzazw zzazwVar) {
        this.zzg.zzr(zzazwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) {
        this.zzf.zzl(zzbfoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzJ(zzbhy zzbhyVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzK(zzbjd zzbjdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzL(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzM(zzccb zzccbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzN(boolean z) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzO(zzbme zzbmeVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzP(zzbit zzbitVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzQ(zzcce zzcceVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzS(zzcem zzcemVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzU(zzbkq zzbkqVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzX() {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() {
        boolean zza;
        synchronized (this) {
            zza = this.zzf.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzazn
    public final void zza() {
        zzp(3);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzL(this.zzc) && zzbfdVar.zzs == null) {
                zzciz.zzg("Failed to load the ad because app ID is missing.");
                this.zzg.zza(zzfey.zzd(4, null, null));
                return false;
            }
            if (zzY()) {
                return false;
            }
            this.zzd = new AtomicBoolean();
            return this.zzf.zzb(zzbfdVar, this.zze, new zzezp(this), new zzezq(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        synchronized (this) {
            if (this.zza == null) {
                return;
            }
            this.zzh = zzt.zzA().elapsedRealtime();
            int zza = this.zza.zza();
            if (zza <= 0) {
                return;
            }
            zzcxr zzcxrVar = new zzcxr(this.zzb.zzD(), zzt.zzA());
            this.zzi = zzcxrVar;
            zzcxrVar.zzd(zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzezo
                @Override // java.lang.Runnable
                public final void run() {
                    zzezr.this.zzo();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
        synchronized (this) {
            zzcyp zzcypVar = this.zza;
            if (zzcypVar != null) {
                zzcypVar.zze(zzt.zzA().elapsedRealtime() - this.zzh, 1);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        int i2 = i - 1;
        if (i != 0) {
            if (i2 == 0) {
                zzp(2);
                return;
            } else if (i2 == 1) {
                zzp(4);
                return;
            } else if (i2 == 2) {
                zzp(3);
                return;
            } else if (i2 != 3) {
                return;
            } else {
                zzp(6);
                return;
            }
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbgx zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbhr zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiw zzk() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbiz zzl() {
        synchronized (this) {
        }
        return null;
    }

    public final /* synthetic */ void zzm() {
        zzp(5);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() {
        return null;
    }

    @VisibleForTesting
    public final void zzo() {
        this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezn
            @Override // java.lang.Runnable
            public final void run() {
                zzezr.this.zzm();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() {
        String str;
        synchronized (this) {
            str = this.zze;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzs() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzt() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzx() {
        synchronized (this) {
            Preconditions.checkMainThread("destroy must be called on the main UI thread.");
            zzcyp zzcypVar = this.zza;
            if (zzcypVar != null) {
                zzcypVar.zzT();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzy(zzbfd zzbfdVar, zzbha zzbhaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzz() {
        synchronized (this) {
            Preconditions.checkMainThread("pause must be called on the main UI thread.");
        }
    }
}
