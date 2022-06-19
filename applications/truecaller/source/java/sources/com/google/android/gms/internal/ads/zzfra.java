package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfra.class */
public abstract class zzfra<I, O, F, T> extends zzfrt<O> implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    public zzfsm<? extends I> zza;
    public F zzb;

    public zzfra(zzfsm<? extends I> zzfsmVar, F f) {
        Objects.requireNonNull(zzfsmVar);
        this.zza = zzfsmVar;
        Objects.requireNonNull(f);
        this.zzb = f;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzfsm<? extends I> zzfsmVar = this.zza;
        F f = this.zzb;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = zzfsmVar == null;
        if (f != null) {
            z = false;
        }
        if ((isCancelled | z2) || z) {
            return;
        }
        this.zza = null;
        if (zzfsmVar.isCancelled()) {
            zzr(zzfsmVar);
            return;
        }
        try {
            try {
                Object zzb = zzb(f, zzfsd.zzq(zzfsmVar));
                this.zzb = null;
                zza((zzfra<I, O, F, T>) zzb);
            } catch (Throwable th) {
                try {
                    zzq(th);
                    this.zzb = null;
                } catch (Throwable th2) {
                    this.zzb = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            zzq(e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            zzq(e3);
        } catch (ExecutionException e4) {
            zzq(e4.getCause());
        }
    }

    public abstract void zza(T t);

    public abstract T zzb(F f, I i) throws Exception;

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        String str;
        zzfsm<? extends I> zzfsmVar = this.zza;
        F f = this.zzb;
        String zzc2 = super.zzc();
        if (zzfsmVar != null) {
            String obj = zzfsmVar.toString();
            str = C22128a.m8610j(new StringBuilder(obj.length() + 16), "inputFuture=[", obj, "], ");
        } else {
            str = "";
        }
        if (f != null) {
            String obj2 = f.toString();
            return C22128a.m8606k(new StringBuilder(obj2.length() + str.length() + 11), str, "function=[", obj2, "]");
        } else if (zzc2 == null) {
            return null;
        } else {
            return zzc2.length() != 0 ? str.concat(zzc2) : new String(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzd() {
        zzv(this.zza);
        this.zza = null;
        this.zzb = null;
    }
}
