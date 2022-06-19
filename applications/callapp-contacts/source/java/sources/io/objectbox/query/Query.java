package io.objectbox.query;

import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17948a;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.io.Closeable;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/Query.class */
public class Query<T> implements Closeable {

    /* renamed from: a */
    public final C17944a<T> f62823a;

    /* renamed from: b */
    public final C17987e<T> f62824b;

    /* renamed from: c */
    long f62825c;

    /* renamed from: d */
    private final BoxStore f62826d;

    /* renamed from: e */
    private final List<C17982a<T, ?>> f62827e;

    /* renamed from: f */
    private final AbstractC17986d<T> f62828f;

    /* renamed from: g */
    private final Comparator<T> f62829g;

    /* renamed from: h */
    private final int f62830h;

    public Query(C17944a<T> c17944a, long j, List<C17982a<T, ?>> list, AbstractC17986d<T> abstractC17986d, Comparator<T> comparator) {
        this.f62823a = c17944a;
        BoxStore boxStore = c17944a.f62707a;
        this.f62826d = boxStore;
        this.f62830h = boxStore.f62692p;
        this.f62825c = j;
        this.f62824b = new C17987e<>(this, c17944a);
        this.f62827e = list;
        this.f62828f = abstractC17986d;
        this.f62829g = comparator;
    }

    /* renamed from: a */
    public /* synthetic */ List m4639a(long j, long j2) throws Exception {
        List<T> nativeFind = nativeFind(this.f62825c, m4623g(), j, j2);
        m4633a(nativeFind);
        return nativeFind;
    }

    /* renamed from: a */
    private void m4635a(T t, int i) {
        for (C17982a<T, ?> c17982a : this.f62827e) {
            if (c17982a.f62845a == 0 || i < c17982a.f62845a) {
                m4634a((Query<T>) t, (C17982a<Query<T>, ?>) c17982a);
            }
        }
    }

    /* renamed from: a */
    private void m4634a(T t, C17982a<T, ?> c17982a) {
        if (this.f62827e != null) {
            C17990b<T, ?> c17990b = c17982a.f62846b;
            if (c17990b.f62890e != null) {
                ToOne<TARGET> toOne = c17990b.f62890e.getToOne(t);
                if (toOne == 0) {
                    return;
                }
                toOne.m4573a();
            } else if (c17990b.f62891f == null) {
                throw new IllegalStateException("Relation info without relation getter: ".concat(String.valueOf(c17990b)));
            } else {
                List<TARGET> toMany = c17990b.f62891f.getToMany(t);
                if (toMany == 0) {
                    return;
                }
                toMany.size();
            }
        }
    }

