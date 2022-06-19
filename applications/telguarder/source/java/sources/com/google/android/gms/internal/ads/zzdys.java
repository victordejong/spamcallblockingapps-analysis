package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdys.class */
public abstract class zzdys<OutputT> extends zzdyk.zzh<OutputT> {
    private static final Logger zzhzc = Logger.getLogger(zzdys.class.getName());
    private static final zza zzhzy;
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdys$zza.class */
    public static abstract class zza {
        private zza() {
        }

        abstract void zza(zzdys zzdysVar, Set<Throwable> set, Set<Throwable> set2);

        abstract int zzc(zzdys zzdysVar);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdys$zzb.class */
    private static final class zzb extends zza {
        private zzb() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.zzdys.zza
        final void zza(zzdys zzdysVar, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (zzdysVar) {
                if (zzdysVar.seenExceptions == null) {
                    zzdysVar.seenExceptions = set2;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.zzdys.zza
        final int zzc(zzdys zzdysVar) {
            int zzb;
            synchronized (zzdysVar) {
                zzb = zzdys.zzb(zzdysVar);
            }
            return zzb;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdys$zzc.class */
    private static final class zzc extends zza {
        private final AtomicReferenceFieldUpdater<zzdys, Set<Throwable>> zziac;
        private final AtomicIntegerFieldUpdater<zzdys> zziad;

        zzc(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.zziac = atomicReferenceFieldUpdater;
            this.zziad = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.zzdys.zza
        final void zza(zzdys zzdysVar, Set<Throwable> set, Set<Throwable> set2) {
            this.zziac.compareAndSet(zzdysVar, null, set2);
        }

        @Override // com.google.android.gms.internal.ads.zzdys.zza
        final int zzc(zzdys zzdysVar) {
            return this.zziad.decrementAndGet(zzdysVar);
        }
    }

    static {
        Throwable th;
        zza zzaVar;
        try {
            zzaVar = new zzc(AtomicReferenceFieldUpdater.newUpdater(zzdys.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzdys.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            zzaVar = new zzb();
        }
        zzhzy = zzaVar;
        if (th != null) {
            zzhzc.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public zzdys(int i) {
        this.remaining = i;
    }

    static /* synthetic */ int zzb(zzdys zzdysVar) {
        int i = zzdysVar.remaining - 1;
        zzdysVar.remaining = i;
        return i;
    }

    public final Set<Throwable> zzazy() {
        Set<Throwable> set = this.seenExceptions;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zzh(newSetFromMap);
            zzhzy.zza(this, null, newSetFromMap);
            set2 = this.seenExceptions;
        }
        return set2;
    }

    public final int zzazz() {
        return zzhzy.zzc(this);
    }

    public final void zzbaa() {
        this.seenExceptions = null;
    }

    abstract void zzh(Set<Throwable> set);
}
