package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.util.Pair;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeox.class */
public final class zzeox implements zzdhm, zzdgf, zzdeu, zzdfl, zzbes, zzder, zzdhc, zzaop, zzdfh, zzdmd {
    private final zzfio zzj;
    private final AtomicReference<zzbgx> zzb = new AtomicReference<>();
    private final AtomicReference<zzbhr> zzc = new AtomicReference<>();
    private final AtomicReference<zzbit> zzd = new AtomicReference<>();
    private final AtomicReference<zzbha> zze = new AtomicReference<>();
    private final AtomicReference<zzbhy> zzf = new AtomicReference<>();
    private final AtomicBoolean zzg = new AtomicBoolean(true);
    private final AtomicBoolean zzh = new AtomicBoolean(false);
    private final AtomicBoolean zzi = new AtomicBoolean(false);
    @VisibleForTesting
    public final BlockingQueue<Pair<String, String>> zza = new ArrayBlockingQueue(((Integer) zzbgq.zzc().zzb(zzblj.zzgx)).intValue());

    public zzeox(zzfio zzfioVar) {
        this.zzj = zzfioVar;
    }

    @TargetApi(5)
    private final void zzu() {
        if (!this.zzh.get() || !this.zzi.get()) {
            return;
        }
        Iterator it2 = this.zza.iterator();
        while (it2.hasNext()) {
            final Pair pair = (Pair) it2.next();
            zzfaq.zza(this.zzc, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeof
                @Override // com.google.android.gms.internal.ads.zzfap
                public final void zza(Object obj) {
                    Pair pair2 = pair;
                    ((zzbhr) obj).zzc((String) pair2.first, (String) pair2.second);
                }
            });
        }
        this.zza.clear();
        this.zzg.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
            zzfaq.zza(this.zzb, zzeou.zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(final zzbew zzbewVar) {
        zzfaq.zza(this.zzb, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeoo
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbgx) obj).zzf(zzbew.this);
            }
        });
        zzfaq.zza(this.zzb, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeop
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbgx) obj).zze(zzbew.this.zza);
            }
        });
        zzfaq.zza(this.zze, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeoq
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbha) obj).zzb(zzbew.this);
            }
        });
        this.zzg.set(false);
        this.zza.clear();
    }

    public final zzbgx zzb() {
        zzbgx zzbgxVar;
        synchronized (this) {
            zzbgxVar = this.zzb.get();
        }
        return zzbgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaop
    @TargetApi(5)
    public final void zzbC(final String str, final String str2) {
        synchronized (this) {
            if (!this.zzg.get()) {
                zzfaq.zza(this.zzc, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeot
                    @Override // com.google.android.gms.internal.ads.zzfap
                    public final void zza(Object obj) {
                        ((zzbhr) obj).zzc(str, str2);
                    }
                });
                return;
            }
            if (!this.zza.offer(new Pair<>(str, str2))) {
                zzciz.zze("The queue for app events is full, dropping the new event.");
                zzfio zzfioVar = this.zzj;
                if (zzfioVar != null) {
                    zzfin zzb = zzfin.zzb("dae_action");
                    zzb.zza("dae_name", str);
                    zzb.zza("dae_data", str2);
                    zzfioVar.zzb(zzb);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
    }

    public final zzbhr zzc() {
        zzbhr zzbhrVar;
        synchronized (this) {
            zzbhrVar = this.zzc.get();
        }
        return zzbhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        this.zzg.set(true);
        this.zzi.set(false);
    }

    public final void zzf(zzbgx zzbgxVar) {
        this.zzb.set(zzbgxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdhc
    public final void zzg(final zzbfk zzbfkVar) {
        zzfaq.zza(this.zzd, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeos
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbit) obj).zze(zzbfk.this);
            }
        });
    }

    public final void zzh(zzbha zzbhaVar) {
        this.zze.set(zzbhaVar);
    }

    public final void zzi(zzbit zzbitVar) {
        this.zzd.set(zzbitVar);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        zzfaq.zza(this.zzb, zzeov.zza);
        zzfaq.zza(this.zzf, zzeol.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(final zzbew zzbewVar) {
        zzfaq.zza(this.zzf, new zzfap() { // from class: com.google.android.gms.internal.ads.zzeor
            @Override // com.google.android.gms.internal.ads.zzfap
            public final void zza(Object obj) {
                ((zzbhy) obj).zzd(zzbew.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        zzfaq.zza(this.zzb, zzeow.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
        zzfaq.zza(this.zzb, zzeog.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        synchronized (this) {
            zzfaq.zza(this.zzb, zzeoh.zza);
            zzfaq.zza(this.zze, zzeoj.zza);
            this.zzi.set(true);
            zzu();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        zzfaq.zza(this.zzb, zzeoi.zza);
        zzfaq.zza(this.zzf, zzeon.zza);
        zzfaq.zza(this.zzf, zzeom.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(zzceg zzcegVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzdmd
    public final void zzq() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzhm)).booleanValue()) {
            zzfaq.zza(this.zzb, zzeou.zza);
        }
        zzfaq.zza(this.zzf, zzeok.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
    }

    public final void zzs(zzbhr zzbhrVar) {
        this.zzc.set(zzbhrVar);
        this.zzh.set(true);
        zzu();
    }

    public final void zzt(zzbhy zzbhyVar) {
        this.zzf.set(zzbhyVar);
    }
}
