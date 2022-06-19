package com.google.android.gms.internal.ads;

import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrd.class */
public abstract class zzfrd<InputT, OutputT> extends zzfri<OutputT> {
    private static final Logger zza = Logger.getLogger(zzfrd.class.getName());
    private zzfoe<? extends zzfsm<? extends InputT>> zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzfrd(zzfoe<? extends zzfsm<? extends InputT>> zzfoeVar, boolean z, boolean z2) {
        super(zzfoeVar.size());
        this.zzb = zzfoeVar;
        this.zzc = z;
        this.zzd = z2;
    }

    private final void zzJ(Throwable th) {
        Objects.requireNonNull(th);
        if (this.zzc && !zzq(th) && zzM(zzG(), th)) {
            zzK(th);
        } else if (!(th instanceof Error)) {
        } else {
            zzK(th);
        }
    }

    private static void zzK(Throwable th) {
        zza.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", AnalyticsConstants.LOG, true != (th instanceof Error) ? "Got more than one input Future failure. Logging failures after the first" : "Input Future failed with Error", th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzL(int i, Future<? extends InputT> future) {
        try {
            zzz(i, zzfsd.zzq(future));
        } catch (ExecutionException e) {
            zzJ(e.getCause());
        } catch (Throwable th) {
            zzJ(th);
        }
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

    public static /* synthetic */ void zzy(zzfrd zzfrdVar, zzfoe zzfoeVar) {
        int zzH = zzfrdVar.zzH();
        int i = 0;
        zzflx.zzb(zzH >= 0, "Less than 0 remaining futures");
        if (zzH == 0) {
            if (zzfoeVar != null) {
                zzfql it = zzfoeVar.iterator();
                while (it.hasNext()) {
                    Future<? extends InputT> future = (Future) it.next();
                    if (!future.isCancelled()) {
                        zzfrdVar.zzL(i, future);
                    }
                    i++;
                }
            }
            zzfrdVar.zzI();
            zzfrdVar.zzA();
            zzfrdVar.zzB(2);
        }
    }

    public abstract void zzA();

    public void zzB(int i) {
        this.zzb = null;
    }

    public final void zzb() {
        zzfoe<? extends zzfsm<? extends InputT>> zzfoeVar = this.zzb;
        zzfoeVar.getClass();
        if (zzfoeVar.isEmpty()) {
            zzA();
        } else if (!this.zzc) {
            zzfrc zzfrcVar = new zzfrc(this, this.zzd ? this.zzb : null);
            zzfql<? extends zzfsm<? extends InputT>> it = this.zzb.iterator();
            while (it.hasNext()) {
                it.next().zze(zzfrcVar, zzfrr.INSTANCE);
            }
        } else {
            zzfql<? extends zzfsm<? extends InputT>> it2 = this.zzb.iterator();
            int i = 0;
            while (it2.hasNext()) {
                zzfsm<? extends InputT> next = it2.next();
                next.zze(new zzfrb(this, next, i), zzfrr.INSTANCE);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        zzfoe<? extends zzfsm<? extends InputT>> zzfoeVar = this.zzb;
        return zzfoeVar != null ? "futures=".concat(zzfoeVar.toString()) : super.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzd() {
        zzfoe<? extends zzfsm<? extends InputT>> zzfoeVar = this.zzb;
        boolean z = true;
        zzB(1);
        boolean isCancelled = isCancelled();
        if (zzfoeVar == null) {
            z = false;
        }
        if (z && isCancelled) {
            boolean zzo = zzo();
            zzfql<? extends zzfsm<? extends InputT>> it = zzfoeVar.iterator();
            while (it.hasNext()) {
                it.next().cancel(zzo);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfri
    public final void zzw(Set<Throwable> set) {
        Objects.requireNonNull(set);
        if (!isCancelled()) {
            Throwable zzu = zzu();
            zzu.getClass();
            zzM(set, zzu);
        }
    }

    public abstract void zzz(int i, InputT inputt);
}
