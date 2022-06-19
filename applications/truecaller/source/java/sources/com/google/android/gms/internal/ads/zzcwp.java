package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwp.class */
public final class zzcwp extends zzcvh {
    private final zzbny zzc;
    private final Runnable zzd;
    private final Executor zze;

    public zzcwp(zzcxf zzcxfVar, zzbny zzbnyVar, Runnable runnable, Executor executor) {
        super(zzcxfVar);
        this.zzc = zzbnyVar;
        this.zzd = runnable;
        this.zze = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzS() {
        this.zze.execute(new Runnable(this, new Runnable(new AtomicReference(this.zzd)) { // from class: com.google.android.gms.internal.ads.zzcwn
            private final AtomicReference zza;

            {
                this.zza = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.zza.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }) { // from class: com.google.android.gms.internal.ads.zzcwo
            private final zzcwp zza;
            private final Runnable zzb;

            {
                this.zza = this;
                this.zzb = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj(this.zzb);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final View zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final void zzb(ViewGroup viewGroup, zzbdl zzbdlVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzbhc zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzfaa zze() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final zzfaa zzf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final int zzg() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcvh
    public final void zzh() {
    }

    public final void zzj(Runnable runnable) {
        try {
            if (this.zzc.zzb(new ObjectWrapper(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException e) {
            runnable.run();
        }
    }
}
