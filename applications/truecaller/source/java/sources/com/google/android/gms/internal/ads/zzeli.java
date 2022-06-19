package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeli.class */
public final class zzeli implements zzddx, zzdcq, zzdbf, zzdbw, zzbcv, zzdbc, zzddn, zzamv, zzdbs, zzdio {
    private final zzffc zzj;
    private final AtomicReference<zzbfa> zzb = new AtomicReference<>();
    private final AtomicReference<zzbfu> zzc = new AtomicReference<>();
    private final AtomicReference<zzbgw> zzd = new AtomicReference<>();
    private final AtomicReference<zzbfd> zze = new AtomicReference<>();
    private final AtomicReference<zzbgb> zzf = new AtomicReference<>();
    private final AtomicBoolean zzg = new AtomicBoolean(true);
    private final AtomicBoolean zzh = new AtomicBoolean(false);
    private final AtomicBoolean zzi = new AtomicBoolean(false);
    @VisibleForTesting
    public final BlockingQueue<Pair<String, String>> zza = new ArrayBlockingQueue(((Integer) zzbet.zzc().zzc(zzbjl.zzgm)).intValue());

    public zzeli(zzffc zzffcVar) {
        this.zzj = zzffcVar;
    }

    private final void zzu() {
        if (!this.zzh.get() || !this.zzi.get()) {
            return;
        }
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            zzexc.zza(this.zzc, new zzexb((Pair) it.next()) { // from class: com.google.android.gms.internal.ads.zzeky
                private final Pair zza;

                {
                    this.zza = pair;
                }

                @Override // com.google.android.gms.internal.ads.zzexb
                public final void zza(Object obj) {
                    Pair pair2 = this.zza;
                    ((zzbfu) obj).zzb((String) pair2.first, (String) pair2.second);
                }
            });
        }
        this.zza.clear();
        this.zzg.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
            zzexc.zza(this.zzb, zzekr.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdio
    public final void zzb() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzhb)).booleanValue()) {
            zzexc.zza(this.zzb, zzeks.zza);
        }
        zzexc.zza(this.zzf, zzekt.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzbC(String str, String str2) {
        synchronized (this) {
            if (!this.zzg.get()) {
                zzexc.zza(this.zzc, new zzexb(str, str2) { // from class: com.google.android.gms.internal.ads.zzekw
                    private final String zza;
                    private final String zzb;

                    {
                        this.zza = str;
                        this.zzb = str2;
                    }

                    @Override // com.google.android.gms.internal.ads.zzexb
                    public final void zza(Object obj) {
                        ((zzbfu) obj).zzb(this.zza, this.zzb);
                    }
                });
                return;
            }
            if (!this.zza.offer(new Pair<>(str, str2))) {
                zzcgt.zzd("The queue for app events is full, dropping the new event.");
                zzffc zzffcVar = this.zzj;
                if (zzffcVar != null) {
                    zzffb zza = zzffb.zza("dae_action");
                    zza.zzc("dae_name", str);
                    zza.zzc("dae_data", str2);
                    zzffcVar.zza(zza);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zzexc.zza(this.zzb, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzela
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbfa) obj).zzd(this.zza);
            }
        });
        zzexc.zza(this.zzb, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzelb
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbfa) obj).zzc(this.zza.zza);
            }
        });
        zzexc.zza(this.zze, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzelc
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbfd) obj).zzc(this.zza);
            }
        });
        this.zzg.set(false);
        this.zza.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzbG(zzcbj zzcbjVar) {
    }

    public final zzbfa zzc() {
        zzbfa zzbfaVar;
        synchronized (this) {
            zzbfaVar = this.zzb.get();
        }
        return zzbfaVar;
    }

    public final zzbfu zzd() {
        zzbfu zzbfuVar;
        synchronized (this) {
            zzbfuVar = this.zzc.get();
        }
        return zzbfuVar;
    }

    public final void zze(zzbfa zzbfaVar) {
        this.zzb.set(zzbfaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        synchronized (this) {
            zzexc.zza(this.zzb, zzele.zza);
            zzexc.zza(this.zze, zzelf.zza);
            this.zzi.set(true);
            zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        zzexc.zza(this.zzb, zzeku.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
        zzexc.zza(this.zzb, zzelg.zza);
        zzexc.zza(this.zzf, zzelh.zza);
        zzexc.zza(this.zzf, zzekq.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
        zzexc.zza(this.zzb, zzekp.zza);
        zzexc.zza(this.zzf, zzekz.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
        zzexc.zza(this.zzb, zzeld.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        zzexc.zza(this.zzf, new zzexb(zzbczVar) { // from class: com.google.android.gms.internal.ads.zzekx
            private final zzbcz zza;

            {
                this.zza = zzbczVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbgb) obj).zzb(this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddn
    public final void zzo(zzbdn zzbdnVar) {
        zzexc.zza(this.zzd, new zzexb(zzbdnVar) { // from class: com.google.android.gms.internal.ads.zzekv
            private final zzbdn zza;

            {
                this.zza = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.zzexb
            public final void zza(Object obj) {
                ((zzbgw) obj).zze(this.zza);
            }
        });
    }

    public final void zzp(zzbfu zzbfuVar) {
        this.zzc.set(zzbfuVar);
        this.zzh.set(true);
        zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzddx
    public final void zzq(zzfal zzfalVar) {
        this.zzg.set(true);
        this.zzi.set(false);
    }

    public final void zzr(zzbgw zzbgwVar) {
        this.zzd.set(zzbgwVar);
    }

    public final void zzs(zzbfd zzbfdVar) {
        this.zze.set(zzbfdVar);
    }

    public final void zzt(zzbgb zzbgbVar) {
        this.zzf.set(zzbgbVar);
    }
}
