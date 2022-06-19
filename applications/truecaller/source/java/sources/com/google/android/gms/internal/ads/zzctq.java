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
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctq.class */
public final class zzctq implements zzawd, zzdbx, zzo, zzdbw {
    private final zzctl zza;
    private final zzctm zzb;
    private final zzbus<JSONObject, JSONObject> zzd;
    private final Executor zze;
    private final Clock zzf;
    private final Set<zzcml> zzc = new HashSet();
    private final AtomicBoolean zzg = new AtomicBoolean(false);
    private final zzctp zzh = new zzctp();
    private boolean zzi = false;
    private WeakReference<?> zzj = new WeakReference<>(this);

    public zzctq(zzbup zzbupVar, zzctm zzctmVar, Executor executor, zzctl zzctlVar, Clock clock) {
        this.zza = zzctlVar;
        zzbua<JSONObject> zzbuaVar = zzbud.zza;
        this.zzd = zzbupVar.zza("google.afma.activeView.handleUpdate", zzbuaVar, zzbuaVar);
        this.zzb = zzctmVar;
        this.zze = executor;
        this.zzf = clock;
    }

    private final void zzl() {
        for (zzcml zzcmlVar : this.zzc) {
            this.zza.zze(zzcmlVar);
        }
        this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zza(Context context) {
        synchronized (this) {
            this.zzh.zzb = true;
            zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzb(Context context) {
        synchronized (this) {
            this.zzh.zzb = false;
            zzh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzbo(Context context) {
        synchronized (this) {
            this.zzh.zze = "u";
            zzh();
            zzl();
            this.zzi = true;
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
        synchronized (this) {
            this.zzh.zzb = true;
            zzh();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
        synchronized (this) {
            this.zzh.zzb = false;
            zzh();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final void zzc(zzawc zzawcVar) {
        synchronized (this) {
            zzctp zzctpVar = this.zzh;
            zzctpVar.zza = zzawcVar.zzj;
            zzctpVar.zzf = zzawcVar;
            zzh();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdbw
    public final void zzg() {
        synchronized (this) {
            if (this.zzg.compareAndSet(false, true)) {
                this.zza.zzc(this);
                zzh();
            }
        }
    }

    public final void zzh() {
        synchronized (this) {
            if (this.zzj.get() == null) {
                zzi();
            } else if (!this.zzi && this.zzg.get()) {
                try {
                    this.zzh.zzd = this.zzf.mo38789a();
                    JSONObject zzb = this.zzb.zzb(this.zzh);
                    for (zzcml zzcmlVar : this.zzc) {
                        this.zze.execute(new Runnable(zzcmlVar, zzb) { // from class: com.google.android.gms.internal.ads.zzcto
                            private final zzcml zza;
                            private final JSONObject zzb;

                            {
                                this.zza = zzcmlVar;
                                this.zzb = zzb;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zzr("AFMA_updateActiveView", this.zzb);
                            }
                        });
                    }
                    zzchj.zzb(this.zzd.zzb(zzb), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    zze.zzb("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    public final void zzi() {
        synchronized (this) {
            zzl();
            this.zzi = true;
        }
    }

    public final void zzj(zzcml zzcmlVar) {
        synchronized (this) {
            this.zzc.add(zzcmlVar);
            this.zza.zzd(zzcmlVar);
        }
    }

    public final void zzk(Object obj) {
        this.zzj = new WeakReference<>(obj);
    }
}
