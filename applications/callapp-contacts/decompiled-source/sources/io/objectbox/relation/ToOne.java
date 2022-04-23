package io.objectbox.relation;

import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.a;
import io.objectbox.b.f;
import io.objectbox.exception.DbDetachedException;
import java.io.PrintStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/ToOne.class */
public class ToOne<TARGET> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f36271a;

    /* renamed from: b  reason: collision with root package name */
    private final b<Object, TARGET> f36272b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f36273c;

    /* renamed from: d  reason: collision with root package name */
    private transient BoxStore f36274d;
    private transient a<Object> e;
    private volatile transient a<TARGET> f;
    private transient Field g;
    private TARGET h;
    private long i;
    private volatile long j;
    private boolean k;
    private boolean l;

    public ToOne(Object obj, b<?, TARGET> bVar) {
        if (obj == null) {
            throw new IllegalArgumentException("No source entity given (null)");
        } else if (bVar != null) {
            this.f36271a = obj;
            this.f36272b = bVar;
            this.f36273c = bVar.f36277c.g;
        } else {
            throw new IllegalArgumentException("No relation info given (null)");
        }
    }

    private TARGET a(long j) {
        synchronized (this) {
            if (this.j == j) {
                return this.h;
            }
            if (this.f == null) {
                try {
                    BoxStore boxStore = (BoxStore) f.a().a(this.f36271a.getClass(), "__boxStore").get(this.f36271a);
                    this.f36274d = boxStore;
                    if (boxStore == null && boxStore == null) {
                        throw new DbDetachedException("Cannot resolve relation for detached entities, call box.attach(entity) beforehand.");
                    }
                    this.l = boxStore.k;
                    this.e = this.f36274d.d(this.f36272b.f36275a.getEntityClass());
                    this.f = this.f36274d.d(this.f36272b.f36276b.getEntityClass());
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                }
            }
            TARGET a2 = this.f.a(j);
            a(a2, j);
            return a2;
        }
    }

    private void a(TARGET target, long j) {
        synchronized (this) {
            if (this.l) {
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder("Setting resolved ToOne target to ");
                sb.append(target == null ? JsonReaderKt.NULL : "non-null");
                sb.append(" for ID ");
                sb.append(j);
                printStream.println(sb.toString());
            }
            this.j = j;
            this.h = target;
        }
    }

    private void d() {
        synchronized (this) {
            this.j = 0L;
            this.h = null;
        }
    }

    private Field e() {
        if (this.g == null) {
            this.g = f.a().a(this.f36271a.getClass(), this.f36272b.f36277c.e);
        }
        return this.g;
    }

    public final TARGET a() {
        return a(b());
    }

    public final void a(Cursor<TARGET> cursor) {
        this.k = false;
        long put = cursor.put(this.h);
        setTargetId(put);
        a(this.h, put);
    }

    public final void a(TARGET target) {
        if (target != null) {
            long id = this.f36272b.f36276b.getIdGetter().getId(target);
            this.k = id == 0;
            setTargetId(id);
            a(target, id);
            return;
        }
        setTargetId(0L);
        d();
    }

    public final long b() {
        if (this.f36273c) {
            return this.i;
        }
        Field e = e();
        try {
            Long l = (Long) e.get(this.f36271a);
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Could not access field ".concat(String.valueOf(e)));
        }
    }

    public final boolean c() {
        return this.k && this.h != null && b() == 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ToOne)) {
            return false;
        }
        ToOne toOne = (ToOne) obj;
        return this.f36272b == toOne.f36272b && b() == toOne.b();
    }

    public int hashCode() {
        long b2 = b();
        return (int) (b2 ^ (b2 >>> 32));
    }

    public void setTargetId(long j) {
        if (this.f36273c) {
            this.i = j;
        } else {
            try {
                e().set(this.f36271a, Long.valueOf(j));
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Could not update to-one ID in entity", e);
            }
        }
        if (j != 0) {
            this.k = false;
        }
    }
}
