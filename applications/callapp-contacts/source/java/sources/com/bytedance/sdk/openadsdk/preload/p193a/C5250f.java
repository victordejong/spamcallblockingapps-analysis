package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5196c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5211d;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5227l;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5119a;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5122b;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5124c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5126d;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5131g;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5133h;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5136i;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5140j;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5142k;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5149n;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5248d;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
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
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/f.class */
public final class C5250f {

    /* renamed from: r */
    private static final C5236a<?> f18655r = C5236a.m32804b(Object.class);

    /* renamed from: a */
    final List<AbstractC5276w> f18656a;

    /* renamed from: b */
    final C5211d f18657b;

    /* renamed from: c */
    final AbstractC5249e f18658c;

    /* renamed from: d */
    final Map<Type, AbstractC5258h<?>> f18659d;

    /* renamed from: e */
    final boolean f18660e;

    /* renamed from: f */
    final boolean f18661f;

    /* renamed from: g */
    final boolean f18662g;

    /* renamed from: h */
    final boolean f18663h;

    /* renamed from: i */
    final boolean f18664i;

    /* renamed from: j */
    final boolean f18665j;

    /* renamed from: k */
    final boolean f18666k;

    /* renamed from: l */
    final String f18667l;

    /* renamed from: m */
    final int f18668m;

    /* renamed from: n */
    final int f18669n;

    /* renamed from: o */
    final EnumC5271u f18670o;

    /* renamed from: p */
    final List<AbstractC5276w> f18671p;

    /* renamed from: q */
    final List<AbstractC5276w> f18672q;

    /* renamed from: s */
    private final ThreadLocal<Map<C5236a<?>, C5256a<?>>> f18673s;

    /* renamed from: t */
    private final Map<C5236a<?>, AbstractC5274v<?>> f18674t;

    /* renamed from: u */
    private final C5196c f18675u;

    /* renamed from: v */
    private final C5126d f18676v;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/f$a.class */
    public static class C5256a<T> extends AbstractC5274v<T> {

        /* renamed from: a */
        private AbstractC5274v<T> f18681a;

