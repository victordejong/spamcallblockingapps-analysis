package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao.class */
public abstract class dao<OutputT> extends dag.h<OutputT> {

    /* renamed from: c  reason: collision with root package name */
    private static final a f26678c;

    /* renamed from: d  reason: collision with root package name */
    private static final Logger f26679d = Logger.getLogger(dao.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<Throwable> f26680a = null;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f26681b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$a.class */
    static abstract class a {
        private a() {
        }

        abstract int a(dao daoVar);

        abstract void a(dao daoVar, Set<Throwable> set);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$b.class */
    static final class b extends a {
        private b() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.dao.a
        final int a(dao daoVar) {
            int b2;
            synchronized (daoVar) {
                b2 = dao.b(daoVar);
            }
            return b2;
        }

        @Override // com.google.android.gms.internal.ads.dao.a
        final void a(dao daoVar, Set<Throwable> set) {
            synchronized (daoVar) {
                if (daoVar.f26680a == null) {
                    daoVar.f26680a = set;
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$c.class */
    static final class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReferenceFieldUpdater<dao, Set<Throwable>> f26682a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicIntegerFieldUpdater<dao> f26683b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f26682a = atomicReferenceFieldUpdater;
            this.f26683b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.dao.a
        final int a(dao daoVar) {
            return this.f26683b.decrementAndGet(daoVar);
        }

        @Override // com.google.android.gms.internal.ads.dao.a
        final void a(dao daoVar, Set<Throwable> set) {
            this.f26682a.compareAndSet(daoVar, null, set);
        }
    }

    static {
        Throwable th;
        a aVar;
        try {
            aVar = new c(AtomicReferenceFieldUpdater.newUpdater(dao.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(dao.class, com.google.api.client.googleapis.notifications.b.f31754a));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            aVar = new b();
        }
        f26678c = aVar;
        if (th != null) {
            f26679d.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public dao(int i) {
        this.f26681b = i;
    }

    static /* synthetic */ int b(dao daoVar) {
        int i = daoVar.f26681b - 1;
        daoVar.f26681b = i;
        return i;
    }

    abstract void a(Set<Throwable> set);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<Throwable> j() {
        Set<Throwable> set = this.f26680a;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            a(newSetFromMap);
            f26678c.a(this, newSetFromMap);
            set2 = this.f26680a;
        }
        return set2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int k() {
        return f26678c.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        this.f26680a = null;
    }
}
