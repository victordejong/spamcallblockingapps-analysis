package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
import com.google.api.client.googleapis.notifications.C15291b;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.ads.dao */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao.class */
public abstract class AbstractC12314dao<OutputT> extends dag.C12308h<OutputT> {

    /* renamed from: c */
    private static final AbstractC12315a f46897c;

    /* renamed from: d */
    private static final Logger f46898d = Logger.getLogger(AbstractC12314dao.class.getName());

    /* renamed from: a */
    private volatile Set<Throwable> f46899a = null;

    /* renamed from: b */
    private volatile int f46900b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.dao$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$a.class */
    public static abstract class AbstractC12315a {
        private AbstractC12315a() {
        }

        /* renamed from: a */
        abstract int mo16923a(AbstractC12314dao abstractC12314dao);

        /* renamed from: a */
        abstract void mo16922a(AbstractC12314dao abstractC12314dao, Set<Throwable> set);
    }

    /* renamed from: com.google.android.gms.internal.ads.dao$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$b.class */
    static final class C12316b extends AbstractC12315a {
        private C12316b() {
            super();
        }

        @Override // com.google.android.gms.internal.ads.AbstractC12314dao.AbstractC12315a
        /* renamed from: a */
        final int mo16923a(AbstractC12314dao abstractC12314dao) {
            int m16927b;
            synchronized (abstractC12314dao) {
                m16927b = AbstractC12314dao.m16927b(abstractC12314dao);
            }
            return m16927b;
        }

        @Override // com.google.android.gms.internal.ads.AbstractC12314dao.AbstractC12315a
        /* renamed from: a */
        final void mo16922a(AbstractC12314dao abstractC12314dao, Set<Throwable> set) {
            synchronized (abstractC12314dao) {
                if (abstractC12314dao.f46899a == null) {
                    abstractC12314dao.f46899a = set;
                }
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.dao$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dao$c.class */
    static final class C12317c extends AbstractC12315a {

        /* renamed from: a */
        private final AtomicReferenceFieldUpdater<AbstractC12314dao, Set<Throwable>> f46901a;

        /* renamed from: b */
        private final AtomicIntegerFieldUpdater<AbstractC12314dao> f46902b;

        C12317c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f46901a = atomicReferenceFieldUpdater;
            this.f46902b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.AbstractC12314dao.AbstractC12315a
        /* renamed from: a */
        final int mo16923a(AbstractC12314dao abstractC12314dao) {
            return this.f46902b.decrementAndGet(abstractC12314dao);
        }

        @Override // com.google.android.gms.internal.ads.AbstractC12314dao.AbstractC12315a
        /* renamed from: a */
        final void mo16922a(AbstractC12314dao abstractC12314dao, Set<Throwable> set) {
            this.f46901a.compareAndSet(abstractC12314dao, null, set);
        }
    }

    static {
        Throwable th;
        AbstractC12315a abstractC12315a;
        try {
            abstractC12315a = new C12317c(AtomicReferenceFieldUpdater.newUpdater(AbstractC12314dao.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(AbstractC12314dao.class, C15291b.f55271a));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            abstractC12315a = new C12316b();
        }
        f46897c = abstractC12315a;
        if (th != null) {
            f46898d.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    public AbstractC12314dao(int i) {
        this.f46900b = i;
    }

    /* renamed from: b */
    static /* synthetic */ int m16927b(AbstractC12314dao abstractC12314dao) {
        int i = abstractC12314dao.f46900b - 1;
        abstractC12314dao.f46900b = i;
        return i;
    }

    /* renamed from: a */
    abstract void mo16928a(Set<Throwable> set);

    /* renamed from: j */
    public final Set<Throwable> m16926j() {
        Set<Throwable> set = this.f46899a;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo16928a(newSetFromMap);
            f46897c.mo16922a(this, newSetFromMap);
            set2 = this.f46899a;
        }
        return set2;
    }

    /* renamed from: k */
    public final int m16925k() {
        return f46897c.mo16923a(this);
    }

    /* renamed from: l */
    public final void m16924l() {
        this.f46899a = null;
    }
}
