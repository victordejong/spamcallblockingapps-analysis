package com.bytedance.sdk.openadsdk.preload.a;

import com.bytedance.sdk.openadsdk.preload.a.b.a.b;
import com.bytedance.sdk.openadsdk.preload.a.b.a.g;
import com.bytedance.sdk.openadsdk.preload.a.b.a.h;
import com.bytedance.sdk.openadsdk.preload.a.b.a.i;
import com.bytedance.sdk.openadsdk.preload.a.b.a.j;
import com.bytedance.sdk.openadsdk.preload.a.b.a.k;
import com.bytedance.sdk.openadsdk.preload.a.b.a.n;
import com.bytedance.sdk.openadsdk.preload.a.b.c;
import com.bytedance.sdk.openadsdk.preload.a.b.d;
import com.bytedance.sdk.openadsdk.preload.a.b.l;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/f.class */
public final class f {
    private static final com.bytedance.sdk.openadsdk.preload.a.c.a<?> r = com.bytedance.sdk.openadsdk.preload.a.c.a.b(Object.class);

    /* renamed from: a  reason: collision with root package name */
    final List<w> f10075a;

    /* renamed from: b  reason: collision with root package name */
    final d f10076b;

    /* renamed from: c  reason: collision with root package name */
    final e f10077c;