    /* renamed from: a */
    private void m4633a(List<T> list) {
        if (this.f62827e != null) {
            int i = 0;
            for (T t : list) {
                m4635a((Query<T>) t, i);
                i++;
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ long[] m4638a(long j, long j2, long j3) {
        return nativeFindIds(this.f62825c, j3, j, j2);
    }

    /* renamed from: b */
    public /* synthetic */ Long m4630b(long j) {
        return Long.valueOf(nativeRemove(this.f62825c, j));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public /* synthetic */ void m4629b(AbstractC17985c abstractC17985c) {
        C17983b c17983b = new C17983b(this.f62823a, m4626d(), false);
        int size = c17983b.size();
        for (int i = 0; i < size; i++) {
            Object obj = c17983b.get(i);
            if (obj == null) {
                throw new IllegalStateException("Internal error: data object was null");
            }
            AbstractC17986d<T> abstractC17986d = this.f62828f;
            if (abstractC17986d == null || abstractC17986d.m4594a()) {
                if (this.f62827e != null) {
                    m4635a((Query<T>) obj, i);
                }
                try {
                    abstractC17985c.accept(obj);
                    continue;
                } catch (BreakForEach e) {
                    return;
                }
            }
        }
    }

    /* renamed from: c */
    public /* synthetic */ Long m4627c(long j) {
        return Long.valueOf(nativeCount(this.f62825c, j));
    }

    /* renamed from: g */
    private long m4623g() {
        return this.f62823a.m4718a().internalHandle();
    }

    /* renamed from: h */
    private void m4622h() {
        if (this.f62828f == null) {
            return;
        }
        throw new UnsupportedOperationException("Does not work with a filter. Only find() and forEach() support filters.");
    }

    /* renamed from: i */
    private void m4621i() {
        if (this.f62829g == null) {
            return;
        }
        throw new UnsupportedOperationException("Does not work with a sorting comparator. Only find() supports sorting with a comparator.");
    }

    /* renamed from: j */
    public /* synthetic */ List m4620j() throws Exception {
        List<T> nativeFind = nativeFind(this.f62825c, m4623g(), 0L, 0L);
        if (this.f62828f != null) {
            Iterator<T> it2 = nativeFind.iterator();
            while (it2.hasNext()) {
                it2.next();
                if (!this.f62828f.m4594a()) {
                    it2.remove();
                }
            }
        }
        m4633a(nativeFind);
        Comparator<T> comparator = this.f62829g;
        if (comparator != null) {
            Collections.sort(nativeFind, comparator);
        }
        return nativeFind;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public /* synthetic */ Object m4619k() throws Exception {
        Object nativeFindFirst = nativeFindFirst(this.f62825c, m4623g());
        List<C17982a<T, ?>> list = this.f62827e;
        if (list != null && nativeFindFirst != null) {
            for (C17982a<T, ?> c17982a : list) {
                m4634a((Query<T>) nativeFindFirst, (C17982a<Query<T>, ?>) c17982a);
            }
        }
        return nativeFindFirst;
    }

    /* renamed from: a */
    public final Query<T> m4637a(C17978g<?> c17978g, String str) {
        nativeSetParameter(this.f62825c, c17978g.m4653a(), c17978g.m4652b(), null, str);
        return this;
    }

    /* renamed from: a */
    public final T m4641a() {
        m4631b();
        return (T) m4632a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$N5_mnxSAX_3ip_3n4R_5Voa8B2w
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object m4619k;
                m4619k = Query.this.m4619k();
                return m4619k;
            }
        });
    }

    /* renamed from: a */
    public final <R> R m4632a(Callable<R> callable) {
        return (R) this.f62826d.m4738a(callable, this.f62830h);
    }

    /* renamed from: a */
    public final List<T> m4640a(final long j) {
        m4631b();
        return (List) m4632a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$XubRnrNaiVlGDmvMXPw_8vkZgOU
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List m4639a;
                m4639a = Query.this.m4639a(r6, j);
                return m4639a;
            }
        });
    }

    /* renamed from: a */
    public final void m4636a(final AbstractC17985c<T> abstractC17985c) {
        m4621i();
        this.f62823a.f62707a.m4733b(new Runnable() { // from class: io.objectbox.query._$$Lambda$Query$iuJtMMLbI_iJEHEo3YteEt1XvrM
            @Override // java.lang.Runnable
            public final void run() {
                Query.this.m4629b(abstractC17985c);
            }
        });
    }

    /* renamed from: b */
    public final void m4631b() {
        m4622h();
        m4621i();
    }

    /* renamed from: c */
    public final List<T> m4628c() {
        return (List) m4632a(new Callable() { // from class: io.objectbox.query._$$Lambda$Query$aK9Eq4vTl_gSJwzL5OrvUyBVDvA
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List m4620j;
                m4620j = Query.this.m4620j();
                return m4620j;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            long j = this.f62825c;
            if (j != 0) {
                this.f62825c = 0L;
                nativeDestroy(j);
            }
        }
    }

    /* renamed from: d */
    public long[] m4626d() {
        return (long[]) this.f62823a.m4712a((AbstractC17948a<Object>) new AbstractC17948a() { // from class: io.objectbox.query._$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U_EU9Lw
            @Override // io.objectbox.p502b.AbstractC17948a
            public final Object call(long j) {
                long[] m4638a;
                m4638a = Query.this.m4638a(r6, r8, j);
                return m4638a;
            }
        });
    }

    /* renamed from: e */
    public final long m4625e() {
        m4622h();
        return ((Long) this.f62823a.m4712a((AbstractC17948a<Object>) new AbstractC17948a() { // from class: io.objectbox.query._$$Lambda$Query$rFSWYDkNYghwU_R5E4_PWAxw2JM
            @Override // io.objectbox.p502b.AbstractC17948a
            public final Object call(long j) {
                Long m4627c;
                m4627c = Query.this.m4627c(j);
                return m4627c;
            }
        })).longValue();
    }

    /* renamed from: f */
    public final long m4624f() {
        m4622h();
        return ((Long) this.f62823a.m4706b((AbstractC17948a<Object>) new AbstractC17948a() { // from class: io.objectbox.query._$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY
            @Override // io.objectbox.p502b.AbstractC17948a
            public final Object call(long j) {
                Long m4630b;
                m4630b = Query.this.m4630b(j);
                return m4630b;
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
