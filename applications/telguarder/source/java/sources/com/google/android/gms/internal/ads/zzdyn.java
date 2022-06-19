package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyn.class */
public abstract class zzdyn<I, O, F, T> extends zzdze<O> implements Runnable {
    @NullableDecl
    private zzdzw<? extends I> zzhyu;
    @NullableDecl
    private F zzhzq;

    public zzdyn(zzdzw<? extends I> zzdzwVar, F f) {
        this.zzhyu = (zzdzw) zzdwl.checkNotNull(zzdzwVar);
        this.zzhzq = (F) zzdwl.checkNotNull(f);
    }

    public static <I, O> zzdzw<O> zza(zzdzw<I> zzdzwVar, zzdvz<? super I, ? extends O> zzdvzVar, Executor executor) {
        zzdwl.checkNotNull(zzdvzVar);
        zzdyp zzdypVar = new zzdyp(zzdzwVar, zzdvzVar);
        zzdzwVar.addListener(zzdypVar, zzdzy.zza(executor, zzdypVar));
        return zzdypVar;
    }

    public static <I, O> zzdzw<O> zza(zzdzw<I> zzdzwVar, zzdyu<? super I, ? extends O> zzdyuVar, Executor executor) {
        zzdwl.checkNotNull(executor);
        zzdym zzdymVar = new zzdym(zzdzwVar, zzdyuVar);
        zzdzwVar.addListener(zzdymVar, zzdzy.zza(executor, zzdymVar));
        return zzdymVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        maybePropagateCancellationTo(this.zzhyu);
        this.zzhyu = null;
        this.zzhzq = null;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        String str;
        zzdzw<? extends I> zzdzwVar = this.zzhyu;
        F f = this.zzhzq;
        String pendingToString = super.pendingToString();
        if (zzdzwVar != null) {
            String valueOf = String.valueOf(zzdzwVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 16);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (f == null) {
            if (pendingToString == null) {
                return null;
            }
            String valueOf2 = String.valueOf(str);
            String valueOf3 = String.valueOf(pendingToString);
            return valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        String valueOf4 = String.valueOf(f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(valueOf4).length());
        sb2.append(str);
        sb2.append("function=[");
        sb2.append(valueOf4);
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzdzw<? extends I> zzdzwVar = this.zzhyu;
        F f = this.zzhzq;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = zzdzwVar == null;
        if (f != null) {
            z = false;
        }
        if ((isCancelled | z2) || z) {
            return;
        }
        this.zzhyu = null;
        if (zzdzwVar.isCancelled()) {
            setFuture(zzdzwVar);
            return;
        }
        try {
            try {
                Object zzd = zzd(f, zzdzk.zza(zzdzwVar));
                this.zzhzq = null;
                setResult(zzd);
            } catch (Throwable th) {
                try {
                    setException(th);
                    this.zzhzq = null;
                } catch (Throwable th2) {
                    this.zzhzq = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            setException(e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            setException(e3);
        } catch (ExecutionException e4) {
            setException(e4.getCause());
        }
    }

    abstract void setResult(@NullableDecl T t);

    @NullableDecl
    abstract T zzd(F f, @NullableDecl I i) throws Exception;
}