    /* renamed from: d  reason: collision with root package name */
    final Map<Type, h<?>> f10078d;
    final boolean e;
    final boolean f;
    final boolean g;
    final boolean h;
    final boolean i;
    final boolean j;
    final boolean k;
    final String l;
    final int m;
    final int n;
    final u o;
    final List<w> p;
    final List<w> q;
    private final ThreadLocal<Map<com.bytedance.sdk.openadsdk.preload.a.c.a<?>, a<?>>> s;
    private final Map<com.bytedance.sdk.openadsdk.preload.a.c.a<?>, v<?>> t;
    private final c u;
    private final com.bytedance.sdk.openadsdk.preload.a.b.a.d v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/f$a.class */
    public static class a<T> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private v<T> f10083a;

        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, T t) throws IOException {
            v<T> vVar = this.f10083a;
            if (vVar != null) {
                vVar.a(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }

        public void a(v<T> vVar) {
            if (this.f10083a == null) {
                this.f10083a = vVar;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            v<T> vVar = this.f10083a;
            if (vVar != null) {
                return vVar.b(aVar);
            }
            throw new IllegalStateException();
        }
    }

    public f() {
        this(d.f10021a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, u.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, u uVar, String str, int i, int i2, List<w> list, List<w> list2, List<w> list3) {
        this.s = new ThreadLocal<>();
        this.t = new ConcurrentHashMap();
        this.f10076b = dVar;
        this.f10077c = eVar;
        this.f10078d = map;
        c cVar = new c(map);
        this.u = cVar;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = z5;
        this.j = z6;
        this.k = z7;
        this.o = uVar;
        this.l = str;
        this.m = i;
        this.n = i2;
        this.p = list;
        this.q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(n.Y);
        arrayList.add(h.f9933a);
        arrayList.add(dVar);
        arrayList.addAll(list3);
        arrayList.add(n.D);
        arrayList.add(n.m);
        arrayList.add(n.g);
        arrayList.add(n.i);
        arrayList.add(n.k);
        v<Number> a2 = a(uVar);
        arrayList.add(n.a(Long.TYPE, Long.class, a2));
        arrayList.add(n.a(Double.TYPE, Double.class, a(z7)));
        arrayList.add(n.a(Float.TYPE, Float.class, b(z7)));
        arrayList.add(n.x);
        arrayList.add(n.o);
        arrayList.add(n.q);
        arrayList.add(n.a(AtomicLong.class, a(a2)));
        arrayList.add(n.a(AtomicLongArray.class, b(a2)));
        arrayList.add(n.s);
        arrayList.add(n.z);
        arrayList.add(n.F);
        arrayList.add(n.H);
        arrayList.add(n.a(BigDecimal.class, n.B));
        arrayList.add(n.a(BigInteger.class, n.C));
        arrayList.add(n.J);
        arrayList.add(n.L);
        arrayList.add(n.P);
        arrayList.add(n.R);
        arrayList.add(n.W);
        arrayList.add(n.N);
        arrayList.add(n.f9965d);
        arrayList.add(com.bytedance.sdk.openadsdk.preload.a.b.a.c.f9917a);
        arrayList.add(n.U);
        arrayList.add(k.f9948a);
        arrayList.add(j.f9946a);
        arrayList.add(n.S);
        arrayList.add(com.bytedance.sdk.openadsdk.preload.a.b.a.a.f9910a);
        arrayList.add(n.f9963b);
        arrayList.add(new b(cVar));
        arrayList.add(new g(cVar, z2));
        com.bytedance.sdk.openadsdk.preload.a.b.a.d dVar2 = new com.bytedance.sdk.openadsdk.preload.a.b.a.d(cVar);
        this.v = dVar2;
        arrayList.add(dVar2);
        arrayList.add(n.Z);
        arrayList.add(new i(cVar, eVar, dVar, dVar2));
        this.f10075a = Collections.unmodifiableList(arrayList);
    }

    private static v<Number> a(u uVar) {
        return uVar == u.DEFAULT ? n.t : new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.3
            /* renamed from: a */
            public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
                    return Long.valueOf(aVar.l());
                }
                aVar.j();
                return null;
            }

            public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                } else {
                    cVar.b(number.toString());
                }
            }
        };
    }

    private static v<AtomicLong> a(final v<Number> vVar) {
        return new v<AtomicLong>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.4
            /* renamed from: a */
            public final AtomicLong b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                return new AtomicLong(((Number) v.this.b(aVar)).longValue());
            }

            public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, AtomicLong atomicLong) throws IOException {
                v.this.a(cVar, Long.valueOf(atomicLong.get()));
            }
        }.a();
    }

    private v<Number> a(boolean z) {
        return z ? n.v : new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.1
            /* renamed from: a */
            public Double b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
                    return Double.valueOf(aVar.k());
                }
                aVar.j();
                return null;
            }

            public void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                    return;
                }
                f.a(number.doubleValue());
                cVar.a(number);
            }
        };
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private static void a(Object obj, com.bytedance.sdk.openadsdk.preload.a.d.a aVar) {
        if (obj != null) {
            try {
                if (aVar.f() != com.bytedance.sdk.openadsdk.preload.a.d.b.END_DOCUMENT) {
                    throw new m("JSON document was not fully consumed.");
                }
            } catch (com.bytedance.sdk.openadsdk.preload.a.d.d e) {
                throw new t(e);
            } catch (IOException e2) {
                throw new m(e2);
            }
        }
    }

    private static v<AtomicLongArray> b(final v<Number> vVar) {
        return new v<AtomicLongArray>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.5
            /* renamed from: a */
            public final AtomicLongArray b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    arrayList.add(Long.valueOf(((Number) v.this.b(aVar)).longValue()));
                }
                aVar.b();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }

            public final void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, AtomicLongArray atomicLongArray) throws IOException {
                cVar.b();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    v.this.a(cVar, Long.valueOf(atomicLongArray.get(i)));
                }
                cVar.c();
            }
        }.a();
    }

    private v<Number> b(boolean z) {
        return z ? n.u : new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.2
            /* renamed from: a */
            public Float b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != com.bytedance.sdk.openadsdk.preload.a.d.b.NULL) {
                    return Float.valueOf((float) aVar.k());
                }
                aVar.j();
                return null;
            }

            public void a(com.bytedance.sdk.openadsdk.preload.a.d.c cVar, Number number) throws IOException {
                if (number == null) {
                    cVar.f();
                    return;
                }
                f.a(number.floatValue());
                cVar.a(number);
            }
        };
    }

    public final com.bytedance.sdk.openadsdk.preload.a.d.a a(Reader reader) {
        com.bytedance.sdk.openadsdk.preload.a.d.a aVar = new com.bytedance.sdk.openadsdk.preload.a.d.a(reader);
        aVar.a(this.j);
        return aVar;
    }

    public final com.bytedance.sdk.openadsdk.preload.a.d.c a(Writer writer) throws IOException {
        if (this.g) {
            writer.write(")]}'\n");
        }
        com.bytedance.sdk.openadsdk.preload.a.d.c cVar = new com.bytedance.sdk.openadsdk.preload.a.d.c(writer);
        if (this.i) {
            cVar.c("  ");
        }
        cVar.d(this.e);
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> v<T> a(com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
        v vVar;
        v<T> vVar2 = (v<T>) this.t.get(aVar == null ? r : aVar);
        if (vVar2 != null) {
            return vVar2;
        }
        Map<com.bytedance.sdk.openadsdk.preload.a.c.a<?>, a<?>> map = this.s.get();
        boolean z = false;
        Map<com.bytedance.sdk.openadsdk.preload.a.c.a<?>, a<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.s.set(map2);
            z = true;
        }
        a<?> aVar2 = map2.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map2.put(aVar, aVar3);
            Iterator<w> it2 = this.f10075a.iterator();
            do {
                if (it2.hasNext()) {
                    vVar = (v<T>) it2.next().a(this, aVar);
                } else {
                    throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(aVar)));
                }
            } while (vVar == null);
            aVar3.a((v<?>) vVar);
            this.t.put(aVar, vVar);
            return vVar;
        } finally {
            map2.remove(aVar);
            if (z) {
                this.s.remove();
            }
        }
    }

    public final <T> v<T> a(w wVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
        w wVar2 = wVar;
        if (!this.f10075a.contains(wVar)) {
            wVar2 = this.v;
        }
        boolean z = false;
        for (w wVar3 : this.f10075a) {
            if (z) {
                v<T> a2 = wVar3.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            } else if (wVar3 == wVar2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> v<T> a(Class<T> cls) {
        return a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.b(cls));
    }

    public final <T> T a(com.bytedance.sdk.openadsdk.preload.a.d.a aVar, Type type) throws m, t {
        boolean q = aVar.q();
        boolean z = true;
        aVar.a(true);
        try {
            try {
                try {
                    try {
                        aVar.f();
                        z = false;
                        T b2 = a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(type)).b(aVar);
                        aVar.a(q);
                        return b2;
                    } catch (IOException e) {
                        throw new t(e);
                    }
                } catch (IllegalStateException e2) {
                    throw new t(e2);
                }
            } catch (EOFException e3) {
                if (z) {
                    aVar.a(q);
                    return null;
                }
                throw new t(e3);
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            }
        } catch (Throwable th) {
            aVar.a(q);
            throw th;
        }
    }

    public final <T> T a(Reader reader, Type type) throws m, t {
        com.bytedance.sdk.openadsdk.preload.a.d.a a2 = a(reader);
        T t = (T) a(a2, type);
        a(t, a2);
        return t;
    }

    public final <T> T a(String str, Type type) throws t {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    public final String a(l lVar) {
        StringWriter stringWriter = new StringWriter();
        a(lVar, stringWriter);
        return stringWriter.toString();
    }

    public final String a(Object obj) {
        return obj == null ? a((l) n.f10089a) : a(obj, obj.getClass());
    }

    public final String a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public final void a(l lVar, com.bytedance.sdk.openadsdk.preload.a.d.c cVar) throws m {
        boolean g = cVar.g();
        cVar.b(true);
        boolean h = cVar.h();
        cVar.c(this.h);
        boolean i = cVar.i();
        cVar.d(this.e);
        try {
            try {
                l.a(lVar, cVar);
                cVar.b(g);
                cVar.c(h);
                cVar.d(i);
            } catch (IOException e) {
                throw new m(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
            throw th;
        }
    }

    public final void a(l lVar, Appendable appendable) throws m {
        try {
            a(lVar, a(l.a(appendable)));
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public final void a(Object obj, Type type, com.bytedance.sdk.openadsdk.preload.a.d.c cVar) throws m {
        v a2 = a((com.bytedance.sdk.openadsdk.preload.a.c.a) com.bytedance.sdk.openadsdk.preload.a.c.a.a(type));
        boolean g = cVar.g();
        cVar.b(true);
        boolean h = cVar.h();
        cVar.c(this.h);
        boolean i = cVar.i();
        cVar.d(this.e);
        try {
            try {
                a2.a(cVar, obj);
                cVar.b(g);
                cVar.c(h);
                cVar.d(i);
            } catch (IOException e) {
                throw new m(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            cVar.b(g);
            cVar.c(h);
            cVar.d(i);
            throw th;
        }
    }

    public final void a(Object obj, Type type, Appendable appendable) throws m {
        try {
            a(obj, type, a(l.a(appendable)));
        } catch (IOException e) {
            throw new m(e);
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.e + ",factories:" + this.f10075a + ",instanceCreators:" + this.u + "}";
    }
}
