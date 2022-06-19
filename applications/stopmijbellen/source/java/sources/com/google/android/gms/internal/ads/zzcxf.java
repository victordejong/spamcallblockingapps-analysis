package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxf.class */
public final class zzcxf implements zzaya, zzdfm, zzo, zzdfl {
    private final zzcxa zza;
    private final zzcxb zzb;
    private final zzbwt<JSONObject, JSONObject> zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set<zzcop> zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    @GuardedBy("this")
    private final zzcxe zzh = new zzcxe();
    private boolean zzi = false;
    private WeakReference<?> zzj = new WeakReference<>(this);

    public zzcxf(zzbwq zzbwqVar, zzcxb zzcxbVar, Executor executor, zzcxa zzcxaVar, Clock clock) {
        this.zza = zzcxaVar;
        zzbwb<JSONObject> zzbwbVar = zzbwe.zza;
        this.zzd = zzbwqVar.zza("google.afma.activeView.handleUpdate", zzbwbVar, zzbwbVar);
        this.zzb = zzcxbVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzk() {
        for (zzcop zzcopVar : this.zzc) {
            this.zza.zzf(zzcopVar);
        }
        this.zza.zze();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbA(Context context) {
        synchronized (this) {
            this.zzh.zzb = true;
            zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbB(Context context) {
        synchronized (this) {
            this.zzh.zzb = false;
            zzg();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        synchronized (this) {
            this.zzh.zzb = false;
            zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzby(Context context) {
        synchronized (this) {
            this.zzh.zze = "u";
            zzg();
            zzk();
            this.zzi = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        synchronized (this) {
            this.zzh.zzb = true;
            zzg();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaya
    public final void zzc(zzaxz zzaxzVar) {
        synchronized (this) {
            zzcxe zzcxeVar = this.zzh;
            zzcxeVar.zza = zzaxzVar.zzj;
            zzcxeVar.zzf = zzaxzVar;
            zzg();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
    }

    public final void zzg() {
        synchronized (this) {
            if (this.zzj.get() == null) {
                zzj();
            } else if (!this.zzi && this.zzg.get()) {
                try {
                    this.zzh.zzd = this.zzf.elapsedRealtime();
                    final JSONObject zzb = this.zzb.zzb(this.zzh);
                    for (final zzcop zzcopVar : this.zzc) {
                        this.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcxd
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcop.this.zzl("AFMA_updateActiveView", zzb);
                            }
                        });
                    }
                    zzcjp.zzb(this.zzd.zzb(zzb), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    zze.zzb("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    public final void zzh(zzcop zzcopVar) {
        synchronized (this) {
            this.zzc.add(zzcopVar);
            this.zza.zzd(zzcopVar);
        }
    }

    public final void zzi(Object obj) {
        this.zzj = new WeakReference<>(obj);
    }

    public final void zzj() {
        synchronized (this) {
            zzk();
            this.zzi = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        synchronized (this) {
            if (this.zzg.compareAndSet(false, true)) {
                this.zza.zzc(this);
                zzg();
            }
        }
    }
}
