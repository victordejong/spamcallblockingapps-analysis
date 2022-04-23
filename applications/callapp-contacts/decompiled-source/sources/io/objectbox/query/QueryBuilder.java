package io.objectbox.query;

import io.objectbox.exception.DbException;
import io.objectbox.g;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder.class */
public class QueryBuilder<T> implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public long f36247a;

    /* renamed from: b  reason: collision with root package name */
    private final io.objectbox.a<T> f36248b;

    /* renamed from: c  reason: collision with root package name */
    private final long f36249c;

    /* renamed from: d  reason: collision with root package name */
    private long f36250d;
    private long e;
    private int f;
    private List<io.objectbox.query.a<T, ?>> g;
    private d<T> h;
    private Comparator<T> i;
    private final boolean j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f36251a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f36252b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f36253c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f36254d = {1, 2, 3};

        private a(String str, int i) {
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder$b.class */
    public enum b {
        CASE_INSENSITIVE,
        CASE_SENSITIVE
    }

    private QueryBuilder(long j, long j2) {
        this.f = a.f36251a;
        this.f36248b = null;
        this.f36249c = j;
        this.f36247a = j2;
        this.j = true;
    }

    public QueryBuilder(io.objectbox.a<T> aVar, long j, String str) {
        this.f = a.f36251a;
        this.f36248b = aVar;
        this.f36249c = j;
        long nativeCreate = nativeCreate(j, str);
        this.f36247a = nativeCreate;
        if (nativeCreate != 0) {
            this.j = false;
            return;
        }
        throw new DbException("Could not create native query builder");
    }

    private void a(int i) {
        if (this.f36250d == 0) {
            throw new IllegalStateException("No previous condition. Use operators like and() and or() only between two conditions.");
        } else if (this.f == a.f36251a) {
            this.f = i;
        } else {
            throw new IllegalStateException("Another operator is pending. Use operators like and() and or() only between two conditions.");
        }
    }

    private void e() {
        if (this.j) {
            throw new IllegalStateException("This call is not supported on sub query builders (links)");
        }
    }

    private native long nativeBetween(long j, int i, long j2, long j3);

    private native long nativeBuild(long j);

    private native long nativeCombine(long j, long j2, long j3, boolean z);

    private native long nativeContains(long j, int i, String str, boolean z);

    private native long nativeCreate(long j, String str);

    private native void nativeDestroy(long j);

    private native long nativeEqual(long j, int i, long j2);

    private native long nativeEqual(long j, int i, String str, boolean z);

    private native long nativeGreater(long j, int i, long j2, boolean z);

    private native long nativeLess(long j, int i, long j2, boolean z);

    private native long nativeNotEqual(long j, int i, long j2);

    private native long nativeNotEqual(long j, int i, String str, boolean z);

    private native long nativeNotNull(long j, int i);

    private native long nativeNull(long j, int i);

    private native void nativeOrder(long j, int i, int i2);

    public final Query<T> a() {
        e();
        b();
        if (this.f == a.f36251a) {
            long nativeBuild = nativeBuild(this.f36247a);
            if (nativeBuild != 0) {
                Query<T> query = new Query<>(this.f36248b, nativeBuild, this.g, this.h, this.i);
                close();
                return query;
            }
            throw new DbException("Could not create native query");
        }
        throw new IllegalStateException("Incomplete logic condition. Use or()/and() between two conditions only.");
    }

    public final QueryBuilder<T> a(g<T> gVar) {
        b();
        a(nativeNull(this.f36247a, gVar.b()));
        return this;
    }

    public final QueryBuilder<T> a(g<T> gVar, int i) {
        e();
        b();
        if (this.f == a.f36251a) {
            nativeOrder(this.f36247a, gVar.b(), i);
            return this;
        }
        throw new IllegalStateException("An operator is pending. Use operators like and() and or() only between two conditions.");
    }

    public final QueryBuilder<T> a(g<T> gVar, long j) {
        b();
        a(nativeEqual(this.f36247a, gVar.b(), j));
        return this;
    }

    public final QueryBuilder<T> a(g<T> gVar, long j, long j2) {
        b();
        a(nativeBetween(this.f36247a, gVar.b(), j, j2));
        return this;
    }

    public final QueryBuilder<T> a(g<T> gVar, String str) {
        b();
        a(nativeEqual(this.f36247a, gVar.b(), str, false));
        return this;
    }

    public final QueryBuilder<T> a(g<T> gVar, Date date) {
        b();
        a(nativeLess(this.f36247a, gVar.b(), date.getTime(), false));
        return this;
    }

    public final QueryBuilder<T> a(g<T> gVar, boolean z) {
        b();
        a(nativeEqual(this.f36247a, gVar.b(), z ? 1L : 0L));
        return this;
    }

    public final QueryBuilder<T> a(io.objectbox.relation.b bVar, io.objectbox.relation.b... bVarArr) {
        e();
        if (this.g == null) {
            this.g = new ArrayList();
        }
        this.g.add(new io.objectbox.query.a<>(0, bVar));
        return this;
    }

    public final void a(long j) {
        if (this.f != a.f36251a) {
            this.f36250d = nativeCombine(this.f36247a, this.f36250d, j, this.f == a.f36253c);
            this.f = a.f36251a;
        } else {
            this.f36250d = j;
        }
        this.e = j;
    }

    public final QueryBuilder<T> b(g<T> gVar) {
        b();
        a(nativeNotNull(this.f36247a, gVar.b()));
        return this;
    }

    public final QueryBuilder<T> b(g<T> gVar, long j) {
        b();
        a(nativeNotEqual(this.f36247a, gVar.b(), j));
        return this;
    }

    public final QueryBuilder<T> b(g<T> gVar, String str) {
        b();
        a(nativeNotEqual(this.f36247a, gVar.b(), str, false));
        return this;
    }

    public final void b() {
        if (this.f36247a == 0) {
            throw new IllegalStateException("This QueryBuilder has already been closed. Please use a new instance.");
        }
    }

    public final QueryBuilder<T> c() {
        a(a.f36253c);
        return this;
    }

    public final QueryBuilder<T> c(g<T> gVar, long j) {
        b();
        a(nativeLess(this.f36247a, gVar.b(), j, false));
        return this;
    }

    public final QueryBuilder<T> c(g<T> gVar, String str) {
        b();
        a(nativeContains(this.f36247a, gVar.b(), str, false));
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            long j = this.f36247a;
            if (j != 0) {
                this.f36247a = 0L;
                if (!this.j) {
                    nativeDestroy(j);
                }
            }
        }
    }

    public final QueryBuilder<T> d() {
        a(a.f36252b);
        return this;
    }

    public final QueryBuilder<T> d(g<T> gVar, long j) {
        b();
        a(nativeGreater(this.f36247a, gVar.b(), j, false));
        return this;
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public native long nativeIn(long j, int i, int[] iArr, boolean z);

    public native long nativeIn(long j, int i, String[] strArr, boolean z);
}
