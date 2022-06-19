package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfvg;
import java.util.Collections;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfvv.class */
public abstract class zzfvv<OutputT> extends zzfvg.zzi<OutputT> {
    private static final zzfvr zzaP;
    private static final Logger zzaQ = Logger.getLogger(zzfvv.class.getName());
    private volatile int remaining;
    @CheckForNull
    private volatile Set<Throwable> seenExceptions = null;

    static {
        Throwable th;
        zzfvr zzfvrVar;
        try {
            zzfvrVar = new zzfvs(AtomicReferenceFieldUpdater.newUpdater(zzfvv.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzfvv.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            zzfvrVar = new zzfvu(null);
        }
        zzaP = zzfvrVar;
        if (th != null) {
            zzaQ.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public zzfvv(int i) {
        this.remaining = i;
    }

    public final int zzC() {
        return zzaP.zza(this);
    }

    public final Set<Throwable> zzE() {
        Set<Throwable> set = this.seenExceptions;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zza(newSetFromMap);
            zzaP.zzb(this, null, newSetFromMap);
            set2 = this.seenExceptions;
            Objects.requireNonNull(set2);
        }
        return set2;
    }

    public final void zzH() {
        this.seenExceptions = null;
    }

    public abstract void zza(Set<Throwable> set);
}
