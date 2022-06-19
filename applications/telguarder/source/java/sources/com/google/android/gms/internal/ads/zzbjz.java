package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjz.class */
public final class zzbjz implements zzq, zzbse, zzbsh, zzqw {
    private final Clock zzbqg;
    private final zzbju zzfsf;
    private final zzbjx zzfsg;
    private final zzamv<JSONObject, JSONObject> zzfsi;
    private final Executor zzfsj;
    private final Set<zzbeb> zzfsh = new HashSet();
    private final AtomicBoolean zzfsk = new AtomicBoolean(false);
    private final zzbkb zzfsl = new zzbkb();
    private boolean zzfsm = false;
    private WeakReference<?> zzfsn = new WeakReference<>(this);

    public zzbjz(zzamo zzamoVar, zzbjx zzbjxVar, Executor executor, zzbju zzbjuVar, Clock clock) {
        this.zzfsf = zzbjuVar;
        this.zzfsi = zzamoVar.zzb("google.afma.activeView.handleUpdate", zzame.zzdks, zzame.zzdks);
        this.zzfsg = zzbjxVar;
        this.zzfsj = executor;
        this.zzbqg = clock;
    }

    private final void zzaiz() {
        for (zzbeb zzbebVar : this.zzfsh) {
            this.zzfsf.zzb(zzbebVar);
        }
        this.zzfsf.zzaix();
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        synchronized (this) {
            if (this.zzfsk.compareAndSet(false, true)) {
                this.zzfsf.zza(this);
                zzaiy();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        synchronized (this) {
            this.zzfsl.zzfsp = true;
            zzaiy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        synchronized (this) {
            this.zzfsl.zzfsp = false;
            zzaiy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqxVar) {
        synchronized (this) {
            this.zzfsl.zzbrj = zzqxVar.zzbrj;
            this.zzfsl.zzfss = zzqxVar;
            zzaiy();
        }
    }

    public final void zzaiy() {
        synchronized (this) {
            if (!(this.zzfsn.get() != null)) {
                zzaja();
                return;
            }
            if (!this.zzfsm && this.zzfsk.get()) {
                try {
                    this.zzfsl.timestamp = this.zzbqg.elapsedRealtime();
                    JSONObject zzi = this.zzfsg.zzi(this.zzfsl);
                    for (zzbeb zzbebVar : this.zzfsh) {
                        this.zzfsj.execute(new Runnable(zzbebVar, zzi) { // from class: com.google.android.gms.internal.ads.zzbkc
                            private final zzbeb zzeuk;
                            private final JSONObject zzfst;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zzeuk = zzbebVar;
                                this.zzfst = zzi;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzeuk.zzb("AFMA_updateActiveView", this.zzfst);
                            }
                        });
                    }
                    zzazw.zzb(this.zzfsi.zzf(zzi), "ActiveViewListener.callActiveViewJs");
                } catch (Exception e) {
                    zzd.zza("Failed to call ActiveViewJS", e);
                }
            }
        }
    }

    public final void zzaja() {
        synchronized (this) {
            zzaiz();
            this.zzfsm = true;
        }
    }

    public final void zzc(zzbeb zzbebVar) {
        synchronized (this) {
            this.zzfsh.add(zzbebVar);
            this.zzfsf.zza(zzbebVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        synchronized (this) {
            this.zzfsl.zzfsp = true;
            zzaiy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        synchronized (this) {
            this.zzfsl.zzfsp = false;
            zzaiy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        synchronized (this) {
            this.zzfsl.zzfsr = "u";
            zzaiy();
            zzaiz();
            this.zzfsm = true;
        }
    }

    public final void zzn(Object obj) {
        this.zzfsn = new WeakReference<>(obj);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
    }
}
