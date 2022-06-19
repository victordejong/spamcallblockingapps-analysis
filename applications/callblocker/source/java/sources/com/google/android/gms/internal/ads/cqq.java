package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cqf;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqq.class */
public abstract class cqq<OutputT> extends cqf.C2887j<OutputT> {

    /* renamed from: c */
    private static final AbstractC2891b f13589c;

    /* renamed from: d */
    private static final Logger f13590d = Logger.getLogger(cqq.class.getName());

    /* renamed from: a */
    private volatile Set<Throwable> f13591a = null;

    /* renamed from: b */
    private volatile int f13592b;

    /* renamed from: com.google.android.gms.internal.ads.cqq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqq$a.class */
    static final class C2890a extends AbstractC2891b {

        /* renamed from: a */
        private final AtomicReferenceFieldUpdater<cqq, Set<Throwable>> f13593a;

        /* renamed from: b */
        private final AtomicIntegerFieldUpdater<cqq> f13594b;

        C2890a(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f13593a = atomicReferenceFieldUpdater;
            this.f13594b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.cqq.AbstractC2891b
        /* renamed from: a */
        final int mo10804a(cqq cqqVar) {
            return this.f13594b.decrementAndGet(cqqVar);
        }

        @Override // com.google.android.gms.internal.ads.cqq.AbstractC2891b
        /* renamed from: a */
        final void mo10803a(cqq cqqVar, Set<Throwable> set, Set<Throwable> set2) {
            this.f13593a.compareAndSet(cqqVar, null, set2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.cqq$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqq$b.class */
    public static abstract class AbstractC2891b {
        private AbstractC2891b() {
        }

        /* renamed from: a */
        abstract int mo10804a(cqq cqqVar);

        /* renamed from: a */
        abstract void mo10803a(cqq cqqVar, Set<Throwable> set, Set<Throwable> set2);
    }

    /* renamed from: com.google.android.gms.internal.ads.cqq$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqq$c.class */
    static final class C2892c extends AbstractC2891b {
        private C2892c() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.cqq.AbstractC2891b
        /* renamed from: a */
        final int mo10804a(cqq cqqVar) {
            int m10808b;
            synchronized (cqqVar) {
                m10808b = cqq.m10808b(cqqVar);
            }
            return m10808b;
        }

        @Override // com.google.android.gms.internal.ads.cqq.AbstractC2891b
        /* renamed from: a */
        final void mo10803a(cqq cqqVar, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (cqqVar) {
                if (cqqVar.f13591a == null) {
                    cqqVar.f13591a = set2;
                }
            }
        }
    }

    static {
        AbstractC2891b c2892c;
        Throwable th = null;
        try {
            c2892c = new C2890a(AtomicReferenceFieldUpdater.newUpdater(cqq.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(cqq.class, "b"));
        } catch (Throwable th2) {
            th = th2;
            c2892c = new C2892c();
        }
        f13589c = c2892c;
        if (th != null) {
            f13590d.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public cqq(int i) {
        this.f13592b = i;
    }

    /* renamed from: b */
    static /* synthetic */ int m10808b(cqq cqqVar) {
        int i = cqqVar.f13592b - 1;
        cqqVar.f13592b = i;
        return i;
    }

    /* renamed from: a */
    abstract void mo10809a(Set<Throwable> set);

    /* renamed from: j */
    public final Set<Throwable> m10807j() {
        Set<Throwable> set = this.f13591a;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo10809a(newSetFromMap);
            f13589c.mo10803a(this, null, newSetFromMap);
            set2 = this.f13591a;
        }
        return set2;
    }

    /* renamed from: k */
    public final int m10806k() {
        return f13589c.mo10804a(this);
    }

    /* renamed from: l */
    public final void m10805l() {
        this.f13591a = null;
    }
}
