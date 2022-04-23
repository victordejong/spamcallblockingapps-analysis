package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4943u;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p131c.p161d.p266c.p268b.AbstractC4947b;
import p131c.p161d.p266c.p268b.AbstractC4948c;
import p131c.p161d.p266c.p268b.AbstractC4950e;
import p131c.p161d.p266c.p268b.AbstractC4951f;
import p131c.p161d.p266c.p268b.AbstractC4953h;
import p131c.p161d.p266c.p268b.AbstractC4954i;
import p131c.p161d.p266c.p268b.AbstractC4955j;
import p131c.p161d.p266c.p268b.C4946a;
import p131c.p161d.p266c.p268b.C4949d;
import p131c.p161d.p266c.p269c.AbstractC4982g;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
import p131c.p161d.p266c.p275i.p276a.C5100g;
import p131c.p161d.p266c.p275i.p276a.C5110n;
import p131c.p161d.p266c.p275i.p276a.C5115q;
import p131c.p161d.p266c.p275i.p276a.C5119t;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache.class */
public class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {

    /* renamed from: w */
    public static final Logger f30308w = Logger.getLogger(LocalCache.class.getName());

    /* renamed from: x */
    public static final AbstractC7376s<Object, Object> f30309x = new C7349a();

    /* renamed from: y */
    public static final Queue<?> f30310y = new C7351b();

    /* renamed from: a */
    public final int f30311a;

    /* renamed from: b */
    public final int f30312b;

    /* renamed from: c */
    public final Segment<K, V>[] f30313c;

    /* renamed from: d */
    public final int f30314d;

    /* renamed from: e */
    public final Equivalence<Object> f30315e;

    /* renamed from: f */
    public final Equivalence<Object> f30316f;

    /* renamed from: g */
    public final Strength f30317g;

    /* renamed from: h */
    public final Strength f30318h;

    /* renamed from: i */
    public final long f30319i;

    /* renamed from: j */
    public final AbstractC4955j<K, V> f30320j;

    /* renamed from: k */
    public final long f30321k;

    /* renamed from: l */
    public final long f30322l;

    /* renamed from: m */
    public final long f30323m;

    /* renamed from: n */
    public final Queue<RemovalNotification<K, V>> f30324n;

    /* renamed from: o */
    public final AbstractC4954i<K, V> f30325o;

    /* renamed from: p */
    public final AbstractC4943u f30326p;

    /* renamed from: q */
    public final EntryFactory f30327q;

    /* renamed from: r */
    public final AbstractC4947b f30328r;

    /* renamed from: s */
    public final CacheLoader<? super K, V> f30329s;

    /* renamed from: t */
    public Set<K> f30330t;

    /* renamed from: u */
    public Collection<V> f30331u;