        C5256a() {
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: a */
        public void mo32518a(C5247c c5247c, T t) throws IOException {
            AbstractC5274v<T> abstractC5274v = this.f18681a;
            if (abstractC5274v != null) {
                abstractC5274v.mo32518a(c5247c, t);
                return;
            }
            throw new IllegalStateException();
        }

        /* renamed from: a */
        public void m32704a(AbstractC5274v<T> abstractC5274v) {
            if (this.f18681a == null) {
                this.f18681a = abstractC5274v;
                return;
            }
            throw new AssertionError();
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: b */
        public T mo32517b(C5244a c5244a) throws IOException {
            AbstractC5274v<T> abstractC5274v = this.f18681a;
            if (abstractC5274v != null) {
                return abstractC5274v.mo32517b(c5244a);
            }
            throw new IllegalStateException();
        }
    }

    public C5250f() {
        this(C5211d.f18558a, EnumC5237d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, EnumC5271u.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public C5250f(C5211d c5211d, AbstractC5249e abstractC5249e, Map<Type, AbstractC5258h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, EnumC5271u enumC5271u, String str, int i, int i2, List<AbstractC5276w> list, List<AbstractC5276w> list2, List<AbstractC5276w> list3) {
        this.f18673s = new ThreadLocal<>();
        this.f18674t = new ConcurrentHashMap();
        this.f18657b = c5211d;
        this.f18658c = abstractC5249e;
        this.f18659d = map;
        C5196c c5196c = new C5196c(map);
        this.f18675u = c5196c;
        this.f18660e = z;
        this.f18661f = z2;
        this.f18662g = z3;
        this.f18663h = z4;
        this.f18664i = z5;
        this.f18665j = z6;
        this.f18666k = z7;
        this.f18670o = enumC5271u;
        this.f18667l = str;
        this.f18668m = i;
        this.f18669n = i2;
        this.f18671p = list;
        this.f18672q = list2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C5149n.f18475Y);
        arrayList.add(C5133h.f18411a);
        arrayList.add(c5211d);
        arrayList.addAll(list3);
        arrayList.add(C5149n.f18454D);
        arrayList.add(C5149n.f18489m);
        arrayList.add(C5149n.f18483g);
        arrayList.add(C5149n.f18485i);
        arrayList.add(C5149n.f18487k);
        AbstractC5274v<Number> m32730a = m32730a(enumC5271u);
        arrayList.add(C5149n.m32945a(Long.TYPE, Long.class, m32730a));
        arrayList.add(C5149n.m32945a(Double.TYPE, Double.class, m32717a(z7)));
        arrayList.add(C5149n.m32945a(Float.TYPE, Float.class, m32715b(z7)));
        arrayList.add(C5149n.f18500x);
        arrayList.add(C5149n.f18491o);
        arrayList.add(C5149n.f18493q);
        arrayList.add(C5149n.m32946a(AtomicLong.class, m32729a(m32730a)));
        arrayList.add(C5149n.m32946a(AtomicLongArray.class, m32716b(m32730a)));
        arrayList.add(C5149n.f18495s);
        arrayList.add(C5149n.f18502z);
        arrayList.add(C5149n.f18456F);
        arrayList.add(C5149n.f18458H);
        arrayList.add(C5149n.m32946a(BigDecimal.class, C5149n.f18452B));
        arrayList.add(C5149n.m32946a(BigInteger.class, C5149n.f18453C));
        arrayList.add(C5149n.f18460J);
        arrayList.add(C5149n.f18462L);
        arrayList.add(C5149n.f18466P);
        arrayList.add(C5149n.f18468R);
        arrayList.add(C5149n.f18473W);
        arrayList.add(C5149n.f18464N);
        arrayList.add(C5149n.f18480d);
        arrayList.add(C5124c.f18391a);
        arrayList.add(C5149n.f18471U);
        arrayList.add(C5142k.f18433a);
        arrayList.add(C5140j.f18431a);
        arrayList.add(C5149n.f18469S);
        arrayList.add(C5119a.f18384a);
        arrayList.add(C5149n.f18478b);
        arrayList.add(new C5122b(c5196c));
        arrayList.add(new C5131g(c5196c, z2));
        C5126d c5126d = new C5126d(c5196c);
        this.f18676v = c5126d;
        arrayList.add(c5126d);
        arrayList.add(C5149n.f18476Z);
        arrayList.add(new C5136i(c5196c, abstractC5249e, c5211d, c5126d));
        this.f18656a = Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    private static AbstractC5274v<Number> m32730a(EnumC5271u enumC5271u) {
        return enumC5271u == EnumC5271u.DEFAULT ? C5149n.f18496t : new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.3
            /* renamed from: a */
            public final Number mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return Long.valueOf(c5244a.mo32781l());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Number number) throws IOException {
                if (number == null) {
                    c5247c.mo32745f();
                } else {
                    c5247c.mo32754b(number.toString());
                }
            }
        };
    }

    /* renamed from: a */
    private static AbstractC5274v<AtomicLong> m32729a(final AbstractC5274v<Number> abstractC5274v) {
        return new AbstractC5274v<AtomicLong>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.4
            /* renamed from: a */
            public final AtomicLong mo32517b(C5244a c5244a) throws IOException {
                return new AtomicLong(((Number) abstractC5274v.mo32517b(c5244a)).longValue());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AtomicLong atomicLong) throws IOException {
                abstractC5274v.mo32518a(c5247c, Long.valueOf(atomicLong.get()));
            }
        }.m32677a();
    }

    /* renamed from: a */
    private AbstractC5274v<Number> m32717a(boolean z) {
        return z ? C5149n.f18498v : new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.1
            /* renamed from: a */
            public Double mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return Double.valueOf(c5244a.mo32782k());
            }

