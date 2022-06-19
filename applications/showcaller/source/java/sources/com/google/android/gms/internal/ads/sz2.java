package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sz2.class */
public abstract class sz2<OutputT> extends cz2<OutputT> {

    /* renamed from: k */
    private static final oz2 f29750k;

    /* renamed from: l */
    private static final Logger f29751l = Logger.getLogger(sz2.class.getName());

    /* renamed from: m */
    private volatile Set<Throwable> f29752m = null;

    /* renamed from: n */
    private volatile int f29753n;

    static {
        Throwable th;
        oz2 oz2Var;
        try {
            oz2Var = new qz2(AtomicReferenceFieldUpdater.newUpdater(sz2.class, Set.class, "m"), AtomicIntegerFieldUpdater.newUpdater(sz2.class, "n"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            oz2Var = new rz2(null);
        }
        f29750k = oz2Var;
        if (th != null) {
            f29751l.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public sz2(int i) {
        this.f29753n = i;
    }

    /* renamed from: I */
    public final Set<Throwable> m10877I() {
        Set<Throwable> set = this.f29752m;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo10874L(newSetFromMap);
            f29750k.mo11203a(this, null, newSetFromMap);
            set2 = this.f29752m;
            set2.getClass();
        }
        return set2;
    }

    /* renamed from: J */
    public final int m10876J() {
        return f29750k.mo11202b(this);
    }

    /* renamed from: K */
    public final void m10875K() {
        this.f29752m = null;
    }

    /* renamed from: L */
    abstract void mo10874L(Set<Throwable> set);
}
