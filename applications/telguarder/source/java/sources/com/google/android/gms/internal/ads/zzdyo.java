package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyo.class */
abstract class zzdyo<InputT, OutputT> extends zzdys<OutputT> {
    private static final Logger logger = Logger.getLogger(zzdyo.class.getName());
    @NullableDecl
    private zzdwy<? extends zzdzw<? extends InputT>> zzhzr;
    private final boolean zzhzs;
    private final boolean zzhzt;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyo$zza.class */
    public enum zza {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public zzdyo(zzdwy<? extends zzdzw<? extends InputT>> zzdwyVar, boolean z, boolean z2) {
        super(zzdwyVar.size());
        this.zzhzr = (zzdwy) zzdwl.checkNotNull(zzdwyVar);
        this.zzhzs = z;
        this.zzhzt = z2;
    }

    private final void handleException(Throwable th) {
        zzdwl.checkNotNull(th);
        if (this.zzhzs && !setException(th) && zza(zzazy(), th)) {
            zzk(th);
        } else if (!(th instanceof Error)) {
        } else {
            zzk(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zza(int i, Future<? extends InputT> future) {
        try {
            zzb(i, (int) zzdzk.zza(future));
        } catch (ExecutionException e) {
            handleException(e.getCause());
        } catch (Throwable th) {
            handleException(th);
        }
    }

    public final void zza(@NullableDecl zzdwy<? extends Future<? extends InputT>> zzdwyVar) {
        int zzazz = zzazz();
        if (zzazz >= 0) {
            if (zzazz != 0) {
                return;
            }
            if (zzdwyVar != null) {
                zzdya zzdyaVar = (zzdya) zzdwyVar.iterator();
                int i = 0;
                while (zzdyaVar.hasNext()) {
                    Future<? extends InputT> future = (Future) zzdyaVar.next();
                    if (!future.isCancelled()) {
                        zza(i, future);
                    }
                    i++;
                }
            }
            zzbaa();
            zzazx();
            zza(zza.ALL_INPUT_FUTURES_PROCESSED);
            return;
        }
        throw new IllegalStateException("Less than 0 remaining futures");
    }

    private static boolean zza(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    private static void zzk(Throwable th) {
        logger.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        super.afterDone();
        zzdwy<? extends zzdzw<? extends InputT>> zzdwyVar = this.zzhzr;
        zza(zza.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (zzdwyVar != null)) {
            boolean wasInterrupted = wasInterrupted();
            zzdya zzdyaVar = (zzdya) zzdwyVar.iterator();
            while (zzdyaVar.hasNext()) {
                ((Future) zzdyaVar.next()).cancel(wasInterrupted);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        zzdwy<? extends zzdzw<? extends InputT>> zzdwyVar = this.zzhzr;
        if (zzdwyVar != null) {
            String valueOf = String.valueOf(zzdwyVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
            sb.append("futures=");
            sb.append(valueOf);
            return sb.toString();
        }
        return super.pendingToString();
    }

    public void zza(zza zzaVar) {
        zzdwl.checkNotNull(zzaVar);
        this.zzhzr = null;
    }

    public final void zzazw() {
        if (this.zzhzr.isEmpty()) {
            zzazx();
        } else if (!this.zzhzs) {
            zzdyq zzdyqVar = new zzdyq(this, this.zzhzt ? this.zzhzr : null);
            zzdya zzdyaVar = (zzdya) this.zzhzr.iterator();
            while (zzdyaVar.hasNext()) {
                ((zzdzw) zzdyaVar.next()).addListener(zzdyqVar, zzdzd.INSTANCE);
            }
        } else {
            int i = 0;
            zzdya zzdyaVar2 = (zzdya) this.zzhzr.iterator();
            while (zzdyaVar2.hasNext()) {
                zzdzw zzdzwVar = (zzdzw) zzdyaVar2.next();
                zzdzwVar.addListener(new zzdyr(this, zzdzwVar, i), zzdzd.INSTANCE);
                i++;
            }
        }
    }

    abstract void zzazx();

    abstract void zzb(int i, @NullableDecl InputT inputt);

    @Override // com.google.android.gms.internal.ads.zzdys
    final void zzh(Set<Throwable> set) {
        zzdwl.checkNotNull(set);
        if (!isCancelled()) {
            zza(set, zzazt());
        }
    }
}
