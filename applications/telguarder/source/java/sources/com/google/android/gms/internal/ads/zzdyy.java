package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyo;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyy.class */
public final class zzdyy<V> extends zzdyo<Object, V> {
    private zzdza<?> zziaf;

    public zzdyy(zzdwy<? extends zzdzw<?>> zzdwyVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzdwyVar, z, false);
        this.zziaf = new zzdzb(this, callable, executor);
        zzazw();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    protected final void interruptTask() {
        zzdza<?> zzdzaVar = this.zziaf;
        if (zzdzaVar != null) {
            zzdzaVar.interruptTask();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zza(zzdyo.zza zzaVar) {
        super.zza(zzaVar);
        if (zzaVar == zzdyo.zza.OUTPUT_FUTURE_DONE) {
            this.zziaf = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyo
    final void zzazx() {
        zzdza<?> zzdzaVar = this.zziaf;
        if (zzdzaVar != null) {
            zzdzaVar.execute();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyo
    final void zzb(int i, @NullableDecl Object obj) {
    }
}