    /* renamed from: v */
    public Set<Map.Entry<K, V>> f30332v;

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$EntryFactory.class */
    public enum EntryFactory {
        STRONG { // from class: com.google.common.cache.LocalCache.EntryFactory.1
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7372o(k, i, hVar);
            }
        },
        STRONG_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.2
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyAccessEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7370m(k, i, hVar);
            }
        },
        STRONG_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.3
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyWriteEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7374q(k, i, hVar);
            }
        },
        STRONG_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.4
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyAccessEntry(hVar, copyEntry);
                copyWriteEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7371n(k, i, hVar);
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.EntryFactory.5
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7380w(segment.keyReferenceQueue, k, i, hVar);
            }
        },
        WEAK_ACCESS { // from class: com.google.common.cache.LocalCache.EntryFactory.6
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyAccessEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7378u(segment.keyReferenceQueue, k, i, hVar);
            }
        },
        WEAK_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.7
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyWriteEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7382y(segment.keyReferenceQueue, k, i, hVar);
            }
        },
        WEAK_ACCESS_WRITE { // from class: com.google.common.cache.LocalCache.EntryFactory.8
            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
                AbstractC4953h<K, V> copyEntry = super.copyEntry(segment, hVar, hVar2);
                copyAccessEntry(hVar, copyEntry);
                copyWriteEntry(hVar, copyEntry);
                return copyEntry;
            }

            @Override // com.google.common.cache.LocalCache.EntryFactory
            public <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar) {
                return new C7379v(segment.keyReferenceQueue, k, i, hVar);
            }
        };
        
        public static final int ACCESS_MASK = 1;
        public static final int WEAK_MASK = 4;
        public static final int WRITE_MASK = 2;
        public static final EntryFactory[] factories;

        static {
            EntryFactory entryFactory = WEAK_ACCESS_WRITE;
            factories = new EntryFactory[]{STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, entryFactory};
        }

        /* synthetic */ EntryFactory(C7349a aVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static EntryFactory getFactory(Strength strength, boolean z, boolean z2) {
            int i = 0;
            int i2 = strength == Strength.WEAK ? 4 : 0;
            if (z2) {
                i = 2;
            }
            return factories[i2 | (z ? 1 : 0) | i];
        }

        public <K, V> void copyAccessEntry(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
            hVar2.setAccessTime(hVar.getAccessTime());
            LocalCache.m8517a(hVar.getPreviousInAccessQueue(), hVar2);
            LocalCache.m8517a(hVar2, hVar.getNextInAccessQueue());
            LocalCache.m8508b((AbstractC4953h) hVar);
        }

        public <K, V> AbstractC4953h<K, V> copyEntry(Segment<K, V> segment, AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
            return newEntry(segment, hVar.getKey(), hVar.getHash(), hVar2);
        }

        public <K, V> void copyWriteEntry(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
            hVar2.setWriteTime(hVar.getWriteTime());
            LocalCache.m8506b(hVar.getPreviousInWriteQueue(), hVar2);
            LocalCache.m8506b(hVar2, hVar.getNextInWriteQueue());
            LocalCache.m8500c((AbstractC4953h) hVar);
        }

        public abstract <K, V> AbstractC4953h<K, V> newEntry(Segment<K, V> segment, K k, int i, AbstractC4953h<K, V> hVar);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$LoadingSerializationProxy.class */
    public static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements AbstractC4951f<K, V>, Serializable {
        public static final long serialVersionUID = 1;
        public transient AbstractC4951f<K, V> autoDelegate;

        public LoadingSerializationProxy(LocalCache<K, V> localCache) {
            super(localCache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = (AbstractC4951f<K, V>) recreateCacheBuilder().m8552a((CacheLoader<? super K, V>) this.loader);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f, p131c.p161d.p266c.p267a.AbstractC4920g
        public final V apply(K k) {
            return this.autoDelegate.apply(k);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public V get(K k) throws ExecutionException {
            return this.autoDelegate.get(k);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.autoDelegate.getAll(iterable);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public V getUnchecked(K k) {
            return this.autoDelegate.getUnchecked(k);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public void refresh(K k) {
            this.autoDelegate.refresh(k);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$LocalLoadingCache.class */
    public static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements AbstractC4951f<K, V> {
        public static final long serialVersionUID = 1;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LocalLoadingCache(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
            super(new LocalCache(cacheBuilder, cacheLoader), null);
            C4933n.m24795a(cacheLoader);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f, p131c.p161d.p266c.p267a.AbstractC4920g
        public final V apply(K k) {
            return getUnchecked(k);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public V get(K k) throws ExecutionException {
            return this.localCache.m8504b((LocalCache<K, V>) k);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.localCache.m8515a((Iterable) iterable);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4951f
        public void refresh(K k) {
            this.localCache.m8496d(k);
        }

        @Override // com.google.common.cache.LocalCache.LocalManualCache
        public Object writeReplace() {
            return new LoadingSerializationProxy(this.localCache);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$LocalManualCache.class */
    public static class LocalManualCache<K, V> implements AbstractC4948c<K, V>, Serializable {
        public static final long serialVersionUID = 1;
        public final LocalCache<K, V> localCache;

        /* renamed from: com.google.common.cache.LocalCache$LocalManualCache$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$LocalManualCache$a.class */
        public class C7344a extends CacheLoader<Object, V> {

            /* renamed from: a */
            public final /* synthetic */ Callable f30333a;

            public C7344a(LocalManualCache localManualCache, Callable callable) {
                this.f30333a = callable;
            }

            @Override // com.google.common.cache.CacheLoader
            public V load(Object obj) throws Exception {
                return (V) this.f30333a.call();
            }
        }

        public LocalManualCache(CacheBuilder<? super K, ? super V> cacheBuilder) {
            this(new LocalCache(cacheBuilder, null));
        }

        public LocalManualCache(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }

        public /* synthetic */ LocalManualCache(LocalCache localCache, C7349a aVar) {
            this(localCache);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void cleanUp() {
            this.localCache.m8522a();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public V get(K k, Callable<? extends V> callable) throws ExecutionException {
            C4933n.m24795a(callable);
            return this.localCache.m8513a((LocalCache<K, V>) k, (CacheLoader<? super LocalCache<K, V>, V>) new C7344a(this, callable));
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            return this.localCache.m8505b(iterable);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public V getIfPresent(Object obj) {
            return this.localCache.m8514a(obj);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void invalidate(Object obj) {
            C4933n.m24795a(obj);
            this.localCache.remove(obj);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void invalidateAll() {
            this.localCache.clear();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void invalidateAll(Iterable<?> iterable) {
            this.localCache.m8499c(iterable);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void put(K k, V v) {
            this.localCache.put(k, v);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public void putAll(Map<? extends K, ? extends V> map) {
            this.localCache.putAll(map);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public long size() {
            return this.localCache.m8494f();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4948c
        public C4949d stats() {
            C4946a aVar = new C4946a();
            aVar.m24745a(this.localCache.f30328r);
            for (Segment<K, V> segment : this.localCache.f30313c) {
                aVar.m24745a(segment.statsCounter);
            }
            return aVar.mo8526b();
        }

        public Object writeReplace() {
            return new ManualSerializationProxy(this.localCache);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$ManualSerializationProxy.class */
    public static class ManualSerializationProxy<K, V> extends AbstractC4950e<K, V> implements Serializable {
        public static final long serialVersionUID = 1;
        public final int concurrencyLevel;
        public transient AbstractC4948c<K, V> delegate;
        public final long expireAfterAccessNanos;
        public final long expireAfterWriteNanos;
        public final Equivalence<Object> keyEquivalence;
        public final Strength keyStrength;
        public final CacheLoader<? super K, V> loader;
        public final long maxWeight;
        public final AbstractC4954i<? super K, ? super V> removalListener;
        public final AbstractC4943u ticker;
        public final Equivalence<Object> valueEquivalence;
        public final Strength valueStrength;
        public final AbstractC4955j<K, V> weigher;

        /* JADX WARN: Code restructure failed: missing block: B:5:0x004d, code lost:
            if (r18 == com.google.common.cache.CacheBuilder.f30285s) goto L_0x0050;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ManualSerializationProxy(com.google.common.cache.LocalCache.Strength r5, com.google.common.cache.LocalCache.Strength r6, com.google.common.base.Equivalence<java.lang.Object> r7, com.google.common.base.Equivalence<java.lang.Object> r8, long r9, long r11, long r13, p131c.p161d.p266c.p268b.AbstractC4955j<K, V> r15, int r16, p131c.p161d.p266c.p268b.AbstractC4954i<? super K, ? super V> r17, p131c.p161d.p266c.p267a.AbstractC4943u r18, com.google.common.cache.CacheLoader<? super K, V> r19) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r4
                r1 = r5
                r0.keyStrength = r1
                r0 = r4
                r1 = r6
                r0.valueStrength = r1
                r0 = r4
                r1 = r7
                r0.keyEquivalence = r1
                r0 = r4
                r1 = r8
                r0.valueEquivalence = r1
                r0 = r4
                r1 = r9
                r0.expireAfterWriteNanos = r1
                r0 = r4
                r1 = r11
                r0.expireAfterAccessNanos = r1
                r0 = r4
                r1 = r13
                r0.maxWeight = r1
                r0 = r4
                r1 = r15
                r0.weigher = r1
                r0 = r4
                r1 = r16
                r0.concurrencyLevel = r1
                r0 = r4
                r1 = r17
                r0.removalListener = r1
                r0 = r18
                c.d.c.a.u r1 = p131c.p161d.p266c.p267a.AbstractC4943u.m24747b()
                if (r0 == r1) goto L_0x0050
                r0 = r18
                r5 = r0
                r0 = r18
                c.d.c.a.u r1 = com.google.common.cache.CacheBuilder.f30285s
                if (r0 != r1) goto L_0x0052
            L_0x0050:
                r0 = 0
                r5 = r0
            L_0x0052:
                r0 = r4
                r1 = r5
                r0.ticker = r1
                r0 = r4
                r1 = r19
                r0.loader = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.ManualSerializationProxy.<init>(com.google.common.cache.LocalCache$Strength, com.google.common.cache.LocalCache$Strength, com.google.common.base.Equivalence, com.google.common.base.Equivalence, long, long, long, c.d.c.b.j, int, c.d.c.b.i, c.d.c.a.u, com.google.common.cache.CacheLoader):void");
        }

        public ManualSerializationProxy(LocalCache<K, V> localCache) {
            this(localCache.f30317g, localCache.f30318h, localCache.f30315e, localCache.f30316f, localCache.f30322l, localCache.f30321k, localCache.f30319i, localCache.f30320j, localCache.f30314d, localCache.f30325o, localCache.f30326p, localCache.f30329s);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = (AbstractC4948c<K, V>) recreateCacheBuilder().m8560a();
        }

        private Object readResolve() {
            return this.delegate;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4950e, p131c.p161d.p266c.p269c.AbstractC5040z
        public AbstractC4948c<K, V> delegate() {
            return this.delegate;
        }

        public CacheBuilder<K, V> recreateCacheBuilder() {
            CacheBuilder<K, V> cacheBuilder = (CacheBuilder<K, V>) CacheBuilder.m8530q();
            cacheBuilder.m8551a(this.keyStrength);
            cacheBuilder.m8545b(this.valueStrength);
            cacheBuilder.m8553a(this.keyEquivalence);
            cacheBuilder.m8546b(this.valueEquivalence);
            cacheBuilder.m8559a(this.concurrencyLevel);
            cacheBuilder.m8555a(this.removalListener);
            cacheBuilder.f30287a = false;
            long j = this.expireAfterWriteNanos;
            if (j > 0) {
                cacheBuilder.m8547b(j, TimeUnit.NANOSECONDS);
            }
            long j2 = this.expireAfterAccessNanos;
            if (j2 > 0) {
                cacheBuilder.m8557a(j2, TimeUnit.NANOSECONDS);
            }
            AbstractC4955j jVar = this.weigher;
            if (jVar != CacheBuilder.OneWeigher.INSTANCE) {
                cacheBuilder.m8554a(jVar);
                long j3 = this.maxWeight;
                if (j3 != -1) {
                    cacheBuilder.m8548b(j3);
                }
            } else {
                long j4 = this.maxWeight;
                if (j4 != -1) {
                    cacheBuilder.m8558a(j4);
                }
            }
            AbstractC4943u uVar = this.ticker;
            if (uVar != null) {
                cacheBuilder.m8556a(uVar);
            }
            return cacheBuilder;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$NullEntry.class */
    public enum NullEntry implements AbstractC4953h<Object, Object> {
        INSTANCE;

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            return 0L;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public int getHash() {
            return 0;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public Object getKey() {
            return null;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<Object, Object> getNext() {
            return null;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC7376s<Object, Object> getValueReference() {
            return null;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            return 0L;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<Object, Object> hVar) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<Object, Object> hVar) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<Object, Object> hVar) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<Object, Object> hVar) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setValueReference(AbstractC7376s<Object, Object> sVar) {
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$Segment.class */
    public static class Segment<K, V> extends ReentrantLock {
        public final Queue<AbstractC4953h<K, V>> accessQueue;
        public volatile int count;
        public final ReferenceQueue<K> keyReferenceQueue;
        public final LocalCache<K, V> map;
        public final long maxSegmentWeight;
        public int modCount;
        public final AtomicInteger readCount = new AtomicInteger();
        public final Queue<AbstractC4953h<K, V>> recencyQueue;
        public final AbstractC4947b statsCounter;
        public volatile AtomicReferenceArray<AbstractC4953h<K, V>> table;
        public int threshold;
        public long totalWeight;
        public final ReferenceQueue<V> valueReferenceQueue;
        public final Queue<AbstractC4953h<K, V>> writeQueue;

        /* renamed from: com.google.common.cache.LocalCache$Segment$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$Segment$a.class */
        public class RunnableC7345a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Object f30334a;

            /* renamed from: b */
            public final /* synthetic */ int f30335b;

            /* renamed from: c */
            public final /* synthetic */ C7367k f30336c;

            /* renamed from: d */
            public final /* synthetic */ AbstractFutureC5108l f30337d;

            public RunnableC7345a(Object obj, int i, C7367k kVar, AbstractFutureC5108l lVar) {
                this.f30334a = obj;
                this.f30335b = i;
                this.f30336c = kVar;
                this.f30337d = lVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Segment.this.getAndRecordStats(this.f30334a, this.f30335b, this.f30336c, this.f30337d);
                } catch (Throwable th) {
                    LocalCache.f30308w.log(Level.WARNING, "Exception thrown during refresh", th);
                    this.f30336c.m8467b(th);
                }
            }
        }

        public Segment(LocalCache<K, V> localCache, int i, long j, AbstractC4947b bVar) {
            this.map = localCache;
            this.maxSegmentWeight = j;
            C4933n.m24795a(bVar);
            this.statsCounter = bVar;
            initTable(newEntryArray(i));
            ReferenceQueue<V> referenceQueue = null;
            this.keyReferenceQueue = localCache.m8486n() ? new ReferenceQueue<>() : null;
            this.valueReferenceQueue = localCache.m8485o() ? new ReferenceQueue<>() : referenceQueue;
            this.recencyQueue = localCache.m8487m() ? new ConcurrentLinkedQueue<>() : LocalCache.m8482r();
            this.writeQueue = localCache.m8483q() ? new C7354c0<>() : LocalCache.m8482r();
            this.accessQueue = localCache.m8487m() ? new C7359e<>() : LocalCache.m8482r();
        }

        public void cleanUp() {
            runLockedCleanup(this.map.f30326p.mo8523a());
            runUnlockedCleanup();
        }

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    preWriteCleanup(this.map.f30326p.mo8523a());
                    AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (AbstractC4953h<K, V> hVar = atomicReferenceArray.get(i); hVar != null; hVar = hVar.getNext()) {
                            if (hVar.getValueReference().mo8462b()) {
                                K key = hVar.getKey();
                                V v = hVar.getValueReference().get();
                                enqueueNotification(key, hVar.getHash(), v, hVar.getValueReference().mo8458c(), (key == null || v == null) ? RemovalCause.COLLECTED : RemovalCause.EXPLICIT);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                    postWriteCleanup();
                }
            }
        }

        public void clearKeyReferenceQueue() {
            do {
            } while (this.keyReferenceQueue.poll() != null);
        }

        public void clearReferenceQueues() {
            if (this.map.m8486n()) {
                clearKeyReferenceQueue();
            }
            if (this.map.m8485o()) {
                clearValueReferenceQueue();
            }
        }

        public void clearValueReferenceQueue() {
            do {
            } while (this.valueReferenceQueue.poll() != null);
        }

        /* JADX WARN: Finally extract failed */
        public boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count != 0) {
                    AbstractC4953h<K, V> liveEntry = getLiveEntry(obj, i, this.map.f30326p.mo8523a());
                    if (liveEntry == null) {
                        postReadCleanup();
                        return false;
                    }
                    if (liveEntry.getValueReference().get() != null) {
                        z = true;
                    }
                    postReadCleanup();
                    return z;
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    long a = this.map.f30326p.mo8523a();
                    AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (AbstractC4953h<K, V> hVar = atomicReferenceArray.get(i); hVar != null; hVar = hVar.getNext()) {
                            V liveValue = getLiveValue(hVar, a);
                            if (liveValue != null && this.map.f30316f.equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        public AbstractC4953h<K, V> copyEntry(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
            if (hVar.getKey() == null) {
                return null;
            }
            AbstractC7376s<K, V> valueReference = hVar.getValueReference();
            V v = valueReference.get();
            if (v == null && valueReference.mo8462b()) {
                return null;
            }
            AbstractC4953h<K, V> copyEntry = this.map.f30327q.copyEntry(this, hVar, hVar2);
            copyEntry.setValueReference(valueReference.mo8459a(this.valueReferenceQueue, v, copyEntry));
            return copyEntry;
        }

        public void drainKeyReferenceQueue() {
            int i;
            int i2 = 0;
            do {
                Reference<? extends K> poll = this.keyReferenceQueue.poll();
                if (poll != null) {
                    this.map.m8519a((AbstractC4953h) ((AbstractC4953h) poll));
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        public void drainRecencyQueue() {
            while (true) {
                AbstractC4953h<K, V> poll = this.recencyQueue.poll();
                if (poll == null) {
                    return;
                }
                if (this.accessQueue.contains(poll)) {
                    this.accessQueue.add(poll);
                }
            }
        }

        public void drainReferenceQueues() {
            if (this.map.m8486n()) {
                drainKeyReferenceQueue();
            }
            if (this.map.m8485o()) {
                drainValueReferenceQueue();
            }
        }

        public void drainValueReferenceQueue() {
            int i;
            int i2 = 0;
            do {
                Reference<? extends V> poll = this.valueReferenceQueue.poll();
                if (poll != null) {
                    this.map.m8516a((AbstractC7376s) ((AbstractC7376s) poll));
                    i = i2 + 1;
                    i2 = i;
                } else {
                    return;
                }
            } while (i != 16);
        }

        public void enqueueNotification(K k, int i, V v, int i2, RemovalCause removalCause) {
            this.totalWeight -= i2;
            if (removalCause.wasEvicted()) {
                this.statsCounter.mo8529a();
            }
            if (this.map.f30324n != LocalCache.f30310y) {
                this.map.f30324n.offer(RemovalNotification.create(k, v, removalCause));
            }
        }

        public void evictEntries(AbstractC4953h<K, V> hVar) {
            if (this.map.m8502c()) {
                drainRecencyQueue();
                if (hVar.getValueReference().mo8458c() <= this.maxSegmentWeight || removeEntry(hVar, hVar.getHash(), RemovalCause.SIZE)) {
                    while (this.totalWeight > this.maxSegmentWeight) {
                        AbstractC4953h<K, V> nextEvictable = getNextEvictable();
                        if (!removeEntry(nextEvictable, nextEvictable.getHash(), RemovalCause.SIZE)) {
                            throw new AssertionError();
                        }
                    }
                    return;
                }
                throw new AssertionError();
            }
        }

        public void expand() {
            AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i = this.count;
                AtomicReferenceArray<AbstractC4953h<K, V>> newEntryArray = newEntryArray(length << 1);
                this.threshold = (newEntryArray.length() * 3) / 4;
                int length2 = newEntryArray.length() - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    AbstractC4953h<K, V> hVar = atomicReferenceArray.get(i2);
                    i = i;
                    if (hVar != null) {
                        AbstractC4953h<K, V> next = hVar.getNext();
                        int hash = hVar.getHash() & length2;
                        if (next == null) {
                            newEntryArray.set(hash, hVar);
                            i = i;
                        } else {
                            AbstractC4953h<K, V> hVar2 = hVar;
                            while (next != null) {
                                int hash2 = next.getHash() & length2;
                                hash = hash;
                                if (hash2 != hash) {
                                    hVar2 = next;
                                    hash = hash2;
                                }
                                next = next.getNext();
                            }
                            newEntryArray.set(hash, hVar2);
                            while (true) {
                                i = i;
                                if (hVar != hVar2) {
                                    int hash3 = hVar.getHash() & length2;
                                    AbstractC4953h<K, V> copyEntry = copyEntry(hVar, newEntryArray.get(hash3));
                                    if (copyEntry != null) {
                                        newEntryArray.set(hash3, copyEntry);
                                    } else {
                                        removeCollectedEntry(hVar);
                                        i--;
                                    }
                                    hVar = hVar.getNext();
                                }
                            }
                        }
                    }
                }
                this.table = newEntryArray;
                this.count = i;
            }
        }

        public void expireEntries(long j) {
            AbstractC4953h<K, V> peek;
            AbstractC4953h<K, V> peek2;
            drainRecencyQueue();
            do {
                peek = this.writeQueue.peek();
                if (peek == null || !this.map.m8507b(peek, j)) {
                    do {
                        peek2 = this.accessQueue.peek();
                        if (peek2 == null || !this.map.m8507b(peek2, j)) {
                            return;
                        }
                    } while (removeEntry(peek2, peek2.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(peek, peek.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        /* JADX WARN: Finally extract failed */
        public V get(Object obj, int i) {
            try {
                if (this.count != 0) {
                    long a = this.map.f30326p.mo8523a();
                    AbstractC4953h<K, V> liveEntry = getLiveEntry(obj, i, a);
                    if (liveEntry == null) {
                        postReadCleanup();
                        return null;
                    }
                    V v = liveEntry.getValueReference().get();
                    if (v != null) {
                        recordRead(liveEntry, a);
                        V scheduleRefresh = scheduleRefresh(liveEntry, liveEntry.getKey(), i, v, a, this.map.f30329s);
                        postReadCleanup();
                        return scheduleRefresh;
                    }
                    tryDrainReferenceQueues();
                }
                postReadCleanup();
                return null;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        public V get(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            AbstractC4953h<K, V> entry;
            C4933n.m24795a(k);
            C4933n.m24795a(cacheLoader);
            try {
                try {
                    if (!(this.count == 0 || (entry = getEntry(k, i)) == null)) {
                        long a = this.map.f30326p.mo8523a();
                        V liveValue = getLiveValue(entry, a);
                        if (liveValue != null) {
                            recordRead(entry, a);
                            this.statsCounter.mo8528a(1);
                            V scheduleRefresh = scheduleRefresh(entry, k, i, liveValue, a, cacheLoader);
                            postReadCleanup();
                            return scheduleRefresh;
                        }
                        AbstractC7376s<K, V> valueReference = entry.getValueReference();
                        if (valueReference.mo8460n()) {
                            V waitForLoadingValue = waitForLoadingValue(entry, k, valueReference);
                            postReadCleanup();
                            return waitForLoadingValue;
                        }
                    }
                    V lockedGetOrLoad = lockedGetOrLoad(k, i, cacheLoader);
                    postReadCleanup();
                    return lockedGetOrLoad;
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Error) {
                        throw new ExecutionError((Error) cause);
                    } else if (cause instanceof RuntimeException) {
                        throw new UncheckedExecutionException(cause);
                    } else {
                        throw e;
                    }
                }
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        public V getAndRecordStats(K k, int i, C7367k<K, V> kVar, AbstractFutureC5108l<V> lVar) throws ExecutionException {
            V v;
            Throwable th;
            try {
                v = (V) C5119t.m24495a(lVar);
                try {
                    if (v != null) {
                        this.statsCounter.mo8524b(kVar.m8466e());
                        storeLoadedValue(k, i, kVar, v);
                        if (v == null) {
                            this.statsCounter.mo8527a(kVar.m8466e());
                            removeLoadingValue(k, i, kVar);
                        }
                        return v;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k + ".");
                } catch (Throwable th2) {
                    th = th2;
                    if (v == null) {
                        this.statsCounter.mo8527a(kVar.m8466e());
                        removeLoadingValue(k, i, kVar);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                v = null;
            }
        }

        public AbstractC4953h<K, V> getEntry(Object obj, int i) {
            for (AbstractC4953h<K, V> first = getFirst(i); first != null; first = first.getNext()) {
                if (first.getHash() == i) {
                    K key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.f30315e.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        public AbstractC4953h<K, V> getFirst(int i) {
            AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        public AbstractC4953h<K, V> getLiveEntry(Object obj, int i, long j) {
            AbstractC4953h<K, V> entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.m8507b(entry, j)) {
                return entry;
            }
            tryExpireEntries(j);
            return null;
        }

        public V getLiveValue(AbstractC4953h<K, V> hVar, long j) {
            if (hVar.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = hVar.getValueReference().get();
            if (v == null) {
                tryDrainReferenceQueues();
                return null;
            } else if (!this.map.m8507b(hVar, j)) {
                return v;
            } else {
                tryExpireEntries(j);
                return null;
            }
        }

        public AbstractC4953h<K, V> getNextEvictable() {
            for (AbstractC4953h<K, V> hVar : this.accessQueue) {
                if (hVar.getValueReference().mo8458c() > 0) {
                    return hVar;
                }
            }
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            if (!this.map.m8510b()) {
                int i = this.threshold;
                if (i == this.maxSegmentWeight) {
                    this.threshold = i + 1;
                }
            }
            this.table = atomicReferenceArray;
        }

        /* JADX WARN: Finally extract failed */
        public C7367k<K, V> insertLoadingValueReference(K k, int i, boolean z) {
            lock();
            try {
                long a = this.map.f30326p.mo8523a();
                preWriteCleanup(a);
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                for (AbstractC4953h<K, V> hVar2 = hVar; hVar2 != null; hVar2 = hVar2.getNext()) {
                    K key = hVar2.getKey();
                    if (hVar2.getHash() == i && key != null && this.map.f30315e.equivalent(k, key)) {
                        AbstractC7376s<K, V> valueReference = hVar2.getValueReference();
                        if (!valueReference.mo8460n() && (!z || a - hVar2.getWriteTime() >= this.map.f30323m)) {
                            this.modCount++;
                            C7367k<K, V> kVar = new C7367k<>(valueReference);
                            hVar2.setValueReference(kVar);
                            unlock();
                            postWriteCleanup();
                            return kVar;
                        }
                        unlock();
                        postWriteCleanup();
                        return null;
                    }
                }
                this.modCount++;
                C7367k<K, V> kVar2 = new C7367k<>();
                AbstractC4953h<K, V> newEntry = newEntry(k, i, hVar);
                newEntry.setValueReference(kVar2);
                atomicReferenceArray.set(length, newEntry);
                unlock();
                postWriteCleanup();
                return kVar2;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        public AbstractFutureC5108l<V> loadAsync(K k, int i, C7367k<K, V> kVar, CacheLoader<? super K, V> cacheLoader) {
            AbstractFutureC5108l<V> a = kVar.m8470a(k, cacheLoader);
            a.mo7696a(new RunnableC7345a(k, i, kVar, a), C5110n.m24504a());
            return a;
        }

        public V loadSync(K k, int i, C7367k<K, V> kVar, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return getAndRecordStats(k, i, kVar, kVar.m8470a(k, cacheLoader));
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x011f, code lost:
            r13 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public V lockedGetOrLoad(K r8, int r9, com.google.common.cache.CacheLoader<? super K, V> r10) throws java.util.concurrent.ExecutionException {
            /*
                Method dump skipped, instructions count: 449
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.lockedGetOrLoad(java.lang.Object, int, com.google.common.cache.CacheLoader):java.lang.Object");
        }

        public AbstractC4953h<K, V> newEntry(K k, int i, AbstractC4953h<K, V> hVar) {
            EntryFactory entryFactory = this.map.f30327q;
            C4933n.m24795a(k);
            return entryFactory.newEntry(this, k, i, hVar);
        }

        public AtomicReferenceArray<AbstractC4953h<K, V>> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        public void postWriteCleanup() {
            runUnlockedCleanup();
        }

        public void preWriteCleanup(long j) {
            runLockedCleanup(j);
        }

        /* JADX WARN: Finally extract failed */
        public V put(K k, int i, V v, boolean z) {
            int i2;
            lock();
            try {
                long a = this.map.f30326p.mo8523a();
                preWriteCleanup(a);
                if (this.count + 1 > this.threshold) {
                    expand();
                }
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                AbstractC4953h<K, V> hVar2 = hVar;
                while (true) {
                    if (hVar2 == null) {
                        this.modCount++;
                        AbstractC4953h<K, V> newEntry = newEntry(k, i, hVar);
                        setValue(newEntry, k, v, a);
                        atomicReferenceArray.set(length, newEntry);
                        this.count++;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = hVar2.getKey();
                    if (hVar2.getHash() != i || key == null || !this.map.f30315e.equivalent(k, key)) {
                        hVar2 = hVar2.getNext();
                    } else {
                        AbstractC7376s<K, V> valueReference = hVar2.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 == null) {
                            this.modCount++;
                            if (valueReference.mo8462b()) {
                                enqueueNotification(k, i, v2, valueReference.mo8458c(), RemovalCause.COLLECTED);
                                setValue(hVar2, k, v, a);
                                i2 = this.count;
                            } else {
                                setValue(hVar2, k, v, a);
                                i2 = this.count + 1;
                            }
                            this.count = i2;
                            evictEntries(hVar2);
                        } else {
                            if (z) {
                                recordLockedRead(hVar2, a);
                            } else {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.mo8458c(), RemovalCause.REPLACED);
                                setValue(hVar2, k, v, a);
                                evictEntries(hVar2);
                            }
                            unlock();
                            postWriteCleanup();
                            return v2;
                        }
                    }
                }
                unlock();
                postWriteCleanup();
                return null;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean reclaimKey(AbstractC4953h<K, V> hVar, int i) {
            lock();
            try {
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                AbstractC4953h<K, V> hVar2 = atomicReferenceArray.get(length);
                for (AbstractC4953h<K, V> hVar3 = hVar2; hVar3 != null; hVar3 = hVar3.getNext()) {
                    if (hVar3 == hVar) {
                        this.modCount++;
                        AbstractC4953h<K, V> removeValueFromChain = removeValueFromChain(hVar2, hVar3, hVar3.getKey(), i, hVar3.getValueReference().get(), hVar3.getValueReference(), RemovalCause.COLLECTED);
                        int i2 = this.count;
                        atomicReferenceArray.set(length, removeValueFromChain);
                        this.count = i2 - 1;
                        unlock();
                        postWriteCleanup();
                        return true;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        public boolean reclaimValue(K k, int i, AbstractC7376s<K, V> sVar) {
            lock();
            try {
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                for (AbstractC4953h<K, V> hVar2 = hVar; hVar2 != null; hVar2 = hVar2.getNext()) {
                    K key = hVar2.getKey();
                    if (hVar2.getHash() == i && key != null && this.map.f30315e.equivalent(k, key)) {
                        if (hVar2.getValueReference() == sVar) {
                            this.modCount++;
                            AbstractC4953h<K, V> removeValueFromChain = removeValueFromChain(hVar, hVar2, key, i, sVar.get(), sVar, RemovalCause.COLLECTED);
                            int i2 = this.count;
                            atomicReferenceArray.set(length, removeValueFromChain);
                            this.count = i2 - 1;
                            unlock();
                            if (isHeldByCurrentThread()) {
                                return true;
                            }
                            postWriteCleanup();
                            return true;
                        } else {
                            unlock();
                            if (isHeldByCurrentThread()) {
                                return false;
                            }
                            postWriteCleanup();
                            return false;
                        }
                    }
                }
                unlock();
                if (isHeldByCurrentThread()) {
                    return false;
                }
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                throw th;
            }
        }

        public void recordLockedRead(AbstractC4953h<K, V> hVar, long j) {
            if (this.map.m8492h()) {
                hVar.setAccessTime(j);
            }
            this.accessQueue.add(hVar);
        }

        public void recordRead(AbstractC4953h<K, V> hVar, long j) {
            if (this.map.m8492h()) {
                hVar.setAccessTime(j);
            }
            this.recencyQueue.add(hVar);
        }

        public void recordWrite(AbstractC4953h<K, V> hVar, int i, long j) {
            drainRecencyQueue();
            this.totalWeight += i;
            if (this.map.m8492h()) {
                hVar.setAccessTime(j);
            }
            if (this.map.m8490j()) {
                hVar.setWriteTime(j);
            }
            this.accessQueue.add(hVar);
            this.writeQueue.add(hVar);
        }

        public V refresh(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            C7367k<K, V> insertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (insertLoadingValueReference == null) {
                return null;
            }
            AbstractFutureC5108l<V> loadAsync = loadAsync(k, i, insertLoadingValueReference, cacheLoader);
            if (!loadAsync.isDone()) {
                return null;
            }
            try {
                return (V) C5119t.m24495a(loadAsync);
            } catch (Throwable th) {
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
            r0 = r15.getValueReference();
            r0 = r0.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0072, code lost:
            if (r0 == null) goto L_0x007c;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0075, code lost:
            r10 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0083, code lost:
            if (r0.mo8462b() == false) goto L_0x00c6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0086, code lost:
            r10 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x008d, code lost:
            r9.modCount++;
            r0 = removeValueFromChain(r0, r15, r0, r11, r0, r0, r10);
            r0 = r9.count;
            r0.set(r0, r0);
            r9.count = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00bc, code lost:
            unlock();
            postWriteCleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00c5, code lost:
            return r0;
         */
        /* JADX WARN: Finally extract failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public V remove(java.lang.Object r10, int r11) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0068, code lost:
            r0 = r17.getValueReference();
            r0 = r0.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0087, code lost:
            if (r9.map.f30316f.equivalent(r12, r0) == false) goto L_0x0091;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x008a, code lost:
            r10 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0093, code lost:
            if (r0 != null) goto L_0x00ed;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:
            if (r0.mo8462b() == false) goto L_0x00ed;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a0, code lost:
            r10 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00a5, code lost:
            r9.modCount++;
            r0 = removeValueFromChain(r0, r17, r0, r11, r0, r0, r10);
            r0 = r9.count;
            r0.set(r0, r0);
            r9.count = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
            if (r10 != com.google.common.cache.RemovalCause.EXPLICIT) goto L_0x00df;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00df, code lost:
            r15 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00e2, code lost:
            unlock();
            postWriteCleanup();
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00ec, code lost:
            return r15;
         */
        /* JADX WARN: Finally extract failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean remove(java.lang.Object r10, int r11, java.lang.Object r12) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        public void removeCollectedEntry(AbstractC4953h<K, V> hVar) {
            enqueueNotification(hVar.getKey(), hVar.getHash(), hVar.getValueReference().get(), hVar.getValueReference().mo8458c(), RemovalCause.COLLECTED);
            this.writeQueue.remove(hVar);
            this.accessQueue.remove(hVar);
        }

        public boolean removeEntry(AbstractC4953h<K, V> hVar, int i, RemovalCause removalCause) {
            AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
            int length = (atomicReferenceArray.length() - 1) & i;
            AbstractC4953h<K, V> hVar2 = atomicReferenceArray.get(length);
            for (AbstractC4953h<K, V> hVar3 = hVar2; hVar3 != null; hVar3 = hVar3.getNext()) {
                if (hVar3 == hVar) {
                    this.modCount++;
                    AbstractC4953h<K, V> removeValueFromChain = removeValueFromChain(hVar2, hVar3, hVar3.getKey(), i, hVar3.getValueReference().get(), hVar3.getValueReference(), removalCause);
                    int i2 = this.count;
                    atomicReferenceArray.set(length, removeValueFromChain);
                    this.count = i2 - 1;
                    return true;
                }
            }
            return false;
        }

        public AbstractC4953h<K, V> removeEntryFromChain(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
            int i = this.count;
            AbstractC4953h<K, V> next = hVar2.getNext();
            while (hVar != hVar2) {
                AbstractC4953h<K, V> copyEntry = copyEntry(hVar, next);
                if (copyEntry != null) {
                    next = copyEntry;
                } else {
                    removeCollectedEntry(hVar);
                    i--;
                }
                hVar = hVar.getNext();
            }
            this.count = i;
            return next;
        }

        /* JADX WARN: Finally extract failed */
        public boolean removeLoadingValue(K k, int i, C7367k<K, V> kVar) {
            lock();
            try {
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                AbstractC4953h<K, V> hVar2 = hVar;
                while (true) {
                    if (hVar2 == null) {
                        break;
                    }
                    K key = hVar2.getKey();
                    if (hVar2.getHash() != i || key == null || !this.map.f30315e.equivalent(k, key)) {
                        hVar2 = hVar2.getNext();
                    } else if (hVar2.getValueReference() == kVar) {
                        if (kVar.mo8462b()) {
                            hVar2.setValueReference(kVar.m8465f());
                        } else {
                            atomicReferenceArray.set(length, removeEntryFromChain(hVar, hVar2));
                        }
                        unlock();
                        postWriteCleanup();
                        return true;
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        public AbstractC4953h<K, V> removeValueFromChain(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2, K k, int i, V v, AbstractC7376s<K, V> sVar, RemovalCause removalCause) {
            enqueueNotification(k, i, v, sVar.mo8458c(), removalCause);
            this.writeQueue.remove(hVar2);
            this.accessQueue.remove(hVar2);
            if (!sVar.mo8460n()) {
                return removeEntryFromChain(hVar, hVar2);
            }
            sVar.mo8463a(null);
            return hVar;
        }

        /* JADX WARN: Finally extract failed */
        public V replace(K k, int i, V v) {
            lock();
            try {
                long a = this.map.f30326p.mo8523a();
                preWriteCleanup(a);
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                AbstractC4953h<K, V> hVar2 = hVar;
                while (true) {
                    if (hVar2 == null) {
                        break;
                    }
                    K key = hVar2.getKey();
                    if (hVar2.getHash() != i || key == null || !this.map.f30315e.equivalent(k, key)) {
                        hVar2 = hVar2.getNext();
                    } else {
                        AbstractC7376s<K, V> valueReference = hVar2.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 != null) {
                            this.modCount++;
                            enqueueNotification(k, i, v2, valueReference.mo8458c(), RemovalCause.REPLACED);
                            setValue(hVar2, k, v, a);
                            evictEntries(hVar2);
                            unlock();
                            postWriteCleanup();
                            return v2;
                        } else if (valueReference.mo8462b()) {
                            this.modCount++;
                            AbstractC4953h<K, V> removeValueFromChain = removeValueFromChain(hVar, hVar2, key, i, v2, valueReference, RemovalCause.COLLECTED);
                            int i2 = this.count;
                            atomicReferenceArray.set(length, removeValueFromChain);
                            this.count = i2 - 1;
                        }
                    }
                }
                unlock();
                postWriteCleanup();
                return null;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        /* JADX WARN: Finally extract failed */
        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                long a = this.map.f30326p.mo8523a();
                preWriteCleanup(a);
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                AbstractC4953h<K, V> hVar2 = hVar;
                while (true) {
                    if (hVar2 == null) {
                        break;
                    }
                    K key = hVar2.getKey();
                    if (hVar2.getHash() != i || key == null || !this.map.f30315e.equivalent(k, key)) {
                        hVar2 = hVar2.getNext();
                    } else {
                        AbstractC7376s<K, V> valueReference = hVar2.getValueReference();
                        V v3 = valueReference.get();
                        if (v3 == null) {
                            if (valueReference.mo8462b()) {
                                this.modCount++;
                                AbstractC4953h<K, V> removeValueFromChain = removeValueFromChain(hVar, hVar2, key, i, v3, valueReference, RemovalCause.COLLECTED);
                                int i2 = this.count;
                                atomicReferenceArray.set(length, removeValueFromChain);
                                this.count = i2 - 1;
                            }
                        } else if (this.map.f30316f.equivalent(v, v3)) {
                            this.modCount++;
                            enqueueNotification(k, i, v3, valueReference.mo8458c(), RemovalCause.REPLACED);
                            setValue(hVar2, k, v2, a);
                            evictEntries(hVar2);
                            unlock();
                            postWriteCleanup();
                            return true;
                        } else {
                            recordLockedRead(hVar2, a);
                        }
                    }
                }
                unlock();
                postWriteCleanup();
                return false;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        public void runLockedCleanup(long j) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(j);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public void runUnlockedCleanup() {
            if (!isHeldByCurrentThread()) {
                this.map.m8493g();
            }
        }

        public V scheduleRefresh(AbstractC4953h<K, V> hVar, K k, int i, V v, long j, CacheLoader<? super K, V> cacheLoader) {
            V refresh;
            return (!this.map.m8489k() || j - hVar.getWriteTime() <= this.map.f30323m || hVar.getValueReference().mo8460n() || (refresh = refresh(k, i, cacheLoader, true)) == null) ? v : refresh;
        }

        public void setValue(AbstractC4953h<K, V> hVar, K k, V v, long j) {
            AbstractC7376s<K, V> valueReference = hVar.getValueReference();
            int weigh = this.map.f30320j.weigh(k, v);
            C4933n.m24775b(weigh >= 0, "Weights must be non-negative");
            hVar.setValueReference(this.map.f30318h.referenceValue(this, hVar, v, weigh));
            recordWrite(hVar, weigh, j);
            valueReference.mo8463a(v);
        }

        /* JADX WARN: Finally extract failed */
        public boolean storeLoadedValue(K k, int i, C7367k<K, V> kVar, V v) {
            lock();
            try {
                long a = this.map.f30326p.mo8523a();
                preWriteCleanup(a);
                int i2 = this.count + 1;
                int i3 = i2;
                if (i2 > this.threshold) {
                    expand();
                    i3 = this.count + 1;
                }
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(length);
                AbstractC4953h<K, V> hVar2 = hVar;
                while (true) {
                    if (hVar2 == null) {
                        this.modCount++;
                        AbstractC4953h<K, V> newEntry = newEntry(k, i, hVar);
                        setValue(newEntry, k, v, a);
                        atomicReferenceArray.set(length, newEntry);
                        this.count = i3;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = hVar2.getKey();
                    if (hVar2.getHash() != i || key == null || !this.map.f30315e.equivalent(k, key)) {
                        hVar2 = hVar2.getNext();
                    } else {
                        AbstractC7376s<K, V> valueReference = hVar2.getValueReference();
                        V v2 = valueReference.get();
                        if (kVar != valueReference && (v2 != null || valueReference == LocalCache.f30309x)) {
                            enqueueNotification(k, i, v, 0, RemovalCause.REPLACED);
                            unlock();
                            postWriteCleanup();
                            return false;
                        }
                        this.modCount++;
                        int i4 = i3;
                        if (kVar.mo8462b()) {
                            enqueueNotification(k, i, v2, kVar.mo8458c(), v2 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                            i4 = i3 - 1;
                        }
                        setValue(hVar2, k, v, a);
                        this.count = i4;
                        evictEntries(hVar2);
                    }
                }
                unlock();
                postWriteCleanup();
                return true;
            } catch (Throwable th) {
                unlock();
                postWriteCleanup();
                throw th;
            }
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        public void tryExpireEntries(long j) {
            if (tryLock()) {
                try {
                    expireEntries(j);
                } finally {
                    unlock();
                }
            }
        }

        public V waitForLoadingValue(AbstractC4953h<K, V> hVar, K k, AbstractC7376s<K, V> sVar) throws ExecutionException {
            if (sVar.mo8460n()) {
                C4933n.m24772b(!Thread.holdsLock(hVar), "Recursive load of: %s", k);
                try {
                    V d = sVar.mo8461d();
                    if (d != null) {
                        recordRead(hVar, this.map.f30326p.mo8523a());
                        return d;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k + ".");
                } finally {
                    this.statsCounter.mo8525b(1);
                }
            } else {
                throw new AssertionError();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$Strength.class */
    public enum Strength {
        STRONG { // from class: com.google.common.cache.LocalCache.Strength.1
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> AbstractC7376s<K, V> referenceValue(Segment<K, V> segment, AbstractC4953h<K, V> hVar, V v, int i) {
                return i == 1 ? new C7373p<>(v) : new C7350a0<>(v, i);
            }
        },
        SOFT { // from class: com.google.common.cache.LocalCache.Strength.2
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> AbstractC7376s<K, V> referenceValue(Segment<K, V> segment, AbstractC4953h<K, V> hVar, V v, int i) {
                return i == 1 ? new C7369l<>(segment.valueReferenceQueue, v, hVar) : new C7383z<>(segment.valueReferenceQueue, v, hVar, i);
            }
        },
        WEAK { // from class: com.google.common.cache.LocalCache.Strength.3
            @Override // com.google.common.cache.LocalCache.Strength
            public Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }

            @Override // com.google.common.cache.LocalCache.Strength
            public <K, V> AbstractC7376s<K, V> referenceValue(Segment<K, V> segment, AbstractC4953h<K, V> hVar, V v, int i) {
                return i == 1 ? new C7381x<>(segment.valueReferenceQueue, v, hVar) : new C7352b0<>(segment.valueReferenceQueue, v, hVar, i);
            }
        };

        /* synthetic */ Strength(C7349a aVar) {
            this();
        }

        public abstract Equivalence<Object> defaultEquivalence();

        public abstract <K, V> AbstractC7376s<K, V> referenceValue(Segment<K, V> segment, AbstractC4953h<K, V> hVar, V v, int i);
    }

    /* renamed from: com.google.common.cache.LocalCache$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$a.class */
    public static final class C7349a implements AbstractC7376s<Object, Object> {
        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC4953h<Object, Object> mo8464a() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<Object, Object> mo8459a(ReferenceQueue<Object> referenceQueue, Object obj, AbstractC4953h<Object, Object> hVar) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public void mo8463a(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: b */
        public boolean mo8462b() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: d */
        public Object mo8461d() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: n */
        public boolean mo8460n() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$a0 */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$a0.class */
    public static final class C7350a0<K, V> extends C7373p<K, V> {

        /* renamed from: b */
        public final int f30339b;

        public C7350a0(V v, int i) {
            super(v);
            this.f30339b = i;
        }

        @Override // com.google.common.cache.LocalCache.C7373p, com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return this.f30339b;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$b.class */
    public static final class C7351b extends AbstractQueue<Object> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.m8349of().iterator();
        }

        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$b0 */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$b0.class */
    public static final class C7352b0<K, V> extends C7381x<K, V> {

        /* renamed from: b */
        public final int f30340b;

        public C7352b0(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar, int i) {
            super(referenceQueue, v, hVar);
            this.f30340b = i;
        }

        @Override // com.google.common.cache.LocalCache.C7381x, com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return new C7352b0(referenceQueue, v, hVar, this.f30340b);
        }

        @Override // com.google.common.cache.LocalCache.C7381x, com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return this.f30340b;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$c.class */
    public abstract class AbstractC7353c<T> extends AbstractSet<T> {

        /* renamed from: a */
        public final ConcurrentMap<?, ?> f30341a;

        public AbstractC7353c(LocalCache localCache, ConcurrentMap<?, ?> concurrentMap) {
            this.f30341a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f30341a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f30341a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f30341a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return LocalCache.m8503b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.m8503b((Collection) this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$c0 */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$c0.class */
    public static final class C7354c0<K, V> extends AbstractQueue<AbstractC4953h<K, V>> {

        /* renamed from: a */
        public final AbstractC4953h<K, V> f30342a = new C7355a(this);

        /* renamed from: com.google.common.cache.LocalCache$c0$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$c0$a.class */
        public class C7355a extends AbstractC7357d<K, V> {

            /* renamed from: a */
            public AbstractC4953h<K, V> f30343a = this;

            /* renamed from: b */
            public AbstractC4953h<K, V> f30344b = this;

            public C7355a(C7354c0 c0Var) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public AbstractC4953h<K, V> getNextInWriteQueue() {
                return this.f30343a;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public AbstractC4953h<K, V> getPreviousInWriteQueue() {
                return this.f30344b;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
                this.f30343a = hVar;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
                this.f30344b = hVar;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setWriteTime(long j) {
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$c0$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$c0$b.class */
        public class C7356b extends AbstractC4982g<AbstractC4953h<K, V>> {
            public C7356b(AbstractC4953h hVar) {
                super(hVar);
            }

            /* renamed from: a */
            public AbstractC4953h<K, V> m8478a(AbstractC4953h<K, V> hVar) {
                AbstractC4953h<K, V> nextInWriteQueue = hVar.getNextInWriteQueue();
                AbstractC4953h<K, V> hVar2 = nextInWriteQueue;
                if (nextInWriteQueue == C7354c0.this.f30342a) {
                    hVar2 = null;
                }
                return hVar2;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4982g
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8066a(Object obj) {
                return m8478a((AbstractC4953h) ((AbstractC4953h) obj));
            }
        }

        /* renamed from: a */
        public boolean offer(AbstractC4953h<K, V> hVar) {
            LocalCache.m8506b(hVar.getPreviousInWriteQueue(), hVar.getNextInWriteQueue());
            LocalCache.m8506b(this.f30342a.getPreviousInWriteQueue(), hVar);
            LocalCache.m8506b(hVar, this.f30342a);
            return true;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractC4953h<K, V> nextInWriteQueue = this.f30342a.getNextInWriteQueue();
            while (true) {
                AbstractC4953h<K, V> hVar = this.f30342a;
                if (nextInWriteQueue != hVar) {
                    nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue();
                    LocalCache.m8500c((AbstractC4953h) nextInWriteQueue);
                } else {
                    hVar.setNextInWriteQueue(hVar);
                    AbstractC4953h<K, V> hVar2 = this.f30342a;
                    hVar2.setPreviousInWriteQueue(hVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((AbstractC4953h) obj).getNextInWriteQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f30342a.getNextInWriteQueue() == this.f30342a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<AbstractC4953h<K, V>> iterator() {
            return new C7356b(peek());
        }

        @Override // java.util.Queue
        public AbstractC4953h<K, V> peek() {
            AbstractC4953h<K, V> nextInWriteQueue = this.f30342a.getNextInWriteQueue();
            AbstractC4953h<K, V> hVar = nextInWriteQueue;
            if (nextInWriteQueue == this.f30342a) {
                hVar = null;
            }
            return hVar;
        }

        @Override // java.util.Queue
        public AbstractC4953h<K, V> poll() {
            AbstractC4953h<K, V> nextInWriteQueue = this.f30342a.getNextInWriteQueue();
            if (nextInWriteQueue == this.f30342a) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            AbstractC4953h hVar = (AbstractC4953h) obj;
            AbstractC4953h<K, V> previousInWriteQueue = hVar.getPreviousInWriteQueue();
            AbstractC4953h<K, V> nextInWriteQueue = hVar.getNextInWriteQueue();
            LocalCache.m8506b(previousInWriteQueue, nextInWriteQueue);
            LocalCache.m8500c(hVar);
            return nextInWriteQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (AbstractC4953h<K, V> nextInWriteQueue = this.f30342a.getNextInWriteQueue(); nextInWriteQueue != this.f30342a; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$d.class */
    public static abstract class AbstractC7357d<K, V> implements AbstractC4953h<K, V> {
        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC7376s<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setValueReference(AbstractC7376s<K, V> sVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$d0 */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$d0.class */
    public final class C7358d0 implements Map.Entry<K, V> {

        /* renamed from: a */
        public final K f30346a;

        /* renamed from: b */
        public V f30347b;

        public C7358d0(K k, V v) {
            this.f30346a = k;
            this.f30347b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                z = false;
                if (this.f30346a.equals(entry.getKey())) {
                    z = false;
                    if (this.f30347b.equals(entry.getValue())) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f30346a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f30347b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f30346a.hashCode() ^ this.f30347b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) LocalCache.this.put(this.f30346a, v);
            this.f30347b = v;
            return v2;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$e */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$e.class */
    public static final class C7359e<K, V> extends AbstractQueue<AbstractC4953h<K, V>> {

        /* renamed from: a */
        public final AbstractC4953h<K, V> f30349a = new C7360a(this);

        /* renamed from: com.google.common.cache.LocalCache$e$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$e$a.class */
        public class C7360a extends AbstractC7357d<K, V> {

            /* renamed from: a */
            public AbstractC4953h<K, V> f30350a = this;

            /* renamed from: b */
            public AbstractC4953h<K, V> f30351b = this;

            public C7360a(C7359e eVar) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public AbstractC4953h<K, V> getNextInAccessQueue() {
                return this.f30350a;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public AbstractC4953h<K, V> getPreviousInAccessQueue() {
                return this.f30351b;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setAccessTime(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
                this.f30350a = hVar;
            }

            @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
            public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
                this.f30351b = hVar;
            }
        }

        /* renamed from: com.google.common.cache.LocalCache$e$b */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$e$b.class */
        public class C7361b extends AbstractC4982g<AbstractC4953h<K, V>> {
            public C7361b(AbstractC4953h hVar) {
                super(hVar);
            }

            /* renamed from: a */
            public AbstractC4953h<K, V> m8476a(AbstractC4953h<K, V> hVar) {
                AbstractC4953h<K, V> nextInAccessQueue = hVar.getNextInAccessQueue();
                AbstractC4953h<K, V> hVar2 = nextInAccessQueue;
                if (nextInAccessQueue == C7359e.this.f30349a) {
                    hVar2 = null;
                }
                return hVar2;
            }

            @Override // p131c.p161d.p266c.p269c.AbstractC4982g
            /* renamed from: a */
            public /* bridge */ /* synthetic */ Object mo8066a(Object obj) {
                return m8476a((AbstractC4953h) ((AbstractC4953h) obj));
            }
        }

        /* renamed from: a */
        public boolean offer(AbstractC4953h<K, V> hVar) {
            LocalCache.m8517a(hVar.getPreviousInAccessQueue(), hVar.getNextInAccessQueue());
            LocalCache.m8517a(this.f30349a.getPreviousInAccessQueue(), hVar);
            LocalCache.m8517a(hVar, this.f30349a);
            return true;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractC4953h<K, V> nextInAccessQueue = this.f30349a.getNextInAccessQueue();
            while (true) {
                AbstractC4953h<K, V> hVar = this.f30349a;
                if (nextInAccessQueue != hVar) {
                    nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue();
                    LocalCache.m8508b((AbstractC4953h) nextInAccessQueue);
                } else {
                    hVar.setNextInAccessQueue(hVar);
                    AbstractC4953h<K, V> hVar2 = this.f30349a;
                    hVar2.setPreviousInAccessQueue(hVar2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((AbstractC4953h) obj).getNextInAccessQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f30349a.getNextInAccessQueue() == this.f30349a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<AbstractC4953h<K, V>> iterator() {
            return new C7361b(peek());
        }

        @Override // java.util.Queue
        public AbstractC4953h<K, V> peek() {
            AbstractC4953h<K, V> nextInAccessQueue = this.f30349a.getNextInAccessQueue();
            AbstractC4953h<K, V> hVar = nextInAccessQueue;
            if (nextInAccessQueue == this.f30349a) {
                hVar = null;
            }
            return hVar;
        }

        @Override // java.util.Queue
        public AbstractC4953h<K, V> poll() {
            AbstractC4953h<K, V> nextInAccessQueue = this.f30349a.getNextInAccessQueue();
            if (nextInAccessQueue == this.f30349a) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            AbstractC4953h hVar = (AbstractC4953h) obj;
            AbstractC4953h<K, V> previousInAccessQueue = hVar.getPreviousInAccessQueue();
            AbstractC4953h<K, V> nextInAccessQueue = hVar.getNextInAccessQueue();
            LocalCache.m8517a(previousInAccessQueue, nextInAccessQueue);
            LocalCache.m8508b(hVar);
            return nextInAccessQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (AbstractC4953h<K, V> nextInAccessQueue = this.f30349a.getNextInAccessQueue(); nextInAccessQueue != this.f30349a; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$f */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$f.class */
    public final class C7362f extends LocalCache<K, V>.AbstractC7364h<Map.Entry<K, V>> {
        public C7362f(LocalCache localCache) {
            super();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            return m8473b();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$g */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$g.class */
    public final class C7363g extends LocalCache<K, V>.AbstractC7353c<Map.Entry<K, V>> {
        public C7363g(ConcurrentMap<?, ?> concurrentMap) {
            super(LocalCache.this, concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null) {
                return false;
            }
            Object obj2 = LocalCache.this.get(key);
            boolean z = false;
            if (obj2 != null) {
                z = false;
                if (LocalCache.this.f30316f.equivalent(entry.getValue(), obj2)) {
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C7362f(LocalCache.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            boolean z = false;
            if (key != null) {
                z = false;
                if (LocalCache.this.remove(key, entry.getValue())) {
                    z = true;
                }
            }
            return z;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$h */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$h.class */
    public abstract class AbstractC7364h<T> implements Iterator<T> {

        /* renamed from: a */
        public int f30354a;

        /* renamed from: b */
        public int f30355b = -1;

        /* renamed from: c */
        public Segment<K, V> f30356c;

        /* renamed from: d */
        public AtomicReferenceArray<AbstractC4953h<K, V>> f30357d;

        /* renamed from: e */
        public AbstractC4953h<K, V> f30358e;

        /* renamed from: f */
        public LocalCache<K, V>.C7358d0 f30359f;

        /* renamed from: g */
        public LocalCache<K, V>.C7358d0 f30360g;

        public AbstractC7364h() {
            this.f30354a = LocalCache.this.f30313c.length - 1;
            m8475a();
        }

        /* renamed from: a */
        public final void m8475a() {
            this.f30359f = null;
            if (!m8472c() && !m8471d()) {
                while (true) {
                    int i = this.f30354a;
                    if (i >= 0) {
                        Segment<K, V>[] segmentArr = LocalCache.this.f30313c;
                        this.f30354a = i - 1;
                        Segment<K, V> segment = segmentArr[i];
                        this.f30356c = segment;
                        if (segment.count != 0) {
                            AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.f30356c.table;
                            this.f30357d = atomicReferenceArray;
                            this.f30355b = atomicReferenceArray.length() - 1;
                            if (m8471d()) {
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        /* renamed from: a */
        public boolean m8474a(AbstractC4953h<K, V> hVar) {
            boolean z;
            try {
                long a = LocalCache.this.f30326p.mo8523a();
                K key = hVar.getKey();
                Object a2 = LocalCache.this.m8518a(hVar, a);
                if (a2 != null) {
                    this.f30359f = new C7358d0(key, a2);
                    z = true;
                } else {
                    z = false;
                }
                this.f30356c.postReadCleanup();
                return z;
            } catch (Throwable th) {
                this.f30356c.postReadCleanup();
                throw th;
            }
        }

        /* renamed from: b */
        public LocalCache<K, V>.C7358d0 m8473b() {
            LocalCache<K, V>.C7358d0 d0Var = this.f30359f;
            if (d0Var != null) {
                this.f30360g = d0Var;
                m8475a();
                return this.f30360g;
            }
            throw new NoSuchElementException();
        }

        /* renamed from: c */
        public boolean m8472c() {
            AbstractC4953h<K, V> hVar = this.f30358e;
            if (hVar == null) {
                return false;
            }
            while (true) {
                this.f30358e = hVar.getNext();
                AbstractC4953h<K, V> hVar2 = this.f30358e;
                if (hVar2 == null) {
                    return false;
                }
                if (m8474a(hVar2)) {
                    return true;
                }
                hVar = this.f30358e;
            }
        }

        /* renamed from: d */
        public boolean m8471d() {
            while (true) {
                int i = this.f30355b;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<AbstractC4953h<K, V>> atomicReferenceArray = this.f30357d;
                this.f30355b = i - 1;
                AbstractC4953h<K, V> hVar = atomicReferenceArray.get(i);
                this.f30358e = hVar;
                if (hVar != null && (m8474a(hVar) || m8472c())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30359f != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            C4933n.m24776b(this.f30360g != null);
            LocalCache.this.remove(this.f30360g.getKey());
            this.f30360g = null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$i */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$i.class */
    public final class C7365i extends LocalCache<K, V>.AbstractC7364h<K> {
        public C7365i(LocalCache localCache) {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return m8473b().getKey();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$j */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$j.class */
    public final class C7366j extends LocalCache<K, V>.AbstractC7353c<K> {
        public C7366j(ConcurrentMap<?, ?> concurrentMap) {
            super(LocalCache.this, concurrentMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f30341a.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C7365i(LocalCache.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.f30341a.remove(obj) != null;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$k */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$k.class */
    public static class C7367k<K, V> implements AbstractC7376s<K, V> {

        /* renamed from: a */
        public volatile AbstractC7376s<K, V> f30363a;

        /* renamed from: b */
        public final C5115q<V> f30364b;

        /* renamed from: c */
        public final C4938q f30365c;

        /* renamed from: com.google.common.cache.LocalCache$k$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$k$a.class */
        public class C7368a implements AbstractC4920g<V, V> {
            public C7368a() {
            }

            @Override // p131c.p161d.p266c.p267a.AbstractC4920g
            public V apply(V v) {
                C7367k.this.m8468b((C7367k) v);
                return v;
            }
        }

        public C7367k() {
            this(LocalCache.m8480t());
        }

        public C7367k(AbstractC7376s<K, V> sVar) {
            this.f30364b = C5115q.m24502i();
            this.f30365c = C4938q.m24757f();
            this.f30363a = sVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC4953h<K, V> mo8464a() {
            return null;
        }

        /* renamed from: a */
        public AbstractFutureC5108l<V> m8470a(K k, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.f30365c.m24760c();
                V v = this.f30363a.get();
                if (v == null) {
                    V load = cacheLoader.load(k);
                    return m8468b((C7367k<K, V>) load) ? this.f30364b : C5100g.m24515a(load);
                }
                AbstractFutureC5108l<V> reload = cacheLoader.reload(k, v);
                return reload == null ? C5100g.m24515a((Object) null) : C5100g.m24516a(reload, new C7368a(), C5110n.m24504a());
            } catch (Throwable th) {
                AbstractFutureC5108l<V> a = m8467b(th) ? this.f30364b : m8469a(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return a;
            }
        }

        /* renamed from: a */
        public final AbstractFutureC5108l<V> m8469a(Throwable th) {
            return C5100g.m24514a(th);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public void mo8463a(V v) {
            if (v != null) {
                m8468b((C7367k<K, V>) v);
            } else {
                this.f30363a = LocalCache.m8480t();
            }
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: b */
        public boolean mo8462b() {
            return this.f30363a.mo8462b();
        }

        /* renamed from: b */
        public boolean m8468b(V v) {
            return this.f30364b.mo275b((C5115q<V>) v);
        }

        /* renamed from: b */
        public boolean m8467b(Throwable th) {
            return this.f30364b.mo276a(th);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return this.f30363a.mo8458c();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: d */
        public V mo8461d() throws ExecutionException {
            return (V) C5119t.m24495a(this.f30364b);
        }

        /* renamed from: e */
        public long m8466e() {
            return this.f30365c.m24763a(TimeUnit.NANOSECONDS);
        }

        /* renamed from: f */
        public AbstractC7376s<K, V> m8465f() {
            return this.f30363a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        public V get() {
            return this.f30363a.get();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: n */
        public boolean mo8460n() {
            return true;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$l */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$l.class */
    public static class C7369l<K, V> extends SoftReference<V> implements AbstractC7376s<K, V> {

        /* renamed from: a */
        public final AbstractC4953h<K, V> f30367a;

        public C7369l(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            super(v, referenceQueue);
            this.f30367a = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC4953h<K, V> mo8464a() {
            return this.f30367a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return new C7369l(referenceQueue, v, hVar);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public void mo8463a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: b */
        public boolean mo8462b() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: d */
        public V mo8461d() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: n */
        public boolean mo8460n() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$m */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$m.class */
    public static final class C7370m<K, V> extends C7372o<K, V> {

        /* renamed from: e */
        public volatile long f30368e = Long.MAX_VALUE;

        /* renamed from: f */
        public AbstractC4953h<K, V> f30369f = LocalCache.m8481s();

        /* renamed from: g */
        public AbstractC4953h<K, V> f30370g = LocalCache.m8481s();

        public C7370m(K k, int i, AbstractC4953h<K, V> hVar) {
            super(k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            return this.f30368e;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInAccessQueue() {
            return this.f30369f;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            return this.f30370g;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
            this.f30368e = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30369f = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30370g = hVar;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$n */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$n.class */
    public static final class C7371n<K, V> extends C7372o<K, V> {

        /* renamed from: e */
        public volatile long f30371e = Long.MAX_VALUE;

        /* renamed from: f */
        public AbstractC4953h<K, V> f30372f = LocalCache.m8481s();

        /* renamed from: g */
        public AbstractC4953h<K, V> f30373g = LocalCache.m8481s();

        /* renamed from: h */
        public volatile long f30374h = Long.MAX_VALUE;

        /* renamed from: i */
        public AbstractC4953h<K, V> f30375i = LocalCache.m8481s();

        /* renamed from: j */
        public AbstractC4953h<K, V> f30376j = LocalCache.m8481s();

        public C7371n(K k, int i, AbstractC4953h<K, V> hVar) {
            super(k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            return this.f30371e;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInAccessQueue() {
            return this.f30372f;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInWriteQueue() {
            return this.f30375i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            return this.f30373g;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            return this.f30376j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            return this.f30374h;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
            this.f30371e = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30372f = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30375i = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30373g = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30376j = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
            this.f30374h = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$o */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$o.class */
    public static class C7372o<K, V> extends AbstractC7357d<K, V> {

        /* renamed from: a */
        public final K f30377a;

        /* renamed from: b */
        public final int f30378b;

        /* renamed from: c */
        public final AbstractC4953h<K, V> f30379c;

        /* renamed from: d */
        public volatile AbstractC7376s<K, V> f30380d = LocalCache.m8480t();

        public C7372o(K k, int i, AbstractC4953h<K, V> hVar) {
            this.f30377a = k;
            this.f30378b = i;
            this.f30379c = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public int getHash() {
            return this.f30378b;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public K getKey() {
            return this.f30377a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNext() {
            return this.f30379c;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC7376s<K, V> getValueReference() {
            return this.f30380d;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setValueReference(AbstractC7376s<K, V> sVar) {
            this.f30380d = sVar;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$p */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$p.class */
    public static class C7373p<K, V> implements AbstractC7376s<K, V> {

        /* renamed from: a */
        public final V f30381a;

        public C7373p(V v) {
            this.f30381a = v;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC4953h<K, V> mo8464a() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public void mo8463a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: b */
        public boolean mo8462b() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: d */
        public V mo8461d() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        public V get() {
            return this.f30381a;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: n */
        public boolean mo8460n() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$q */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$q.class */
    public static final class C7374q<K, V> extends C7372o<K, V> {

        /* renamed from: e */
        public volatile long f30382e = Long.MAX_VALUE;

        /* renamed from: f */
        public AbstractC4953h<K, V> f30383f = LocalCache.m8481s();

        /* renamed from: g */
        public AbstractC4953h<K, V> f30384g = LocalCache.m8481s();

        public C7374q(K k, int i, AbstractC4953h<K, V> hVar) {
            super(k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInWriteQueue() {
            return this.f30383f;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            return this.f30384g;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            return this.f30382e;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30383f = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30384g = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7357d, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
            this.f30382e = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$r */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$r.class */
    public final class C7375r extends LocalCache<K, V>.AbstractC7364h<V> {
        public C7375r(LocalCache localCache) {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return m8473b().getValue();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$s */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$s.class */
    public interface AbstractC7376s<K, V> {
        /* renamed from: a */
        AbstractC4953h<K, V> mo8464a();

        /* renamed from: a */
        AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar);

        /* renamed from: a */
        void mo8463a(V v);

        /* renamed from: b */
        boolean mo8462b();

        /* renamed from: c */
        int mo8458c();

        /* renamed from: d */
        V mo8461d() throws ExecutionException;

        V get();

        /* renamed from: n */
        boolean mo8460n();
    }

    /* renamed from: com.google.common.cache.LocalCache$t */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$t.class */
    public final class C7377t extends AbstractCollection<V> {

        /* renamed from: a */
        public final ConcurrentMap<?, ?> f30385a;

        public C7377t(ConcurrentMap<?, ?> concurrentMap) {
            this.f30385a = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f30385a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f30385a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f30385a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C7375r(LocalCache.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f30385a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return LocalCache.m8503b((Collection) this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.m8503b((Collection) this).toArray(eArr);
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$u */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$u.class */
    public static final class C7378u<K, V> extends C7380w<K, V> {

        /* renamed from: d */
        public volatile long f30387d = Long.MAX_VALUE;

        /* renamed from: e */
        public AbstractC4953h<K, V> f30388e = LocalCache.m8481s();

        /* renamed from: f */
        public AbstractC4953h<K, V> f30389f = LocalCache.m8481s();

        public C7378u(ReferenceQueue<K> referenceQueue, K k, int i, AbstractC4953h<K, V> hVar) {
            super(referenceQueue, k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            return this.f30387d;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInAccessQueue() {
            return this.f30388e;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            return this.f30389f;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
            this.f30387d = j;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30388e = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30389f = hVar;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$v */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$v.class */
    public static final class C7379v<K, V> extends C7380w<K, V> {

        /* renamed from: d */
        public volatile long f30390d = Long.MAX_VALUE;

        /* renamed from: e */
        public AbstractC4953h<K, V> f30391e = LocalCache.m8481s();

        /* renamed from: f */
        public AbstractC4953h<K, V> f30392f = LocalCache.m8481s();

        /* renamed from: g */
        public volatile long f30393g = Long.MAX_VALUE;

        /* renamed from: h */
        public AbstractC4953h<K, V> f30394h = LocalCache.m8481s();

        /* renamed from: i */
        public AbstractC4953h<K, V> f30395i = LocalCache.m8481s();

        public C7379v(ReferenceQueue<K> referenceQueue, K k, int i, AbstractC4953h<K, V> hVar) {
            super(referenceQueue, k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getAccessTime() {
            return this.f30390d;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInAccessQueue() {
            return this.f30391e;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInWriteQueue() {
            return this.f30394h;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            return this.f30392f;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            return this.f30395i;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            return this.f30393g;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setAccessTime(long j) {
            this.f30390d = j;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30391e = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30394h = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            this.f30392f = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30395i = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
            this.f30393g = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$w */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$w.class */
    public static class C7380w<K, V> extends WeakReference<K> implements AbstractC4953h<K, V> {

        /* renamed from: a */
        public final int f30396a;

        /* renamed from: b */
        public final AbstractC4953h<K, V> f30397b;

        /* renamed from: c */
        public volatile AbstractC7376s<K, V> f30398c = LocalCache.m8480t();

        public C7380w(ReferenceQueue<K> referenceQueue, K k, int i, AbstractC4953h<K, V> hVar) {
            super(k, referenceQueue);
            this.f30396a = i;
            this.f30397b = hVar;
        }

        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public int getHash() {
            return this.f30396a;
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public K getKey() {
            return get();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNext() {
            return this.f30397b;
        }

        public AbstractC4953h<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public AbstractC4953h<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        public AbstractC4953h<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC7376s<K, V> getValueReference() {
            return this.f30398c;
        }

        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        public void setNextInAccessQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInAccessQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4953h
        public void setValueReference(AbstractC7376s<K, V> sVar) {
            this.f30398c = sVar;
        }

        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$x */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$x.class */
    public static class C7381x<K, V> extends WeakReference<V> implements AbstractC7376s<K, V> {

        /* renamed from: a */
        public final AbstractC4953h<K, V> f30399a;

        public C7381x(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            super(v, referenceQueue);
            this.f30399a = hVar;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC4953h<K, V> mo8464a() {
            return this.f30399a;
        }

        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return new C7381x(referenceQueue, v, hVar);
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public void mo8463a(V v) {
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: b */
        public boolean mo8462b() {
            return true;
        }

        /* renamed from: c */
        public int mo8458c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: d */
        public V mo8461d() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: n */
        public boolean mo8460n() {
            return false;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$y */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$y.class */
    public static final class C7382y<K, V> extends C7380w<K, V> {

        /* renamed from: d */
        public volatile long f30400d = Long.MAX_VALUE;

        /* renamed from: e */
        public AbstractC4953h<K, V> f30401e = LocalCache.m8481s();

        /* renamed from: f */
        public AbstractC4953h<K, V> f30402f = LocalCache.m8481s();

        public C7382y(ReferenceQueue<K> referenceQueue, K k, int i, AbstractC4953h<K, V> hVar) {
            super(referenceQueue, k, i, hVar);
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getNextInWriteQueue() {
            return this.f30401e;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public AbstractC4953h<K, V> getPreviousInWriteQueue() {
            return this.f30402f;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public long getWriteTime() {
            return this.f30400d;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setNextInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30401e = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setPreviousInWriteQueue(AbstractC4953h<K, V> hVar) {
            this.f30402f = hVar;
        }

        @Override // com.google.common.cache.LocalCache.C7380w, p131c.p161d.p266c.p268b.AbstractC4953h
        public void setWriteTime(long j) {
            this.f30400d = j;
        }
    }

    /* renamed from: com.google.common.cache.LocalCache$z */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LocalCache$z.class */
    public static final class C7383z<K, V> extends C7369l<K, V> {

        /* renamed from: b */
        public final int f30403b;

        public C7383z(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar, int i) {
            super(referenceQueue, v, hVar);
            this.f30403b = i;
        }

        @Override // com.google.common.cache.LocalCache.C7369l, com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: a */
        public AbstractC7376s<K, V> mo8459a(ReferenceQueue<V> referenceQueue, V v, AbstractC4953h<K, V> hVar) {
            return new C7383z(referenceQueue, v, hVar, this.f30403b);
        }

        @Override // com.google.common.cache.LocalCache.C7369l, com.google.common.cache.LocalCache.AbstractC7376s
        /* renamed from: c */
        public int mo8458c() {
            return this.f30403b;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [long] */
    /* JADX WARN: Type inference failed for: r26v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LocalCache(com.google.common.cache.CacheBuilder<? super K, ? super V> r9, com.google.common.cache.CacheLoader<? super K, V> r10) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.<init>(com.google.common.cache.CacheBuilder, com.google.common.cache.CacheLoader):void");
    }

    /* renamed from: a */
    public static <K, V> void m8517a(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
        hVar.setNextInAccessQueue(hVar2);
        hVar2.setPreviousInAccessQueue(hVar);
    }

    /* renamed from: b */
    public static <E> ArrayList<E> m8503b(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.m8267a(arrayList, collection.iterator());
        return arrayList;
    }

    /* renamed from: b */
    public static <K, V> void m8508b(AbstractC4953h<K, V> hVar) {
        AbstractC4953h<K, V> s = m8481s();
        hVar.setNextInAccessQueue(s);
        hVar.setPreviousInAccessQueue(s);
    }

    /* renamed from: b */
    public static <K, V> void m8506b(AbstractC4953h<K, V> hVar, AbstractC4953h<K, V> hVar2) {
        hVar.setNextInWriteQueue(hVar2);
        hVar2.setPreviousInWriteQueue(hVar);
    }

    /* renamed from: c */
    public static int m8501c(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    /* renamed from: c */
    public static <K, V> void m8500c(AbstractC4953h<K, V> hVar) {
        AbstractC4953h<K, V> s = m8481s();
        hVar.setNextInWriteQueue(s);
        hVar.setPreviousInWriteQueue(s);
    }

    /* renamed from: r */
    public static <E> Queue<E> m8482r() {
        return (Queue<E>) f30310y;
    }

    /* renamed from: s */
    public static <K, V> AbstractC4953h<K, V> m8481s() {
        return NullEntry.INSTANCE;
    }

    /* renamed from: t */
    public static <K, V> AbstractC7376s<K, V> m8480t() {
        return (AbstractC7376s<K, V>) f30309x;
    }

    /* renamed from: a */
    public Segment<K, V> m8520a(int i, long j, AbstractC4947b bVar) {
        return new Segment<>(this, i, j, bVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e6, code lost:
        r0 = new java.lang.StringBuilder();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ef, code lost:
        r0.append("loadAll failed to return a value for ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00fc, code lost:
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0113, code lost:
        r14 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0117, code lost:
        throw new com.google.common.cache.CacheLoader.InvalidCacheLoadException(r0.toString());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.collect.ImmutableMap<K, V> m8515a(java.lang.Iterable<? extends K> r7) throws java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.m8515a(java.lang.Iterable):com.google.common.collect.ImmutableMap");
    }

    /* renamed from: a */
    public V m8518a(AbstractC4953h<K, V> hVar, long j) {
        V v;
        if (hVar.getKey() == null || (v = hVar.getValueReference().get()) == null || m8507b(hVar, j)) {
            return null;
        }
        return v;
    }

    /* renamed from: a */
    public V m8514a(Object obj) {
        C4933n.m24795a(obj);
        int c = m8498c(obj);
        V v = m8509b(c).get(obj, c);
        if (v == null) {
            this.f30328r.mo8525b(1);
        } else {
            this.f30328r.mo8528a(1);
        }
        return v;
    }

    /* renamed from: a */
    public V m8513a(K k, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        C4933n.m24795a(k);
        int c = m8498c(k);
        return m8509b(c).get(k, c, cacheLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Map<K, V> m8511a(java.util.Set<? extends K> r5, com.google.common.cache.CacheLoader<? super K, V> r6) throws java.util.concurrent.ExecutionException {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.m8511a(java.util.Set, com.google.common.cache.CacheLoader):java.util.Map");
    }

    /* renamed from: a */
    public void m8522a() {
        for (Segment<K, V> segment : this.f30313c) {
            segment.cleanUp();
        }
    }

    /* renamed from: a */
    public void m8519a(AbstractC4953h<K, V> hVar) {
        int hash = hVar.getHash();
        m8509b(hash).reclaimKey(hVar, hash);
    }

    /* renamed from: a */
    public void m8516a(AbstractC7376s<K, V> sVar) {
        AbstractC4953h<K, V> a = sVar.mo8464a();
        int hash = a.getHash();
        m8509b(hash).reclaimValue(a.getKey(), hash, sVar);
    }

    /* renamed from: a */
    public final Segment<K, V>[] m8521a(int i) {
        return new Segment[i];
    }

    /* renamed from: b */
    public Segment<K, V> m8509b(int i) {
        return this.f30313c[(i >>> this.f30312b) & this.f30311a];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public ImmutableMap<K, V> m8505b(Iterable<?> iterable) {
        LinkedHashMap d = Maps.m8121d();
        int i = 0;
        int i2 = 0;
        for (Object obj : iterable) {
            V v = get(obj);
            if (v == null) {
                i2++;
            } else {
                d.put(obj, v);
                i++;
            }
        }
        this.f30328r.mo8528a(i);
        this.f30328r.mo8525b(i2);
        return ImmutableMap.copyOf(d);
    }

    /* renamed from: b */
    public V m8504b(K k) throws ExecutionException {
        return m8513a((LocalCache<K, V>) k, (CacheLoader<? super LocalCache<K, V>, V>) this.f30329s);
    }

    /* renamed from: b */
    public boolean m8510b() {
        return this.f30320j != CacheBuilder.OneWeigher.INSTANCE;
    }

    /* renamed from: b */
    public boolean m8507b(AbstractC4953h<K, V> hVar, long j) {
        C4933n.m24795a(hVar);
        if (!m8497d() || j - hVar.getAccessTime() < this.f30321k) {
            return m8495e() && j - hVar.getWriteTime() >= this.f30322l;
        }
        return true;
    }

    /* renamed from: c */
    public int m8498c(Object obj) {
        return m8501c(this.f30315e.hash(obj));
    }

    /* renamed from: c */
    public void m8499c(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    /* renamed from: c */
    public boolean m8502c() {
        return this.f30319i >= 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.f30313c) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        if (obj == null) {
            return false;
        }
        int c = m8498c(obj);
        return m8509b(c).containsKey(obj, c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean containsValue(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r5
            c.d.c.a.u r0 = r0.f30326p
            long r0 = r0.mo8523a()
            r7 = r0
            r0 = r5
            com.google.common.cache.LocalCache$Segment<K, V>[] r0 = r0.f30313c
            r9 = r0
            r0 = -1
            r10 = r0
            r0 = 0
            r12 = r0
        L_0x001c:
            r0 = r12
            r1 = 3
            if (r0 >= r1) goto L_0x00bd
            r0 = 0
            r13 = r0
            r0 = r9
            int r0 = r0.length
            r15 = r0
            r0 = 0
            r16 = r0
        L_0x002d:
            r0 = r16
            r1 = r15
            if (r0 >= r1) goto L_0x00a8
            r0 = r9
            r1 = r16
            r0 = r0[r1]
            r17 = r0
            r0 = r17
            int r0 = r0.count
            r18 = r0
            r0 = r17
            java.util.concurrent.atomic.AtomicReferenceArray<c.d.c.b.h<K, V>> r0 = r0.table
            r19 = r0
            r0 = 0
            r18 = r0
        L_0x004c:
            r0 = r18
            r1 = r19
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x0097
            r0 = r19
            r1 = r18
            java.lang.Object r0 = r0.get(r1)
            c.d.c.b.h r0 = (p131c.p161d.p266c.p268b.AbstractC4953h) r0
            r20 = r0
        L_0x0062:
            r0 = r20
            if (r0 == 0) goto L_0x0091
            r0 = r17
            r1 = r20
            r2 = r7
            java.lang.Object r0 = r0.getLiveValue(r1, r2)
            r21 = r0
            r0 = r21
            if (r0 == 0) goto L_0x0085
            r0 = r5
            com.google.common.base.Equivalence<java.lang.Object> r0 = r0.f30316f
            r1 = r6
            r2 = r21
            boolean r0 = r0.equivalent(r1, r2)
            if (r0 == 0) goto L_0x0085
            r0 = 1
            return r0
        L_0x0085:
            r0 = r20
            c.d.c.b.h r0 = r0.getNext()
            r20 = r0
            goto L_0x0062
        L_0x0091:
            int r18 = r18 + 1
            goto L_0x004c
        L_0x0097:
            r0 = r13
            r1 = r17
            int r1 = r1.modCount
            long r1 = (long) r1
            long r0 = r0 + r1
            r13 = r0
            int r16 = r16 + 1
            goto L_0x002d
        L_0x00a8:
            r0 = r13
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b3
            goto L_0x00bd
        L_0x00b3:
            int r12 = r12 + 1
            r0 = r13
            r10 = r0
            goto L_0x001c
        L_0x00bd:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.containsValue(java.lang.Object):boolean");
    }

    /* renamed from: d */
    public void m8496d(K k) {
        C4933n.m24795a(k);
        int c = m8498c(k);
        m8509b(c).refresh(k, c, this.f30329s, false);
    }

    /* renamed from: d */
    public boolean m8497d() {
        return this.f30321k > 0;
    }

    /* renamed from: e */
    public boolean m8495e() {
        return this.f30322l > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f30332v;
        if (set == null) {
            set = new C7363g(this);
            this.f30332v = set;
        }
        return set;
    }

    /* renamed from: f */
    public long m8494f() {
        long j = 0;
        for (Segment<K, V> segment : this.f30313c) {
            j += Math.max(0, segment.count);
        }
        return j;
    }

    /* renamed from: g */
    public void m8493g() {
        while (true) {
            RemovalNotification<K, V> poll = this.f30324n.poll();
            if (poll != null) {
                try {
                    this.f30325o.onRemoval(poll);
                } catch (Throwable th) {
                    f30308w.log(Level.WARNING, "Exception thrown by removal listener", th);
                }
            } else {
                return;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int c = m8498c(obj);
        return m8509b(c).get(obj, c);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        if (v2 != null) {
            v = v2;
        }
        return v;
    }

    /* renamed from: h */
    public boolean m8492h() {
        return m8497d();
    }

    /* renamed from: i */
    public boolean m8491i() {
        return m8490j() || m8492h();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.f30313c;
        long j = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            j += segmentArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            j -= segmentArr[i2].modCount;
        }
        return j == 0;
    }

    /* renamed from: j */
    public boolean m8490j() {
        return m8495e() || m8489k();
    }

    /* renamed from: k */
    public boolean m8489k() {
        return this.f30323m > 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f30330t;
        if (set == null) {
            set = new C7366j(this);
            this.f30330t = set;
        }
        return set;
    }

    /* renamed from: l */
    public boolean m8488l() {
        return m8487m() || m8492h();
    }

    /* renamed from: m */
    public boolean m8487m() {
        return m8497d() || m8502c();
    }

    /* renamed from: n */
    public boolean m8486n() {
        return this.f30317g != Strength.STRONG;
    }

    /* renamed from: o */
    public boolean m8485o() {
        return this.f30318h != Strength.STRONG;
    }

    /* renamed from: p */
    public boolean m8484p() {
        return m8483q() || m8490j();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int c = m8498c(k);
        return m8509b(c).put(k, c, v, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int c = m8498c(k);
        return m8509b(c).put(k, c, v, true);
    }

    /* renamed from: q */
    public boolean m8483q() {
        return m8495e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int c = m8498c(obj);
        return m8509b(c).remove(obj, c);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int c = m8498c(obj);
        return m8509b(c).remove(obj, c, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        int c = m8498c(k);
        return m8509b(c).replace(k, c, v);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, V v, V v2) {
        C4933n.m24795a(k);
        C4933n.m24795a(v2);
        if (v == null) {
            return false;
        }
        int c = m8498c(k);
        return m8509b(c).replace(k, c, v, v2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return Ints.m7808b(m8494f());
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f30331u;
        if (collection == null) {
            collection = new C7377t(this);
            this.f30331u = collection;
        }
        return collection;
    }
}