            /* renamed from: a */
            public void mo32518a(C5247c c5247c, Number number) throws IOException {
                if (number == null) {
                    c5247c.mo32745f();
                    return;
                }
                C5250f.m32736a(number.doubleValue());
                c5247c.mo32759a(number);
            }
        };
    }

    /* renamed from: a */
    static void m32736a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: a */
    private static void m32722a(Object obj, C5244a c5244a) {
        if (obj != null) {
            try {
                if (c5244a.mo32787f() == EnumC5246b.END_DOCUMENT) {
                    return;
                }
                throw new C5263m("JSON document was not fully consumed.");
            } catch (C5248d e) {
                throw new C5270t(e);
            } catch (IOException e2) {
                throw new C5263m(e2);
            }
        }
    }

    /* renamed from: b */
    private static AbstractC5274v<AtomicLongArray> m32716b(final AbstractC5274v<Number> abstractC5274v) {
        return new AbstractC5274v<AtomicLongArray>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.5
            /* renamed from: a */
            public final AtomicLongArray mo32517b(C5244a c5244a) throws IOException {
                ArrayList arrayList = new ArrayList();
                c5244a.mo32801a();
                while (c5244a.mo32788e()) {
                    arrayList.add(Long.valueOf(((Number) abstractC5274v.mo32517b(c5244a)).longValue()));
                }
                c5244a.mo32796b();
                int size = arrayList.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i = 0; i < size; i++) {
                    atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
                }
                return atomicLongArray;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AtomicLongArray atomicLongArray) throws IOException {
                c5247c.mo32756b();
                int length = atomicLongArray.length();
                for (int i = 0; i < length; i++) {
                    abstractC5274v.mo32518a(c5247c, Long.valueOf(atomicLongArray.get(i)));
                }
                c5247c.mo32752c();
            }
        }.m32677a();
    }

    /* renamed from: b */
    private AbstractC5274v<Number> m32715b(boolean z) {
        return z ? C5149n.f18497u : new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.f.2
            /* renamed from: a */
            public Float mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return Float.valueOf((float) c5244a.mo32782k());
            }

            /* renamed from: a */
            public void mo32518a(C5247c c5247c, Number number) throws IOException {
                if (number == null) {
                    c5247c.mo32745f();
                    return;
                }
                C5250f.m32736a(number.floatValue());
                c5247c.mo32759a(number);
            }
        };
    }

    /* renamed from: a */
    public final C5244a m32727a(Reader reader) {
        C5244a c5244a = new C5244a(reader);
        c5244a.m32797a(this.f18665j);
        return c5244a;
    }

    /* renamed from: a */
    public final C5247c m32725a(Writer writer) throws IOException {
        if (this.f18662g) {
            writer.write(")]}'\n");
        }
        C5247c c5247c = new C5247c(writer);
        if (this.f18664i) {
            c5247c.m32751c("  ");
        }
        c5247c.m32747d(this.f18660e);
        return c5247c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [com.bytedance.sdk.openadsdk.preload.a.c.a<?>] */
    /* renamed from: a */
    public final <T> AbstractC5274v<T> m32735a(C5236a<T> c5236a) {
        AbstractC5274v abstractC5274v;
        AbstractC5274v<T> abstractC5274v2 = (AbstractC5274v<T>) this.f18674t.get(c5236a == null ? f18655r : c5236a);
        if (abstractC5274v2 != null) {
            return abstractC5274v2;
        }
        Map<C5236a<?>, C5256a<?>> map = this.f18673s.get();
        boolean z = false;
        HashMap hashMap = map;
        if (map == null) {
            HashMap hashMap2 = new HashMap();
            this.f18673s.set(hashMap2);
            z = true;
            hashMap = hashMap2;
        }
        C5256a<?> c5256a = hashMap.get(c5236a);
        if (c5256a != null) {
            return c5256a;
        }
        try {
            C5256a<?> c5256a2 = new C5256a<>();
            hashMap.put(c5236a, c5256a2);
            Iterator<AbstractC5276w> it2 = this.f18656a.iterator();
            do {
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("GSON (pangle-v3200) cannot handle ".concat(String.valueOf(c5236a)));
                }
                abstractC5274v = (AbstractC5274v<T>) it2.next().mo32675a(this, c5236a);
            } while (abstractC5274v == null);
            c5256a2.m32704a((AbstractC5274v<?>) abstractC5274v);
            this.f18674t.put(c5236a, abstractC5274v);
            hashMap.remove(c5236a);
            if (z) {
                this.f18673s.remove();
            }
            return abstractC5274v;
        } catch (Throwable th) {
            hashMap.remove(c5236a);
            if (z) {
                this.f18673s.remove();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC5274v<T> m32728a(AbstractC5276w abstractC5276w, C5236a<T> c5236a) {
        C5126d c5126d = abstractC5276w;
        if (!this.f18656a.contains(abstractC5276w)) {
            c5126d = this.f18676v;
        }
        boolean z = false;
        for (AbstractC5276w abstractC5276w2 : this.f18656a) {
            if (z) {
                AbstractC5274v<T> mo32675a = abstractC5276w2.mo32675a(this, c5236a);
                if (mo32675a != null) {
                    return mo32675a;
                }
            } else if (abstractC5276w2 == c5126d) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(c5236a)));
    }

    /* renamed from: a */
    public final <T> AbstractC5274v<T> m32724a(Class<T> cls) {
        return m32735a((C5236a) C5236a.m32804b(cls));
    }

    /* renamed from: a */
    public final <T> T m32734a(C5244a c5244a, Type type) throws C5263m, C5270t {
        boolean m32776q = c5244a.m32776q();
        boolean z = true;
        c5244a.m32797a(true);
        try {
            try {
                try {
                    try {
                        c5244a.mo32787f();
                        z = false;
                        T mo32517b = m32735a((C5236a) C5236a.m32806a(type)).mo32517b(c5244a);
                        c5244a.m32797a(m32776q);
                        return mo32517b;
                    } catch (IOException e) {
                        throw new C5270t(e);
                    }
                } catch (IllegalStateException e2) {
                    throw new C5270t(e2);
                }
            } catch (EOFException e3) {
                if (!z) {
                    throw new C5270t(e3);
                }
                c5244a.m32797a(m32776q);
                return null;
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            }
        } catch (Throwable th) {
            c5244a.m32797a(m32776q);
            throw th;
        }
    }

    /* renamed from: a */
    public final <T> T m32726a(Reader reader, Type type) throws C5263m, C5270t {
        C5244a m32727a = m32727a(reader);
        T t = (T) m32734a(m32727a, type);
        m32722a(t, m32727a);
        return t;
    }

    /* renamed from: a */
    public final <T> T m32718a(String str, Type type) throws C5270t {
        if (str == null) {
            return null;
        }
        return (T) m32726a((Reader) new StringReader(str), type);
    }

    /* renamed from: a */
    public final String m32733a(AbstractC5262l abstractC5262l) {
        StringWriter stringWriter = new StringWriter();
        m32731a(abstractC5262l, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public final String m32723a(Object obj) {
        return obj == null ? m32733a((AbstractC5262l) C5264n.f18699a) : m32721a(obj, obj.getClass());
    }

    /* renamed from: a */
    public final String m32721a(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        m32719a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public final void m32732a(AbstractC5262l abstractC5262l, C5247c c5247c) throws C5263m {
        boolean m32744g = c5247c.m32744g();
        c5247c.m32753b(true);
        boolean m32743h = c5247c.m32743h();
        c5247c.m32750c(this.f18663h);
        boolean m32742i = c5247c.m32742i();
        c5247c.m32747d(this.f18660e);
        try {
            try {
                C5227l.m32813a(abstractC5262l, c5247c);
                c5247c.m32753b(m32744g);
                c5247c.m32750c(m32743h);
                c5247c.m32747d(m32742i);
            } catch (IOException e) {
                throw new C5263m(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            c5247c.m32753b(m32744g);
            c5247c.m32750c(m32743h);
            c5247c.m32747d(m32742i);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m32731a(AbstractC5262l abstractC5262l, Appendable appendable) throws C5263m {
        try {
            m32732a(abstractC5262l, m32725a(C5227l.m32812a(appendable)));
        } catch (IOException e) {
            throw new C5263m(e);
        }
    }

    /* renamed from: a */
    public final void m32720a(Object obj, Type type, C5247c c5247c) throws C5263m {
        AbstractC5274v m32735a = m32735a((C5236a) C5236a.m32806a(type));
        boolean m32744g = c5247c.m32744g();
        c5247c.m32753b(true);
        boolean m32743h = c5247c.m32743h();
        c5247c.m32750c(this.f18663h);
        boolean m32742i = c5247c.m32742i();
        c5247c.m32747d(this.f18660e);
        try {
            try {
                m32735a.mo32518a(c5247c, obj);
                c5247c.m32753b(m32744g);
                c5247c.m32750c(m32743h);
                c5247c.m32747d(m32742i);
            } catch (IOException e) {
                throw new C5263m(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON pangle-v3200): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            c5247c.m32753b(m32744g);
            c5247c.m32750c(m32743h);
            c5247c.m32747d(m32742i);
            throw th;
        }
    }

    /* renamed from: a */
    public final void m32719a(Object obj, Type type, Appendable appendable) throws C5263m {
        try {
            m32720a(obj, type, m32725a(C5227l.m32812a(appendable)));
        } catch (IOException e) {
            throw new C5263m(e);
        }
    }

    public final String toString() {
        return "{serializeNulls:" + this.f18660e + ",factories:" + this.f18656a + ",instanceCreators:" + this.f18675u + "}";
    }
}
