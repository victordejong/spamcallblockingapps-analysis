package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvm.class */
public abstract class zzfvm<I, O, F, T> extends zzfwg<O> implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    @CheckForNull
    public zzfxa<? extends I> zza;
    @CheckForNull
    public F zzb;

    public zzfvm(zzfxa<? extends I> zzfxaVar, F f) {
        Objects.requireNonNull(zzfxaVar);
        this.zza = zzfxaVar;
        Objects.requireNonNull(f);
        this.zzb = f;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        zzfxa<? extends I> zzfxaVar = this.zza;
        F f = this.zzb;
        boolean isCancelled = isCancelled();
        boolean z = true;
        boolean z2 = zzfxaVar == null;
        if (f != null) {
            z = false;
        }
        if ((isCancelled | z2) || z) {
            return;
        }
        this.zza = null;
        if (zzfxaVar.isCancelled()) {
            zzu(zzfxaVar);
            return;
        }
        try {
            try {
                Object zza = zza(f, zzfwq.zzp(zzfxaVar));
                this.zzb = null;
                zzb((zzfvm<I, O, F, T>) zza);
            } catch (Throwable th) {
                try {
                    zzt(th);
                    this.zzb = null;
                } catch (Throwable th2) {
                    this.zzb = null;
                    throw th2;
                }
            }
        } catch (Error e) {
            zzt(e);
        } catch (CancellationException e2) {
            cancel(false);
        } catch (RuntimeException e3) {
            zzt(e3);
        } catch (ExecutionException e4) {
            zzt(e4.getCause());
        }
    }

    public abstract T zza(F f, I i) throws Exception;

    public abstract void zzb(T t);

    @Override // com.google.android.gms.internal.ads.zzfvg
    @CheckForNull
    public final String zzd() {
        String str;
        zzfxa<? extends I> zzfxaVar = this.zza;
        F f = this.zzb;
        String zzd = super.zzd();
        if (zzfxaVar != null) {
            String obj = zzfxaVar.toString();
            str = C0608b.m7625j(new StringBuilder(obj.length() + 16), "inputFuture=[", obj, "], ");
        } else {
            str = "";
        }
        if (f != null) {
            String obj2 = f.toString();
            return C1676a.m4788i(new StringBuilder(obj2.length() + str.length() + 11), str, "function=[", obj2, "]");
        } else if (zzd == null) {
            return null;
        } else {
            return zzd.length() != 0 ? str.concat(zzd) : new String(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zze() {
        zzq(this.zza);
        this.zza = null;
        this.zzb = null;
    }
}
