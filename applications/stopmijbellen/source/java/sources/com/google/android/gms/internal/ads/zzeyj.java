package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeyj.class */
public final class zzeyj extends zzbhj implements zzaa, zzazn, zzdgq {
    @GuardedBy("this")
    public zzcyf zza;
    private final zzcqm zzb;
    private final Context zzc;
    private final ViewGroup zzd;
    private final String zzf;
    private final zzeyd zzg;
    private final zzezj zzh;
    private final zzcjf zzi;
    private zzcxr zzk;
    private AtomicBoolean zze = new AtomicBoolean();
    private long zzj = -1;

    public zzeyj(zzcqm zzcqmVar, Context context, String str, zzeyd zzeydVar, zzezj zzezjVar, zzcjf zzcjfVar) {
        this.zzd = new FrameLayout(context);
        this.zzb = zzcqmVar;
        this.zzc = context;
        this.zzf = str;
        this.zzg = zzeydVar;
        this.zzh = zzezjVar;
        zzezjVar.zzn(this);
        this.zzi = zzcjfVar;
    }

    public static /* bridge */ /* synthetic */ zzr zze(zzeyj zzeyjVar, zzcyf zzcyfVar) {
        boolean zzh = zzcyfVar.zzh();
        int intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzdu)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.zzd = 50;
        zzqVar.zza = true != zzh ? 0 : intValue;
        int i = 0;
        if (true != zzh) {
            i = intValue;
        }
        zzqVar.zzb = i;
        zzqVar.zzc = intValue;
        return new zzr(zzeyjVar.zzc, zzqVar, zzeyjVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    private final void zzq(int i) {
        synchronized (this) {
            if (this.zze.compareAndSet(false, true)) {
                zzcyf zzcyfVar = this.zza;
                if (zzcyfVar != null && zzcyfVar.zzj() != null) {
                    this.zzh.zzt(this.zza.zzj());
                }
                this.zzh.zzj();
                this.zzd.removeAllViews();
                zzcxr zzcxrVar = this.zzk;
                if (zzcxrVar != null) {
                    zzt.zzb().zze(zzcxrVar);
                }
                if (this.zza != null) {
                    ?? r10 = true;
                    if (this.zzj != -1) {
                        r10 = zzt.zzA().elapsedRealtime() - this.zzj;
                    }
                    this.zza.zzi(r10 == true ? 1L : 0L, i);
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
        this.zzh.zzr(zzazwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzI(zzbfo zzbfoVar) {
        this.zzg.zzl(zzbfoVar);
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
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzY() {
        boolean zza;
        synchronized (this) {
            zza = this.zzg.zza();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzazn
    public final void zza() {
        zzq(3);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final boolean zzaa(zzbfd zzbfdVar) throws RemoteException {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzL(this.zzc) && zzbfdVar.zzs == null) {
                zzciz.zzg("Failed to load the ad because app ID is missing.");
                this.zzh.zza(zzfey.zzd(4, null, null));
                return false;
            }
            if (zzY()) {
                return false;
            }
            this.zze = new AtomicBoolean();
            return this.zzg.zzb(zzbfdVar, this.zzf, new zzeyh(this), new zzeyi(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final void zzab(zzbhv zzbhvVar) {
        synchronized (this) {
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzbR() {
        zzq(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final zzbfi zzg() {
        synchronized (this) {
            Preconditions.checkMainThread("getAdSize must be called on the main UI thread.");
            zzcyf zzcyfVar = this.zza;
            if (zzcyfVar != null) {
                return zzfej.zza(this.zzc, Collections.singletonList(zzcyfVar.zzc()));
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void zzh() {
        if (this.zza == null) {
            return;
        }
        this.zzj = zzt.zzA().elapsedRealtime();
        int zza = this.zza.zza();
        if (zza <= 0) {
            return;
        }
        zzcxr zzcxrVar = new zzcxr(this.zzb.zzD(), zzt.zzA());
        this.zzk = zzcxrVar;
        zzcxrVar.zzd(zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyg
            @Override // java.lang.Runnable
            public final void run() {
                zzeyj.this.zzp();
            }
        });
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

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final IObjectWrapper zzn() {
        Preconditions.checkMainThread("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzd);
    }

    public final /* synthetic */ void zzo() {
        zzq(5);
    }

    @VisibleForTesting
    public final void zzp() {
        zzbgo.zzb();
        if (zzcis.zzp()) {
            zzq(5);
        } else {
            this.zzb.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeyf
                @Override // java.lang.Runnable
                public final void run() {
                    zzeyj.this.zzo();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhk
    public final String zzr() {
        String str;
        synchronized (this) {
            str = this.zzf;
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
            zzcyf zzcyfVar = this.zza;
            if (zzcyfVar != null) {
                zzcyfVar.zzT();
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
