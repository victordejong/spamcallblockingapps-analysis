package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxp.class */
public final class zzfxp<V> extends zzfwg<V> implements RunnableFuture<V> {
    @CheckForNull
    private volatile zzfwz<?> zza;

    public zzfxp(zzfvw<V> zzfvwVar) {
        this.zza = new zzfxn(this, zzfvwVar);
    }

    public zzfxp(Callable<V> callable) {
        this.zza = new zzfxo(this, callable);
    }

    public static <V> zzfxp<V> zza(Runnable runnable, V v) {
        return new zzfxp<>(Executors.callable(runnable, v));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzfwz<?> zzfwzVar = this.zza;
        if (zzfwzVar != null) {
            zzfwzVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    @CheckForNull
    public final String zzd() {
        zzfwz<?> zzfwzVar = this.zza;
        if (zzfwzVar != null) {
            String zzfwzVar2 = zzfwzVar.toString();
            return C0608b.m7625j(new StringBuilder(zzfwzVar2.length() + 7), "task=[", zzfwzVar2, "]");
        }
        return super.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zze() {
        zzfwz<?> zzfwzVar;
        if (zzv() && (zzfwzVar = this.zza) != null) {
            zzfwzVar.zzh();
        }
        this.zza = null;
    }
}
