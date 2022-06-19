package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctf.class */
public final class zzctf implements zzdbc, zzdcq, zzdbw, zzbcv, zzdbs {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfal zze;
    private final zzezz zzf;
    private final zzffr zzg;
    private final zzfbb zzh;
    private final zzaas zzi;
    private final zzbkk zzj;
    private final WeakReference<View> zzk;
    private boolean zzl;
    private final AtomicBoolean zzm = new AtomicBoolean();
    private final zzbkm zzn;

    public zzctf(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfal zzfalVar, zzezz zzezzVar, zzffr zzffrVar, zzfbb zzfbbVar, View view, zzaas zzaasVar, zzbkk zzbkkVar, zzbkm zzbkmVar, byte[] bArr) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfalVar;
        this.zzf = zzezzVar;
        this.zzg = zzffrVar;
        this.zzh = zzfbbVar;
        this.zzi = zzaasVar;
        this.zzk = new WeakReference<>(view);
        this.zzj = zzbkkVar;
        this.zzn = zzbkmVar;
    }

    private final void zzs(int i, int i2) {
        View view;
        if (i <= 0 || !((view = this.zzk.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            zzr();
        } else {
            this.zzd.schedule(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzcta
                private final zzctf zza;
                private final int zzb;
                private final int zzc;

                {
                    this.zza = this;
                    this.zzb = i;
                    this.zzc = i2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(this.zzb, this.zzc);
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: zzt */
    public final void zzr() {
        String zzo = ((Boolean) zzbet.zzc().zzc(zzbjl.zzca)).booleanValue() ? this.zzi.zzb().zzo(this.zza, this.zzk.get(), null) : null;
        if ((!((Boolean) zzbet.zzc().zzc(zzbjl.zzai)).booleanValue() || !this.zze.zzb.zzb.zzg) && zzbkx.zzh.zze().booleanValue()) {
            zzfsd.zzp((zzfru) zzfsd.zzh(zzfru.zzw(zzfsd.zza(null)), ((Long) zzbet.zzc().zzc(zzbjl.zzaG)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcte(this, zzo), this.zzb);
            return;
        }
        zzfbb zzfbbVar = this.zzh;
        zzffr zzffrVar = this.zzg;
        zzfal zzfalVar = this.zze;
        zzezz zzezzVar = this.zzf;
        zzfbbVar.zza(zzffrVar.zzb(zzfalVar, zzezzVar, false, zzo, null, zzezzVar.zzd));
    }

    @Override // com.google.android.gms.internal.ads.zzbcv
    public final void onAdClicked() {
        if ((!((Boolean) zzbet.zzc().zzc(zzbjl.zzai)).booleanValue() || !this.zze.zzb.zzb.zzg) && zzbkx.zzd.zze().booleanValue()) {
            zzfsd.zzp(zzfsd.zzf(zzfru.zzw((zzfsm) this.zzj.zzb()), Throwable.class, zzcsy.zza, zzchg.zzf), new zzctd(this), this.zzb);
            return;
        }
        zzfbb zzfbbVar = this.zzh;
        zzffr zzffrVar = this.zzg;
        zzfal zzfalVar = this.zze;
        zzezz zzezzVar = this.zzf;
        List<String> zza = zzffrVar.zza(zzfalVar, zzezzVar, zzezzVar.zzc);
        zzt.zzc();
        int i = 1;
        if (true == zzs.zzI(this.zza)) {
            i = 2;
        }
        zzfbbVar.zzb(zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        synchronized (this) {
            if (this.zzl) {
                ArrayList arrayList = new ArrayList(this.zzf.zzd);
                arrayList.addAll(this.zzf.zzg);
                this.zzh.zza(this.zzg.zzb(this.zze, this.zzf, true, null, null, arrayList));
            } else {
                zzfbb zzfbbVar = this.zzh;
                zzffr zzffrVar = this.zzg;
                zzfal zzfalVar = this.zze;
                zzezz zzezzVar = this.zzf;
                zzfbbVar.zza(zzffrVar.zza(zzfalVar, zzezzVar, zzezzVar.zzn));
                zzfbb zzfbbVar2 = this.zzh;
                zzffr zzffrVar2 = this.zzg;
                zzfal zzfalVar2 = this.zze;
                zzezz zzezzVar2 = this.zzf;
                zzfbbVar2.zza(zzffrVar2.zza(zzfalVar2, zzezzVar2, zzezzVar2.zzg));
            }
            this.zzl = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        if (!this.zzm.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzcd)).intValue();
        if (intValue > 0) {
            zzs(intValue, ((Integer) zzbet.zzc().zzc(zzbjl.zzce)).intValue());
            return;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcc)).booleanValue()) {
            this.zzc.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcsz
                private final zzctf zza;

                {
                    this.zza = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzq();
                }
            });
        } else {
            zzr();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzk(zzcbz zzcbzVar, String str, String str2) {
        zzfbb zzfbbVar = this.zzh;
        zzffr zzffrVar = this.zzg;
        zzezz zzezzVar = this.zzf;
        zzfbbVar.zza(zzffrVar.zzc(zzezzVar, zzezzVar.zzi, zzcbzVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzl() {
        zzfbb zzfbbVar = this.zzh;
        zzffr zzffrVar = this.zzg;
        zzfal zzfalVar = this.zze;
        zzezz zzezzVar = this.zzf;
        zzfbbVar.zza(zzffrVar.zza(zzfalVar, zzezzVar, zzezzVar.zzh));
    }

    @Override // com.google.android.gms.internal.ads.zzdbc
    public final void zzm() {
        zzfbb zzfbbVar = this.zzh;
        zzffr zzffrVar = this.zzg;
        zzfal zzfalVar = this.zze;
        zzezz zzezzVar = this.zzf;
        zzfbbVar.zza(zzffrVar.zza(zzfalVar, zzezzVar, zzezzVar.zzj));
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzn(zzbcz zzbczVar) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaZ)).booleanValue()) {
            this.zzh.zza(this.zzg.zza(this.zze, this.zzf, zzffr.zzd(2, zzbczVar.zza, this.zzf.zzo)));
        }
    }

    public final /* synthetic */ void zzo(int i, int i2) {
        this.zzb.execute(new Runnable(this, i, i2) { // from class: com.google.android.gms.internal.ads.zzctb
            private final zzctf zza;
            private final int zzb;
            private final int zzc;

            {
                this.zza = this;
                this.zzb = i;
                this.zzc = i2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzp(this.zzb, this.zzc);
            }
        });
    }

    public final /* synthetic */ void zzp(int i, int i2) {
        zzs(i - 1, i2);
    }

    public final /* synthetic */ void zzq() {
        this.zzb.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzctc
            private final zzctf zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzr();
            }
        });
    }
}
