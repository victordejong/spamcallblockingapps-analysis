package com.google.common.cache;

import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
import p131c.p161d.p266c.p275i.p276a.C5100g;
import p131c.p161d.p266c.p275i.p276a.C5109m;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader.class */
public abstract class CacheLoader<K, V> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$FunctionToCacheLoader.class */
    public static final class FunctionToCacheLoader<K, V> extends CacheLoader<K, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4920g<K, V> computingFunction;

        public FunctionToCacheLoader(AbstractC4920g<K, V> gVar) {
            C4933n.m24795a(gVar);
            this.computingFunction = gVar;
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(K k) {
            AbstractC4920g<K, V> gVar = this.computingFunction;
            C4933n.m24795a(k);
            return gVar.apply(k);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$InvalidCacheLoadException.class */
    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$SupplierToCacheLoader.class */
    public static final class SupplierToCacheLoader<V> extends CacheLoader<Object, V> implements Serializable {
        public static final long serialVersionUID = 0;
        public final AbstractC4941s<V> computingSupplier;

        public SupplierToCacheLoader(AbstractC4941s<V> sVar) {
            C4933n.m24795a(sVar);
            this.computingSupplier = sVar;
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(Object obj) {
            C4933n.m24795a(obj);
            return this.computingSupplier.get();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException.class */
    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
    }

    /* renamed from: com.google.common.cache.CacheLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$a.class */
    public static final class C7334a extends CacheLoader<K, V> {

        /* renamed from: b */
        public final /* synthetic */ Executor f30304b;

        /* renamed from: com.google.common.cache.CacheLoader$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/cache/CacheLoader$a$a.class */
        public class CallableC7335a implements Callable<V> {

            /* renamed from: a */
            public final /* synthetic */ Object f30305a;

            /* renamed from: b */
            public final /* synthetic */ Object f30306b;

            public CallableC7335a(Object obj, Object obj2) {
                this.f30305a = obj;
                this.f30306b = obj2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public V call() throws Exception {
                return CacheLoader.this.reload(this.f30305a, this.f30306b).get();
            }
        }

        public C7334a(Executor executor) {
            this.f30304b = executor;
        }

        @Override // com.google.common.cache.CacheLoader
        public V load(K k) throws Exception {
            return (V) CacheLoader.this.load(k);
        }

        @Override // com.google.common.cache.CacheLoader
        public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
            return CacheLoader.this.loadAll(iterable);
        }

        @Override // com.google.common.cache.CacheLoader
        public AbstractFutureC5108l<V> reload(K k, V v) throws Exception {
            C5109m a = C5109m.m24505a(new CallableC7335a(k, v));
            this.f30304b.execute(a);
            return a;
        }
    }

    public static <K, V> CacheLoader<K, V> asyncReloading(CacheLoader<K, V> cacheLoader, Executor executor) {
        C4933n.m24795a(cacheLoader);
        C4933n.m24795a(executor);
        return new C7334a(executor);
    }

    public static <K, V> CacheLoader<K, V> from(AbstractC4920g<K, V> gVar) {
        return new FunctionToCacheLoader(gVar);
    }

    public static <V> CacheLoader<Object, V> from(AbstractC4941s<V> sVar) {
        return new SupplierToCacheLoader(sVar);
    }

    public abstract V load(K k) throws Exception;

    public Map<K, V> loadAll(Iterable<? extends K> iterable) throws Exception {
        throw new UnsupportedLoadingOperationException();
    }

    public AbstractFutureC5108l<V> reload(K k, V v) throws Exception {
        C4933n.m24795a(k);
        C4933n.m24795a(v);
        return C5100g.m24515a(load(k));
    }
}
