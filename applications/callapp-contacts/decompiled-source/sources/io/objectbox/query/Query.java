package io.objectbox.query;

import io.objectbox.BoxStore;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.io.Closeable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/Query.class */
public class Query<T> implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final a<T> f36243a;

    /* renamed from: b  reason: collision with root package name */
    public final e<T> f36244b;

    /* renamed from: c  reason: collision with root package name */
    long f36245c;

    /* renamed from: d  reason: collision with root package name */
    private final BoxStore f36246d;
    private final List<a<T, ?>> e;
    private final d<T> f;
    private final Comparator<T> g;
    private final int h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Query(a<T> aVar, long j, List<a<T, ?>> list, d<T> dVar, Comparator<T> comparator) {
        this.f36243a = aVar;
        BoxStore boxStore = aVar.f36185a;
        this.f36246d = boxStore;
        this.h = boxStore.p;
        this.f36245c = j;
        this.f36244b = new e<>(this, aVar);
        this.e = list;
        this.f = dVar;
        this.g = comparator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(long j, long j2) throws Exception {
        List<T> nativeFind = nativeFind(this.f36245c, g(), j, j2);
        a(nativeFind);
        return nativeFind;
    }

    private void a(T t, int i) {
        for (a<T, ?> aVar : this.e) {
            if (aVar.f36255a == 0 || i < aVar.f36255a) {
                a((Query<T>) t, (a<Query<T>, ?>) aVar);
            }
        }
    }

    private void a(T t, a<T, ?> aVar) {
        if (this.e != null) {
            b<T, ?> bVar = aVar.f36256b;
            if (bVar.e != null) {
                ToOne<TARGET> toOne = bVar.e.getToOne(t);
                if (toOne != 0) {
                    toOne.a();
                }
            } else if (bVar.f != null) {
                List<TARGET> toMany = bVar.f.getToMany(t);
                if (toMany != 0) {
                    toMany.size();
                }
            } else {
                throw new IllegalStateException("Relation info without relation getter: ".concat(String.valueOf(bVar)));
            }
        }
    }

    private void a(List<T> list) {
        if (this.e != null) {
            int i = 0;
            for (T t : list) {
                a((Query<T>) t, i);
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ long[] a(long j, long j2, long j3) {
        return nativeFindIds(this.f36245c, j3, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long b(long j) {
        return Long.valueOf(nativeRemove(this.f36245c, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void b(c cVar) {
        b bVar = new b(this.f36243a, d(), false);
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Object obj = bVar.get(i);
            if (obj != null) {
                d<T> dVar = this.f;
                if (dVar == null || dVar.a()) {
                    if (this.e != null) {
                        a((Query<T>) obj, i);
                    }
                    try {
                        cVar.accept(obj);
                        continue;
                    } catch (BreakForEach e) {
                        return;
                    }
                }
            } else {
                throw new IllegalStateException("Internal error: data object was null");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long c(long j) {
        return Long.valueOf(nativeCount(this.f36245c, j));
    }

    private long g() {
        return this.f36243a.a().internalHandle();
    }

    private void h() {
        if (this.f != null) {
            throw new UnsupportedOperationException("Does not work with a filter. Only find() and forEach() support filters.");
        }
    }

    private void i() {
        if (this.g != null) {
            throw new UnsupportedOperationException("Does not work with a sorting comparator. Only find() supports sorting with a comparator.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j() throws Exception {
        List<T> nativeFind = nativeFind(this.f36245c, g(), 0L, 0L);
        if (this.f != null) {
            Iterator<T> it2 = nativeFind.iterator();
            while (it2.hasNext()) {
                it2.next();
                if (!this.f.a()) {
                    it2.remove();
                }
            }
        }
        a(nativeFind);
        Comparator<T> comparator = this.g;
        if (comparator != null) {
            Collections.sort(nativeFind, comparator);
        }
        return nativeFind;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ Object k() throws Exception {
        Object nativeFindFirst = nativeFindFirst(this.f36245c, g());
        List<a<T, ?>> list = this.e;
        if (!(list == null || nativeFindFirst == null)) {
            for (a<T, ?> aVar : list) {
                a((Query<T>) nativeFindFirst, (a<Query<T>, ?>) aVar);
            }
        }
        return nativeFindFirst;
    }

    public final Query<T> a(g<?> gVar, String str) {
        nativeSetParameter(this.f36245c, gVar.a(), gVar.b(), null, str);
        return this;
    }

    public final T a() {
        b();
        return (T) a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$N5_mnxSAX_3ip_3n4R_5Voa8B2w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object k;
                k = Query.this.k();
                return k;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <R> R a(Callable<R> callable) {
        return (R) this.f36246d.a(callable, this.h);
    }

    public final List<T> a(final long j) {
        b();
        return (List) a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$XubRnrNaiVlGDmvMXPw_8vkZgOU
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List a2;
                a2 = Query.this.a(r6, j);
                return a2;
            }
        });
    }

    public final void a(final c<T> cVar) {
        i();
        this.f36243a.f36185a.b(new Runnable() { // from class: io.objectbox.query._$$Lambda$Query$iuJtMMLbI_iJEHEo3YteEt1XvrM
            @Override // java.lang.Runnable
            public final void run() {
                Query.this.b(cVar);
            }
        });
    }

    public final void b() {
        h();
        i();
    }

    public final List<T> c() {
        return (List) a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$aK9Eq4vTl_gSJwzL5OrvUyBVDvA
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List j;
                j = Query.this.j();
                return j;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            long j = this.f36245c;
            if (j != 0) {
                this.f36245c = 0L;
                nativeDestroy(j);
            }
        }
    }

    public long[] d() {
        return (long[]) this.f36243a.a((io.objectbox.b.a<Object>) new io.objectbox.b.a() { // from class: io.objectbox.query._$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U_EU9Lw
            @Override // io.objectbox.b.a
            public final Object call(long j) {
                long[] a2;
                a2 = Query.this.a(r6, r8, j);
                return a2;
            }
        });
    }

    public final long e() {
        h();
        return ((Long) this.f36243a.a((io.objectbox.b.a<Object>) new io.objectbox.b.a() { // from class: io.objectbox.query._$$Lambda$Query$rFSWYDkNYghwU_R5E4_PWAxw2JM
            @Override // io.objectbox.b.a
            public final Object call(long j) {
                Long c2;
                c2 = Query.this.c(j);
                return c2;
            }
        })).longValue();
    }

    public final long f() {
        h();
        return ((Long) this.f36243a.b((io.objectbox.b.a<Object>) new io.objectbox.b.a() { // from class: io.objectbox.query._$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY
            @Override // io.objectbox.b.a
            public final Object call(long j) {
                Long b2;
                b2 = Query.this.b(j);
                return b2;
            }
        })).longValue();
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    native long nativeCount(long j, long j2);

    native void nativeDestroy(long j);

    native List<T> nativeFind(long j, long j2, long j3, long j4) throws Exception;

    native Object nativeFindFirst(long j, long j2);

    native long[] nativeFindIds(long j, long j2, long j3, long j4);

    native long nativeRemove(long j, long j2);

    native void nativeSetParameter(long j, int i, int i2, String str, String str2);
}
