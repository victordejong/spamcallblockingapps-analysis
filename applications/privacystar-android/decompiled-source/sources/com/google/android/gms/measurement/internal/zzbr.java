package com.google.android.gms.measurement.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbr.class */
public final class zzbr<V> extends FutureTask<V> implements Comparable<zzbr> {
    private final String zzapf;
    private final /* synthetic */ zzbo zzapg;
    private final long zzaph;
    final boolean zzapi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbr(zzbo zzboVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.zzapg = zzboVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzbo.zzape;
        this.zzaph = atomicLong.getAndIncrement();
        this.zzapf = str;
        this.zzapi = false;
        if (this.zzaph == Long.MAX_VALUE) {
            zzboVar.zzgo().zzjd().zzbx("Tasks index overflow");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbr(zzbo zzboVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.zzapg = zzboVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzbo.zzape;
        this.zzaph = atomicLong.getAndIncrement();
        this.zzapf = str;
        this.zzapi = z;
        if (this.zzaph == Long.MAX_VALUE) {
            zzboVar.zzgo().zzjd().zzbx("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull zzbr zzbrVar) {
        zzbr zzbrVar2 = zzbrVar;
        if (this.zzapi != zzbrVar2.zzapi) {
            return this.zzapi ? -1 : 1;
        }
        if (this.zzaph < zzbrVar2.zzaph) {
            return -1;
        }
        if (this.zzaph > zzbrVar2.zzaph) {
            return 1;
        }
        this.zzapg.zzgo().zzje().zzg("Two tasks share the same index. index", Long.valueOf(this.zzaph));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.zzapg.zzgo().zzjd().zzg(this.zzapf, th);
        if (th instanceof zzbp) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
