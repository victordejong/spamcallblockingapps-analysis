package io.objectbox;

import io.objectbox.b.c;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/a.class */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final BoxStore f36185a;

    /* renamed from: b  reason: collision with root package name */
    public final Class<T> f36186b;

    /* renamed from: c  reason: collision with root package name */
    final ThreadLocal<Cursor<T>> f36187c = new ThreadLocal<>();

    /* renamed from: d  reason: collision with root package name */
    public final ThreadLocal<Cursor<T>> f36188d = new ThreadLocal<>();
    private final c<T> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(BoxStore boxStore, Class<T> cls) {
        this.f36185a = boxStore;
        this.f36186b = cls;
        this.e = boxStore.c(cls).getIdGetter();
    }

    private void a(Cursor<T> cursor) {
        if (this.f36187c.get() == null) {
            cursor.close();
            Transaction tx = cursor.getTx();
            tx.b();
            tx.close();
        }
    }

    private void b(Cursor<T> cursor) {
        if (this.f36187c.get() == null) {
            Transaction tx = cursor.getTx();
            if (!tx.f) {
                cursor.close();
                tx.a();
                tx.nativeAbort(tx.f36182b);
                tx.close();
            }
        }
    }

    private void c(Cursor<T> cursor) {
        if (this.f36187c.get() == null) {
            Transaction tx = cursor.getTx();
            if (tx.f || tx.c() || !tx.f36184d) {
                throw new IllegalStateException("Illegal reader TX state");
            }
            tx.a();
            tx.nativeRecycle(tx.f36182b);
        }
    }

    private Cursor<T> f() {
        Cursor<T> a2 = a();
        if (a2 != null) {
            return a2;
        }
        Cursor<T> cursor = this.f36188d.get();
        if (cursor != null) {
            Transaction transaction = cursor.tx;
            if (transaction.f || !transaction.c()) {
                throw new IllegalStateException("Illegal reader TX state");
            }
            transaction.a();
            transaction.e = transaction.f36183c.o;
            transaction.nativeRenew(transaction.f36182b);
            cursor.renew();
        } else {
            cursor = this.f36185a.e().a(this.f36186b);
            this.f36188d.set(cursor);
        }
        return cursor;
    }

    private Cursor<T> g() {
        Cursor<T> a2 = a();
        if (a2 != null) {
            return a2;
        }
        Transaction d2 = this.f36185a.d();
        try {
            return d2.a(this.f36186b);
        } catch (RuntimeException e) {
            d2.close();
            throw e;
        }
    }

    public final long a(T t) {
        Cursor<T> g = g();
        try {
            long put = g.put(t);
            a((Cursor) g);
            return put;
        } finally {
            b((Cursor) g);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (r0.getTx().f != false) goto L_0x0034;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.objectbox.Cursor<T> a() {
        /*
            r4 = this;
            r0 = r4
            io.objectbox.BoxStore r0 = r0.f36185a
            java.lang.ThreadLocal<io.objectbox.Transaction> r0 = r0.l
            java.lang.Object r0 = r0.get()
            io.objectbox.Transaction r0 = (io.objectbox.Transaction) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0051
            r0 = r5
            boolean r0 = r0.f
            if (r0 != 0) goto L_0x0047
            r0 = r4
            java.lang.ThreadLocal<io.objectbox.Cursor<T>> r0 = r0.f36187c
            java.lang.Object r0 = r0.get()
            io.objectbox.Cursor r0 = (io.objectbox.Cursor) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0034
            r0 = r6
            r7 = r0
            r0 = r6
            io.objectbox.Transaction r0 = r0.getTx()
            boolean r0 = r0.f
            if (r0 == 0) goto L_0x0045
        L_0x0034:
            r0 = r5
            r1 = r4
            java.lang.Class<T> r1 = r1.f36186b
            io.objectbox.Cursor r0 = r0.a(r1)
            r7 = r0
            r0 = r4
            java.lang.ThreadLocal<io.objectbox.Cursor<T>> r0 = r0.f36187c
            r1 = r7
            r0.set(r1)
        L_0x0045:
            r0 = r7
            return r0
        L_0x0047:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Active TX is closed"
            r1.<init>(r2)
            throw r0
        L_0x0051:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.objectbox.a.a():io.objectbox.Cursor");
    }

    public final T a(long j) {
        Cursor<T> f = f();
        try {
            return f.get(j);
        } finally {
            c(f);
        }
    }

    public final <RESULT> RESULT a(io.objectbox.b.a<RESULT> aVar) {
        Cursor<T> f = f();
        try {
            return aVar.call(f.internalHandle());
        } finally {
            c(f);
        }
    }

    public final List<T> a(int i, int i2, long j, boolean z) {
        Cursor<T> f = f();
        try {
            return f.getRelationEntities(i, i2, j, z);
        } finally {
            c(f);
        }
    }

    public final List<T> a(int i, g<?> gVar, long j) {
        Cursor<T> f = f();
        try {
            return f.getBacklinkEntities(i, gVar, j);
        } finally {
            c(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Transaction transaction) {
        Cursor<T> cursor = this.f36187c.get();
        if (cursor != null && cursor.getTx() == transaction) {
            this.f36187c.remove();
            cursor.close();
        }
    }

    public final void a(Collection<T> collection) {
        if (collection != null && !collection.isEmpty()) {
            Cursor<T> g = g();
            try {
                for (T t : collection) {
                    g.put(t);
                }
                a((Cursor) g);
            } finally {
                b((Cursor) g);
            }
        }
    }

    public final long b() {
        Cursor<T> f = f();
        try {
            return f.count(0L);
        } finally {
            c(f);
        }
    }

    public final <RESULT> RESULT b(io.objectbox.b.a<RESULT> aVar) {
        Cursor<T> g = g();
        try {
            RESULT call = aVar.call(g.internalHandle());
            a((Cursor) g);
            return call;
        } finally {
            b((Cursor) g);
        }
    }

    public final void b(Collection<T> collection) {
        if (collection != null && !collection.isEmpty()) {
            Cursor<T> g = g();
            try {
                for (T t : collection) {
                    g.deleteEntity(g.getId(t));
                }
                a((Cursor) g);
            } finally {
                b((Cursor) g);
            }
        }
    }

    public final boolean b(long j) {
        Cursor<T> g = g();
        try {
            boolean deleteEntity = g.deleteEntity(j);
            a((Cursor) g);
            return deleteEntity;
        } finally {
            b((Cursor) g);
        }
    }

    public final boolean b(T t) {
        Cursor<T> g = g();
        try {
            boolean deleteEntity = g.deleteEntity(g.getId(t));
            a((Cursor) g);
            return deleteEntity;
        } finally {
            b((Cursor) g);
        }
    }

    public final List<T> c() {
        ArrayList arrayList = new ArrayList();
        Cursor<T> f = f();
        try {
            for (T first = f.first(); first != null; first = f.next()) {
                arrayList.add(first);
            }
            return arrayList;
        } finally {
            c(f);
        }
    }

    public final void d() {
        Cursor<T> g = g();
        try {
            g.deleteAll();
            a((Cursor) g);
        } finally {
            b((Cursor) g);
        }
    }

    public final QueryBuilder<T> e() {
        return new QueryBuilder<>(this, this.f36185a.f36178b, this.f36185a.a((Class<?>) this.f36186b));
    }
}
