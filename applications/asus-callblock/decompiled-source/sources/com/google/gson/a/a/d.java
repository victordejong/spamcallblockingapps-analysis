package com.google.gson.a.a;

import com.google.gson.c.a;
import com.google.gson.c.b;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.r;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/d.class */
public final class d extends a {
    private static final Reader c = new Reader() { // from class: com.google.gson.a.a.d.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final Object d = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final List<Object> f4446a = new ArrayList();

    public d(l lVar) {
        super(c);
        this.f4446a.add(lVar);
    }

    private Object p() {
        return this.f4446a.remove(this.f4446a.size() - 1);
    }

    @Override // com.google.gson.c.a
    public final void a() {
        a(b.BEGIN_ARRAY);
        this.f4446a.add(((i) g()).iterator());
    }

    public final void a(b bVar) {
        if (f() != bVar) {
            throw new IllegalStateException("Expected " + bVar + " but was " + f());
        }
    }

    @Override // com.google.gson.c.a
    public final void b() {
        a(b.END_ARRAY);
        p();
        p();
    }

    @Override // com.google.gson.c.a
    public final void c() {
        a(b.BEGIN_OBJECT);
        this.f4446a.add(((o) g()).f4554a.entrySet().iterator());
    }

    @Override // com.google.gson.c.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4446a.clear();
        this.f4446a.add(d);
    }

    @Override // com.google.gson.c.a
    public final void d() {
        a(b.END_OBJECT);
        p();
        p();
    }

    @Override // com.google.gson.c.a
    public final boolean e() {
        b f = f();
        return (f == b.END_OBJECT || f == b.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.c.a
    public final b f() {
        b bVar;
        while (true) {
            if (this.f4446a.isEmpty()) {
                bVar = b.END_DOCUMENT;
                break;
            }
            Object g = g();
            if (g instanceof Iterator) {
                boolean z = this.f4446a.get(this.f4446a.size() - 2) instanceof o;
                Iterator it = (Iterator) g;
                if (!it.hasNext()) {
                    bVar = z ? b.END_OBJECT : b.END_ARRAY;
                } else if (z) {
                    bVar = b.NAME;
                    break;
                } else {
                    this.f4446a.add(it.next());
                }
            } else if (g instanceof o) {
                bVar = b.BEGIN_OBJECT;
            } else if (g instanceof i) {
                bVar = b.BEGIN_ARRAY;
            } else if (g instanceof r) {
                r rVar = (r) g;
                if (rVar.f4556a instanceof String) {
                    bVar = b.STRING;
                } else if (rVar.f4556a instanceof Boolean) {
                    bVar = b.BOOLEAN;
                } else if (rVar.f4556a instanceof Number) {
                    bVar = b.NUMBER;
                } else {
                    throw new AssertionError();
                }
            } else if (g instanceof n) {
                bVar = b.NULL;
            } else if (g == d) {
                throw new IllegalStateException("JsonReader is closed");
            } else {
                throw new AssertionError();
            }
        }
        return bVar;
    }

    public final Object g() {
        return this.f4446a.get(this.f4446a.size() - 1);
    }

    @Override // com.google.gson.c.a
    public final String h() {
        a(b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) g()).next();
        this.f4446a.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.gson.c.a
    public final String i() {
        b f = f();
        if (f == b.STRING || f == b.NUMBER) {
            return ((r) p()).b();
        }
        throw new IllegalStateException("Expected " + b.STRING + " but was " + f);
    }

    @Override // com.google.gson.c.a
    public final boolean j() {
        a(b.BOOLEAN);
        return ((r) p()).f();
    }

    @Override // com.google.gson.c.a
    public final void k() {
        a(b.NULL);
        p();
    }

    @Override // com.google.gson.c.a
    public final double l() {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            double c2 = ((r) g()).c();
            if (this.f4535b || (!Double.isNaN(c2) && !Double.isInfinite(c2))) {
                p();
                return c2;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + c2);
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f);
    }

    @Override // com.google.gson.c.a
    public final long m() {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            long d2 = ((r) g()).d();
            p();
            return d2;
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f);
    }

    @Override // com.google.gson.c.a
    public final int n() {
        b f = f();
        if (f == b.NUMBER || f == b.STRING) {
            int e = ((r) g()).e();
            p();
            return e;
        }
        throw new IllegalStateException("Expected " + b.NUMBER + " but was " + f);
    }

    @Override // com.google.gson.c.a
    public final void o() {
        if (f() == b.NAME) {
            h();
        } else {
            p();
        }
    }

    @Override // com.google.gson.c.a
    public final String toString() {
        return getClass().getSimpleName();
    }
}
