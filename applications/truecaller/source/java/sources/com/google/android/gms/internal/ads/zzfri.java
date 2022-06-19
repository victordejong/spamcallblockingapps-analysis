package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzfqw;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfri.class */
public abstract class zzfri<OutputT> extends zzfqw.zzj<OutputT> {
    private static final zzfre zzaO;
    private static final Logger zzaP = Logger.getLogger(zzfri.class.getName());
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    static {
        Throwable th;
        zzfre zzfreVar;
        try {
            zzfreVar = new zzfrg(AtomicReferenceFieldUpdater.newUpdater(zzfri.class, Set.class, "seenExceptions"), AtomicIntegerFieldUpdater.newUpdater(zzfri.class, "remaining"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            zzfreVar = new zzfrh(null);
        }
        zzaO = zzfreVar;
        if (th != null) {
            zzaP.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public zzfri(int i) {
        this.remaining = i;
    }

    public final Set<Throwable> zzG() {
        Set<Throwable> set = this.seenExceptions;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            zzw(newSetFromMap);
            zzaO.zza(this, null, newSetFromMap);
            set2 = this.seenExceptions;
            set2.getClass();
        }
        return set2;
    }

    public final int zzH() {
        return zzaO.zzb(this);
    }

    public final void zzI() {
        this.seenExceptions = null;
    }

    public abstract void zzw(Set<Throwable> set);
}
