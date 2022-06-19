package io.objectbox.query;

import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.exception.DbException;
import io.objectbox.relation.C17990b;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder.class */
public class QueryBuilder<T> implements Closeable {

    /* renamed from: a */
    public long f62831a;

    /* renamed from: b */
    private final C17944a<T> f62832b;

    /* renamed from: c */
    private final long f62833c;

    /* renamed from: d */
    private long f62834d;

    /* renamed from: e */
    private long f62835e;

    /* renamed from: f */
    private int f62836f;

    /* renamed from: g */
    private List<C17982a<T, ?>> f62837g;

    /* renamed from: h */
    private AbstractC17986d<T> f62838h;

    /* renamed from: i */
    private Comparator<T> f62839i;

    /* renamed from: j */
    private final boolean f62840j;

    /* renamed from: io.objectbox.query.QueryBuilder$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder$a.class */
    public static final class EnumC17980a extends Enum<EnumC17980a> {

        /* renamed from: a */
        public static final int f62841a = 1;

        /* renamed from: b */
        public static final int f62842b = 2;

        /* renamed from: c */
        public static final int f62843c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f62844d = {1, 2, 3};

        private EnumC17980a(String str, int i) {
            super(str, i);
        }
    }

    /* renamed from: io.objectbox.query.QueryBuilder$b */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/query/QueryBuilder$b.class */
    public enum EnumC17981b {
        CASE_INSENSITIVE,
        CASE_SENSITIVE
    }

    private QueryBuilder(long j, long j2) {
        this.f62836f = EnumC17980a.f62841a;
        this.f62832b = null;
        this.f62833c = j;
        this.f62831a = j2;
        this.f62840j = true;
    }

    public QueryBuilder(C17944a<T> c17944a, long j, String str) {
        this.f62836f = EnumC17980a.f62841a;
        this.f62832b = c17944a;
        this.f62833c = j;
        long nativeCreate = nativeCreate(j, str);
        this.f62831a = nativeCreate;
        if (nativeCreate != 0) {
            this.f62840j = false;
            return;
        }
        throw new DbException("Could not create native query builder");
    }

    /* renamed from: a */
    private void m4617a(int i) {
        if (this.f62834d != 0) {
            if (this.f62836f != EnumC17980a.f62841a) {
                throw new IllegalStateException("Another operator is pending. Use operators like and() and or() only between two conditions.");
            }
            this.f62836f = i;
            return;
        }
        throw new IllegalStateException("No previous condition. Use operators like and() and or() only between two conditions.");
    }

    /* renamed from: e */
    private void m4598e() {
        if (!this.f62840j) {
            return;
        }
        throw new IllegalStateException("This call is not supported on sub query builders (links)");
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

    /* renamed from: a */
    public final Query<T> m4618a() {
        m4598e();
        m4607b();
        if (this.f62836f == EnumC17980a.f62841a) {
            long nativeBuild = nativeBuild(this.f62831a);
            if (nativeBuild == 0) {
                throw new DbException("Could not create native query");
            }
            Query<T> query = new Query<>(this.f62832b, nativeBuild, this.f62837g, this.f62838h, this.f62839i);
            close();
            return query;
        }
        throw new IllegalStateException("Incomplete logic condition. Use or()/and() between two conditions only.");
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4615a(C17978g<T> c17978g) {
        m4607b();
        m4616a(nativeNull(this.f62831a, c17978g.m4652b()));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4614a(C17978g<T> c17978g, int i) {
        m4598e();
        m4607b();
        if (this.f62836f == EnumC17980a.f62841a) {
            nativeOrder(this.f62831a, c17978g.m4652b(), i);
            return this;
        }
        throw new IllegalStateException("An operator is pending. Use operators like and() and or() only between two conditions.");
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4613a(C17978g<T> c17978g, long j) {
        m4607b();
        m4616a(nativeEqual(this.f62831a, c17978g.m4652b(), j));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4612a(C17978g<T> c17978g, long j, long j2) {
        m4607b();
        m4616a(nativeBetween(this.f62831a, c17978g.m4652b(), j, j2));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4611a(C17978g<T> c17978g, String str) {
        m4607b();
        m4616a(nativeEqual(this.f62831a, c17978g.m4652b(), str, false));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4610a(C17978g<T> c17978g, Date date) {
        m4607b();
        m4616a(nativeLess(this.f62831a, c17978g.m4652b(), date.getTime(), false));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4609a(C17978g<T> c17978g, boolean z) {
        m4607b();
        m4616a(nativeEqual(this.f62831a, c17978g.m4652b(), (z ? 1 : null) == 1 ? 1L : 0L));
        return this;
    }

    /* renamed from: a */
    public final QueryBuilder<T> m4608a(C17990b c17990b, C17990b... c17990bArr) {
        m4598e();
        if (this.f62837g == null) {
            this.f62837g = new ArrayList();
        }
        this.f62837g.add(new C17982a<>(0, c17990b));
        return this;
    }

    /* renamed from: a */
    public final void m4616a(long j) {
        if (this.f62836f != EnumC17980a.f62841a) {
            this.f62834d = nativeCombine(this.f62831a, this.f62834d, j, this.f62836f == EnumC17980a.f62843c);
            this.f62836f = EnumC17980a.f62841a;
        } else {
            this.f62834d = j;
        }
        this.f62835e = j;
    }

    /* renamed from: b */
    public final QueryBuilder<T> m4606b(C17978g<T> c17978g) {
        m4607b();
        m4616a(nativeNotNull(this.f62831a, c17978g.m4652b()));
        return this;
    }

    /* renamed from: b */
    public final QueryBuilder<T> m4605b(C17978g<T> c17978g, long j) {
        m4607b();
        m4616a(nativeNotEqual(this.f62831a, c17978g.m4652b(), j));
        return this;
    }

    /* renamed from: b */
    public final QueryBuilder<T> m4604b(C17978g<T> c17978g, String str) {
        m4607b();
        m4616a(nativeNotEqual(this.f62831a, c17978g.m4652b(), str, false));
        return this;
    }

    /* renamed from: b */
    public final void m4607b() {
        if (this.f62831a != 0) {
            return;
        }
        throw new IllegalStateException("This QueryBuilder has already been closed. Please use a new instance.");
    }

    /* renamed from: c */
    public final QueryBuilder<T> m4603c() {
        m4617a(EnumC17980a.f62843c);
        return this;
    }

    /* renamed from: c */
    public final QueryBuilder<T> m4602c(C17978g<T> c17978g, long j) {
        m4607b();
        m4616a(nativeLess(this.f62831a, c17978g.m4652b(), j, false));
        return this;
    }

    /* renamed from: c */
    public final QueryBuilder<T> m4601c(C17978g<T> c17978g, String str) {
        m4607b();
        m4616a(nativeContains(this.f62831a, c17978g.m4652b(), str, false));
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            long j = this.f62831a;
            if (j != 0) {
                this.f62831a = 0L;
                if (!this.f62840j) {
                    nativeDestroy(j);
                }
            }
        }
    }

    /* renamed from: d */
    public final QueryBuilder<T> m4600d() {
        m4617a(EnumC17980a.f62842b);
        return this;
    }

    /* renamed from: d */
    public final QueryBuilder<T> m4599d(C17978g<T> c17978g, long j) {
        m4607b();
        m4616a(nativeGreater(this.f62831a, c17978g.m4652b(), j, false));
        return this;
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }

    public native long nativeIn(long j, int i, int[] iArr, boolean z);

    public native long nativeIn(long j, int i, String[] strArr, boolean z);
}
