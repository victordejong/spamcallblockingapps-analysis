package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnb.class */
public final class zzbnb extends zzblv {
    private final Executor zzfsj;
    private final zzagl zzfvm;
    private final Runnable zzfvn;

    public zzbnb(zzbnw zzbnwVar, zzagl zzaglVar, Runnable runnable, Executor executor) {
        super(zzbnwVar);
        this.zzfvm = zzaglVar;
        this.zzfvn = runnable;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zza(ViewGroup viewGroup, zzvs zzvsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final View zzajr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajz() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final int zzaka() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzakb() {
        this.zzfsj.execute(new Runnable(this, new Runnable(new AtomicReference(this.zzfvn)) { // from class: com.google.android.gms.internal.ads.zzbne
            private final AtomicReference zzfvp;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfvp = atomicReference;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Runnable runnable2 = (Runnable) this.zzfvp.getAndSet(null);
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }) { // from class: com.google.android.gms.internal.ads.zzbnd
            private final Runnable zzfqi;
            private final zzbnb zzfvo;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfvo = this;
                this.zzfqi = runnable;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfvo.zze(this.zzfqi);
            }
        });
    }

    public final /* synthetic */ void zze(Runnable runnable) {
        try {
            if (this.zzfvm.zzm(ObjectWrapper.wrap(runnable))) {
                return;
            }
            runnable.run();
        } catch (RemoteException e) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zzkf() {
    }
}
