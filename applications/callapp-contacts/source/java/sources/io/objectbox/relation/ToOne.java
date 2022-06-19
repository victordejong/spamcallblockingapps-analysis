package io.objectbox.relation;

import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.Cursor;
import io.objectbox.exception.DbDetachedException;
import io.objectbox.p502b.C17954f;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/ToOne.class */
public class ToOne<TARGET> implements Serializable {

    /* renamed from: a */
    private final Object f62874a;

    /* renamed from: b */
    private final C17990b<Object, TARGET> f62875b;

    /* renamed from: c */
    private final boolean f62876c;

    /* renamed from: d */
    private transient BoxStore f62877d;

    /* renamed from: e */
    private transient C17944a<Object> f62878e;

    /* renamed from: f */
    private volatile transient C17944a<TARGET> f62879f;

    /* renamed from: g */
    private transient Field f62880g;

    /* renamed from: h */
    private TARGET f62881h;

    /* renamed from: i */
    private long f62882i;

    /* renamed from: j */
    private volatile long f62883j;

    /* renamed from: k */
    private boolean f62884k;

    /* renamed from: l */
    private boolean f62885l;

    public ToOne(Object obj, C17990b<?, TARGET> c17990b) {
        if (obj != null) {
            if (c17990b == null) {
                throw new IllegalArgumentException("No relation info given (null)");
            }
            this.f62874a = obj;
            this.f62875b = c17990b;
            this.f62876c = c17990b.f62888c.f62812g;
            return;
        }
        throw new IllegalArgumentException("No source entity given (null)");
    }

    /* renamed from: a */
    private TARGET m4572a(long j) {
        synchronized (this) {
            if (this.f62883j == j) {
                return this.f62881h;
            }
            if (this.f62879f == null) {
                try {
                    BoxStore boxStore = (BoxStore) C17954f.m4683a().m4682a(this.f62874a.getClass(), "__boxStore").get(this.f62874a);
                    this.f62877d = boxStore;
                    if (boxStore == null && boxStore == null) {
                        throw new DbDetachedException("Cannot resolve relation for detached entities, call box.attach(entity) beforehand.");
                    }
                    this.f62885l = boxStore.f62687k;
                    this.f62878e = this.f62877d.m4727d(this.f62875b.f62886a.getEntityClass());
                    this.f62879f = this.f62877d.m4727d(this.f62875b.f62887b.getEntityClass());
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            }
            TARGET m4715a = this.f62879f.m4715a(j);
            m4569a(m4715a, j);
            return m4715a;
        }
    }

    /* renamed from: a */
    private void m4569a(TARGET target, long j) {
        synchronized (this) {
            if (this.f62885l) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder("Setting resolved ToOne target to ");
                sb.append(target == null ? JsonReaderKt.NULL : "non-null");
                sb.append(" for ID ");
                sb.append(j);
                printStream.println(sb.toString());
            }
            this.f62883j = j;
            this.f62881h = target;
        }
    }

    /* renamed from: d */
    private void m4566d() {
        synchronized (this) {
            this.f62883j = 0L;
            this.f62881h = null;
        }
    }

    /* renamed from: e */
    private Field m4565e() {
        if (this.f62880g == null) {
            this.f62880g = C17954f.m4683a().m4682a(this.f62874a.getClass(), this.f62875b.f62888c.f62810e);
        }
        return this.f62880g;
    }

    /* renamed from: a */
    public final TARGET m4573a() {
        return m4572a(m4568b());
    }

    /* renamed from: a */
    public final void m4571a(Cursor<TARGET> cursor) {
        this.f62884k = false;
        long put = cursor.put(this.f62881h);
        setTargetId(put);
        m4569a(this.f62881h, put);
    }

    /* renamed from: a */
    public final void m4570a(TARGET target) {
        if (target == null) {
            setTargetId(0L);
            m4566d();
            return;
        }
        long id = this.f62875b.f62887b.getIdGetter().getId(target);
        this.f62884k = id == 0;
        setTargetId(id);
        m4569a(target, id);
    }

    /* renamed from: b */
    public final long m4568b() {
        if (this.f62876c) {
            return this.f62882i;
        }
        Field m4565e = m4565e();
        try {
            Long l = (Long) m4565e.get(this.f62874a);
            if (l == null) {
                return 0L;
            }
            return l.longValue();
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Could not access field ".concat(String.valueOf(m4565e)));
        }
    }

    /* renamed from: c */
    public final boolean m4567c() {
        return this.f62884k && this.f62881h != null && m4568b() == 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ToOne)) {
            return false;
        }
        ToOne toOne = (ToOne) obj;
        return this.f62875b == toOne.f62875b && m4568b() == toOne.m4568b();
    }

    public int hashCode() {
        long m4568b = m4568b();
        return (int) (m4568b ^ (m4568b >>> 32));
    }

    public void setTargetId(long j) {
        if (this.f62876c) {
            this.f62882i = j;
        } else {
            try {
                m4565e().set(this.f62874a, Long.valueOf(j));
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Could not update to-one ID in entity", e);
            }
        }
        if (j != 0) {
            this.f62884k = false;
        }
    }
}
