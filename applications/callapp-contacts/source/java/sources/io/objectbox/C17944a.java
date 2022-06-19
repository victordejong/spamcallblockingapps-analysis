package io.objectbox;

import io.objectbox.p502b.AbstractC17948a;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: io.objectbox.a */
/* loaded from: classes5-dex2jar.jar:io/objectbox/a.class */
public final class C17944a<T> {

    /* renamed from: a */
    public final BoxStore f62707a;

    /* renamed from: b */
    public final Class<T> f62708b;

    /* renamed from: c */
    final ThreadLocal<Cursor<T>> f62709c = new ThreadLocal<>();

    /* renamed from: d */
    public final ThreadLocal<Cursor<T>> f62710d = new ThreadLocal<>();

    /* renamed from: e */
    private final AbstractC17950c<T> f62711e;

    public C17944a(BoxStore boxStore, Class<T> cls) {
        this.f62707a = boxStore;
        this.f62708b = cls;
        this.f62711e = boxStore.m4730c(cls).getIdGetter();
    }

    /* renamed from: a */
    private void m4714a(Cursor<T> cursor) {
        if (this.f62709c.get() == null) {
            cursor.close();
            Transaction tx = cursor.getTx();
            tx.m4720b();
            tx.close();
        }
    }

    /* renamed from: b */
    private void m4707b(Cursor<T> cursor) {
        if (this.f62709c.get() == null) {
            Transaction tx = cursor.getTx();
            if (tx.f62705f) {
                return;
            }
            cursor.close();
            tx.m4722a();
            tx.nativeAbort(tx.f62701b);
            tx.close();
        }
    }

    /* renamed from: c */
    private void m4702c(Cursor<T> cursor) {
        if (this.f62709c.get() == null) {
            Transaction tx = cursor.getTx();
            if (tx.f62705f || tx.m4719c() || !tx.f62703d) {
                throw new IllegalStateException("Illegal reader TX state");
            }
            tx.m4722a();
            tx.nativeRecycle(tx.f62701b);
        }
    }

    /* renamed from: f */
    private Cursor<T> m4699f() {
        Cursor<T> m4718a = m4718a();
        if (m4718a != null) {
            return m4718a;
        }
        Cursor<T> cursor = this.f62710d.get();
        if (cursor != null) {
            Transaction transaction = cursor.f62699tx;
            if (transaction.f62705f || !transaction.m4719c()) {
                throw new IllegalStateException("Illegal reader TX state");
            }
            transaction.m4722a();
            transaction.f62704e = transaction.f62702c.f62691o;
            transaction.nativeRenew(transaction.f62701b);
            cursor.renew();
        } else {
            cursor = this.f62707a.m4726e().m4721a(this.f62708b);
            this.f62710d.set(cursor);
        }
        return cursor;
    }

    /* renamed from: g */
    private Cursor<T> m4698g() {
        Cursor<T> m4718a = m4718a();
        if (m4718a != null) {
            return m4718a;
        }
        Transaction m4728d = this.f62707a.m4728d();
        try {
            return m4728d.m4721a(this.f62708b);
        } catch (RuntimeException e) {
            m4728d.close();
            throw e;
        }
    }

