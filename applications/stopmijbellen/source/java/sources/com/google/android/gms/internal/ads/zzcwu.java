package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwu.class */
public final class zzcwu implements zzder, zzdgf, zzdfl, zzbes, zzdfh {
    private final Context zza;
    private final Executor zzb;
    private final Executor zzc;
    private final ScheduledExecutorService zzd;
    private final zzfdz zze;
    private final zzfdn zzf;
    private final zzfjp zzg;
    private final zzfeo zzh;
    private final zzalt zzi;
    private final zzbmi zzj;
    private final WeakReference<View> zzk;
    @GuardedBy("this")
    private boolean zzl;
    private final AtomicBoolean zzm = new AtomicBoolean();
    private final zzbmk zzn;

    public zzcwu(Context context, Executor executor, Executor executor2, ScheduledExecutorService scheduledExecutorService, zzfdz zzfdzVar, zzfdn zzfdnVar, zzfjp zzfjpVar, zzfeo zzfeoVar, View view, zzalt zzaltVar, zzbmi zzbmiVar, zzbmk zzbmkVar, byte[] bArr) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = executor2;
        this.zzd = scheduledExecutorService;
        this.zze = zzfdzVar;
        this.zzf = zzfdnVar;
        this.zzg = zzfjpVar;
        this.zzh = zzfeoVar;
        this.zzi = zzaltVar;
        this.zzk = new WeakReference<>(view);
        this.zzj = zzbmiVar;
        this.zzn = zzbmkVar;
    }

    public final void zzs() {
        String zzh = ((Boolean) zzbgq.zzc().zzb(zzblj.zzch)).booleanValue() ? this.zzi.zzc().zzh(this.zza, this.zzk.get(), null) : null;
        if ((!((Boolean) zzbgq.zzc().zzb(zzblj.zzai)).booleanValue() || !this.zze.zzb.zzb.zzg) && zzbmw.zzh.zze().booleanValue()) {
            zzfwq.zzr((zzfwh) zzfwq.zzo(zzfwh.zzw(zzfwq.zzi(null)), ((Long) zzbgq.zzc().zzb(zzblj.zzaJ)).longValue(), TimeUnit.MILLISECONDS, this.zzd), new zzcwt(this, zzh), this.zzb);
            return;
        }
        zzfeo zzfeoVar = this.zzh;
        zzfjp zzfjpVar = this.zzg;
        zzfdz zzfdzVar = this.zze;
        zzfdn zzfdnVar = this.zzf;
        zzfeoVar.zza(zzfjpVar.zzb(zzfdzVar, zzfdnVar, false, zzh, null, zzfdnVar.zzd));
    }

    private final void zzt(final int i, final int i2) {
        View view;
        if (i <= 0 || !((view = this.zzk.get()) == null || view.getHeight() == 0 || view.getWidth() == 0)) {
            zzs();
        } else {
            this.zzd.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwr
                @Override // java.lang.Runnable
                public final void run() {
                    zzcwu.this.zzi(i, i2);
                }
            }, i2, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbes
    public final void onAdClicked() {
        if ((!((Boolean) zzbgq.zzc().zzb(zzblj.zzai)).booleanValue() || !this.zze.zzb.zzb.zzg) && zzbmw.zzd.zze().booleanValue()) {
            zzfwq.zzr(zzfwq.zzf(zzfwh.zzw(this.zzj.zza()), Throwable.class, zzcwn.zza, zzcjm.zzf), new zzcws(this), this.zzb);
            return;
        }
        zzfeo zzfeoVar = this.zzh;
        zzfjp zzfjpVar = this.zzg;
        zzfdz zzfdzVar = this.zze;
        zzfdn zzfdnVar = this.zzf;
        List<String> zza = zzfjpVar.zza(zzfdzVar, zzfdnVar, zzfdnVar.zzc);
        zzt.zzp();
        int i = 1;
        if (true == com.google.android.gms.ads.internal.util.zzt.zzJ(this.zza)) {
            i = 2;
        }
        zzfeoVar.zzc(zza, i);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
        zzfeo zzfeoVar = this.zzh;
        zzfjp zzfjpVar = this.zzg;
        zzfdz zzfdzVar = this.zze;
        zzfdn zzfdnVar = this.zzf;
        zzfeoVar.zza(zzfjpVar.zza(zzfdzVar, zzfdnVar, zzfdnVar.zzj));
    }

    public final /* synthetic */ void zzg() {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwp
            @Override // java.lang.Runnable
            public final void run() {
                zzcwu.this.zzs();
            }
        });
    }

    public final /* synthetic */ void zzh(int i, int i2) {
        zzt(i - 1, i2);
    }

    public final /* synthetic */ void zzi(final int i, final int i2) {
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwq
            @Override // java.lang.Runnable
            public final void run() {
                zzcwu.this.zzh(i, i2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfh
    public final void zzk(zzbew zzbewVar) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzbf)).booleanValue()) {
            this.zzh.zza(this.zzg.zza(this.zze, this.zzf, zzfjp.zzd(2, zzbewVar.zza, this.zzf.zzp)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        if (!this.zzm.compareAndSet(false, true)) {
            return;
        }
        int intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzck)).intValue();
        if (intValue > 0) {
            zzt(intValue, ((Integer) zzbgq.zzc().zzb(zzblj.zzcl)).intValue());
            return;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcj)).booleanValue()) {
            this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcwo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcwu.this.zzg();
                }
            });
        } else {
            zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        synchronized (this) {
            if (this.zzl) {
                ArrayList arrayList = new ArrayList(this.zzf.zzd);
                arrayList.addAll(this.zzf.zzg);
                this.zzh.zza(this.zzg.zzb(this.zze, this.zzf, true, null, null, arrayList));
            } else {
                zzfeo zzfeoVar = this.zzh;
                zzfjp zzfjpVar = this.zzg;
                zzfdz zzfdzVar = this.zze;
                zzfdn zzfdnVar = this.zzf;
                zzfeoVar.zza(zzfjpVar.zza(zzfdzVar, zzfdnVar, zzfdnVar.zzn));
                zzfeo zzfeoVar2 = this.zzh;
                zzfjp zzfjpVar2 = this.zzg;
                zzfdz zzfdzVar2 = this.zze;
                zzfdn zzfdnVar2 = this.zzf;
                zzfeoVar2.zza(zzfjpVar2.zza(zzfdzVar2, zzfdnVar2, zzfdnVar2.zzg));
            }
            this.zzl = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzp(zzceg zzcegVar, String str, String str2) {
        zzfeo zzfeoVar = this.zzh;
        zzfjp zzfjpVar = this.zzg;
        zzfdn zzfdnVar = this.zzf;
        zzfeoVar.zza(zzfjpVar.zzc(zzfdnVar, zzfdnVar.zzi, zzcegVar));
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
        zzfeo zzfeoVar = this.zzh;
        zzfjp zzfjpVar = this.zzg;
        zzfdz zzfdzVar = this.zze;
        zzfdn zzfdnVar = this.zzf;
        zzfeoVar.zza(zzfjpVar.zza(zzfdzVar, zzfdnVar, zzfdnVar.zzh));
    }
}
