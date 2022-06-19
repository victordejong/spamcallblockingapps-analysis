package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvp.class */
public abstract class zzfvp<InputT, OutputT> extends zzfvv<OutputT> {
    private static final Logger zza = Logger.getLogger(zzfvp.class.getName());
    @CheckForNull
    private zzfsn<? extends zzfxa<? extends InputT>> zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzfvp(zzfsn<? extends zzfxa<? extends InputT>> zzfsnVar, boolean z, boolean z2) {
        super(zzfsnVar.size());
        this.zzb = zzfsnVar;
        this.zzc = z;
        this.zzd = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzI(int i, Future<? extends InputT> future) {
        try {
            zzb(i, zzfwq.zzp(future));
        } catch (ExecutionException e) {
            zzK(e.getCause());
        } catch (Throwable th) {
            zzK(th);
        }
    }

    /* renamed from: zzJ */
    public final void zzz(@CheckForNull zzfsn<? extends Future<? extends InputT>> zzfsnVar) {
        int zzC = zzC();
        int i = 0;
        zzfqg.zzg(zzC >= 0, "Less than 0 remaining futures");
        if (zzC == 0) {
            if (zzfsnVar != null) {
                zzfuu<? extends Future<? extends InputT>> it2 = zzfsnVar.iterator();
                while (it2.hasNext()) {
                    Future<? extends InputT> next = it2.next();
                    if (!next.isCancelled()) {
                        zzI(i, next);
                    }
                    i++;
                }
            }
            zzH();
            zzw();
            zzA(2);
        }
    }

    private final void zzK(Throwable th) {
        Objects.requireNonNull(th);
        if (this.zzc && !zzt(th) && zzM(zzE(), th)) {
            zzL(th);
        } else if (!(th instanceof Error)) {
        } else {
            zzL(th);
        }
    }

    private static void zzL(Throwable th) {
        zza.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    private static boolean zzM(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    public void zzA(int i) {
        this.zzb = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvv
    public final void zza(Set<Throwable> set) {
        Objects.requireNonNull(set);
        if (!isCancelled()) {
            Throwable zzk = zzk();
            Objects.requireNonNull(zzk);
            zzM(set, zzk);
        }
    }

    public abstract void zzb(int i, InputT inputt);

    @Override // com.google.android.gms.internal.ads.zzfvg
    @CheckForNull
    public final String zzd() {
        zzfsn<? extends zzfxa<? extends InputT>> zzfsnVar = this.zzb;
        return zzfsnVar != null ? "futures=".concat(zzfsnVar.toString()) : super.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zze() {
        zzfsn<? extends zzfxa<? extends InputT>> zzfsnVar = this.zzb;
        boolean z = true;
        zzA(1);
        boolean isCancelled = isCancelled();
        if (zzfsnVar == null) {
            z = false;
        }
        if (z && isCancelled) {
            boolean zzv = zzv();
            zzfuu<? extends zzfxa<? extends InputT>> it2 = zzfsnVar.iterator();
            while (it2.hasNext()) {
                it2.next().cancel(zzv);
            }
        }
    }

    public abstract void zzw();

    public final void zzx() {
        zzfsn<? extends zzfxa<? extends InputT>> zzfsnVar = this.zzb;
        Objects.requireNonNull(zzfsnVar);
        if (zzfsnVar.isEmpty()) {
            zzw();
        } else if (!this.zzc) {
            final zzfsn<? extends zzfxa<? extends InputT>> zzfsnVar2 = this.zzd ? this.zzb : null;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvn
                @Override // java.lang.Runnable
                public final void run() {
                    zzfvp.this.zzz(zzfsnVar2);
                }
            };
            zzfuu<? extends zzfxa<? extends InputT>> it2 = this.zzb.iterator();
            while (it2.hasNext()) {
                it2.next().zzc(runnable, zzfwe.INSTANCE);
            }
        } else {
            zzfuu<? extends zzfxa<? extends InputT>> it3 = this.zzb.iterator();
            int i = 0;
            while (it3.hasNext()) {
                final zzfxa<? extends InputT> next = it3.next();
                final int i2 = i;
                next.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfvo
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfvp.this.zzy(next, i2);
                    }
                }, zzfwe.INSTANCE);
                i++;
            }
        }
    }

    public final /* synthetic */ void zzy(zzfxa zzfxaVar, int i) {
        try {
            if (zzfxaVar.isCancelled()) {
                this.zzb = null;
                cancel(false);
            } else {
                zzI(i, zzfxaVar);
            }
        } finally {
            zzz(null);
        }
    }
}