    /* renamed from: a */
    public final long m4711a(T t) {
        Cursor<T> m4698g = m4698g();
        try {
            long put = m4698g.put(t);
            m4714a((Cursor) m4698g);
            return put;
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (r0.getTx().f62705f != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.objectbox.Cursor<T> m4718a() {
        /*
            r4 = this;
            r0 = r4
            io.objectbox.BoxStore r0 = r0.f62707a
            java.lang.ThreadLocal<io.objectbox.Transaction> r0 = r0.f62688l
            java.lang.Object r0 = r0.get()
            io.objectbox.Transaction r0 = (io.objectbox.Transaction) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L51
            r0 = r5
            boolean r0 = r0.f62705f
            if (r0 != 0) goto L47
            r0 = r4
            java.lang.ThreadLocal<io.objectbox.Cursor<T>> r0 = r0.f62709c
            java.lang.Object r0 = r0.get()
            io.objectbox.Cursor r0 = (io.objectbox.Cursor) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r6
            r7 = r0
            r0 = r6
            io.objectbox.Transaction r0 = r0.getTx()
            boolean r0 = r0.f62705f
            if (r0 == 0) goto L45
        L34:
            r0 = r5
            r1 = r4
            java.lang.Class<T> r1 = r1.f62708b
            io.objectbox.Cursor r0 = r0.m4721a(r1)
            r7 = r0
            r0 = r4
            java.lang.ThreadLocal<io.objectbox.Cursor<T>> r0 = r0.f62709c
            r1 = r7
            r0.set(r1)
        L45:
            r0 = r7
            return r0
        L47:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Active TX is closed"
            r1.<init>(r2)
            throw r0
        L51:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.objectbox.C17944a.m4718a():io.objectbox.Cursor");
    }

    /* renamed from: a */
    public final T m4715a(long j) {
        Cursor<T> m4699f = m4699f();
        try {
            return m4699f.get(j);
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: a */
    public final <RESULT> RESULT m4712a(AbstractC17948a<RESULT> abstractC17948a) {
        Cursor<T> m4699f = m4699f();
        try {
            return abstractC17948a.call(m4699f.internalHandle());
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: a */
    public final List<T> m4717a(int i, int i2, long j, boolean z) {
        Cursor<T> m4699f = m4699f();
        try {
            return m4699f.getRelationEntities(i, i2, j, z);
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: a */
    public final List<T> m4716a(int i, C17978g<?> c17978g, long j) {
        Cursor<T> m4699f = m4699f();
        try {
            return m4699f.getBacklinkEntities(i, c17978g, j);
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: a */
    public final void m4713a(Transaction transaction) {
        Cursor<T> cursor = this.f62709c.get();
        if (cursor == null || cursor.getTx() != transaction) {
            return;
        }
        this.f62709c.remove();
        cursor.close();
    }

    /* renamed from: a */
    public final void m4710a(Collection<T> collection) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Cursor<T> m4698g = m4698g();
        try {
            for (T t : collection) {
                m4698g.put(t);
            }
            m4714a((Cursor) m4698g);
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: b */
    public final long m4709b() {
        Cursor<T> m4699f = m4699f();
        try {
            return m4699f.count(0L);
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: b */
    public final <RESULT> RESULT m4706b(AbstractC17948a<RESULT> abstractC17948a) {
        Cursor<T> m4698g = m4698g();
        try {
            RESULT call = abstractC17948a.call(m4698g.internalHandle());
            m4714a((Cursor) m4698g);
            return call;
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: b */
    public final void m4704b(Collection<T> collection) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        Cursor<T> m4698g = m4698g();
        try {
            for (T t : collection) {
                m4698g.deleteEntity(m4698g.getId(t));
            }
            m4714a((Cursor) m4698g);
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: b */
    public final boolean m4708b(long j) {
        Cursor<T> m4698g = m4698g();
        try {
            boolean deleteEntity = m4698g.deleteEntity(j);
            m4714a((Cursor) m4698g);
            return deleteEntity;
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: b */
    public final boolean m4705b(T t) {
        Cursor<T> m4698g = m4698g();
        try {
            boolean deleteEntity = m4698g.deleteEntity(m4698g.getId(t));
            m4714a((Cursor) m4698g);
            return deleteEntity;
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: c */
    public final List<T> m4703c() {
        ArrayList arrayList = new ArrayList();
        Cursor<T> m4699f = m4699f();
        try {
            for (T first = m4699f.first(); first != null; first = m4699f.next()) {
                arrayList.add(first);
            }
            return arrayList;
        } finally {
            m4702c(m4699f);
        }
    }

    /* renamed from: d */
    public final void m4701d() {
        Cursor<T> m4698g = m4698g();
        try {
            m4698g.deleteAll();
            m4714a((Cursor) m4698g);
        } finally {
            m4707b((Cursor) m4698g);
        }
    }

    /* renamed from: e */
    public final QueryBuilder<T> m4700e() {
        return new QueryBuilder<>(this, this.f62707a.f62678b, this.f62707a.m4743a((Class<?>) this.f62708b));
    }
}
