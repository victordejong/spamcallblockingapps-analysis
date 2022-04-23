package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.g;
import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.i;
import com.bytedance.sdk.openadsdk.preload.a.l;
import com.bytedance.sdk.openadsdk.preload.a.m;
import com.bytedance.sdk.openadsdk.preload.a.o;
import com.bytedance.sdk.openadsdk.preload.a.q;
import com.bytedance.sdk.openadsdk.preload.a.t;
import com.bytedance.sdk.openadsdk.preload.a.v;
import com.bytedance.sdk.openadsdk.preload.a.w;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n.class */
public final class n {
    public static final v<String> A;
    public static final w D;
    public static final v<StringBuilder> E;
    public static final w F;
    public static final v<StringBuffer> G;
    public static final w H;
    public static final v<URL> I;
    public static final w J;
    public static final v<URI> K;
    public static final w L;
    public static final v<InetAddress> M;
    public static final w N;
    public static final v<UUID> O;
    public static final w P;
    public static final v<Currency> Q;
    public static final w R;
    public static final v<Calendar> T;
    public static final w U;
    public static final v<Locale> V;
    public static final w W;
    public static final v<l> X;
    public static final w Y;

    /* renamed from: a  reason: collision with root package name */
    public static final v<Class> f9962a;

    /* renamed from: b  reason: collision with root package name */
    public static final w f9963b;

    /* renamed from: c  reason: collision with root package name */
    public static final v<BitSet> f9964c;

    /* renamed from: d  reason: collision with root package name */
    public static final w f9965d;
    public static final v<Boolean> e;
    public static final w g;
    public static final v<Number> h;
    public static final w i;
    public static final v<Number> j;
    public static final w k;
    public static final v<Number> l;
    public static final w m;
    public static final v<AtomicInteger> n;
    public static final w o;
    public static final v<AtomicBoolean> p;
    public static final w q;
    public static final v<AtomicIntegerArray> r;
    public static final w s;
    public static final v<Number> w;
    public static final w x;
    public static final v<Character> y;
    public static final w z;
    public static final v<Boolean> f = new v<Boolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.31
        /* renamed from: a */
        public final Boolean b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != b.NULL) {
                return Boolean.valueOf(aVar.h());
            }
            aVar.j();
            return null;
        }

        public final void a(c cVar, Boolean bool) throws IOException {
            cVar.b(bool == null ? JsonReaderKt.NULL : bool.toString());
        }
    };
    public static final v<Number> t = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.3
        /* renamed from: a */
        public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Long.valueOf(aVar.l());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        public final void a(c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final v<Number> u = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.4
        /* renamed from: a */
        public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != b.NULL) {
                return Float.valueOf((float) aVar.k());
            }
            aVar.j();
            return null;
        }

        public final void a(c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final v<Number> v = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.5
        /* renamed from: a */
        public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != b.NULL) {
                return Double.valueOf(aVar.k());
            }
            aVar.j();
            return null;
        }

        public final void a(c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final v<BigDecimal> B = new v<BigDecimal>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.9
        /* renamed from: a */
        public final BigDecimal b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigDecimal(aVar.h());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        public final void a(c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.a(bigDecimal);
        }
    };
    public static final v<BigInteger> C = new v<BigInteger>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.10
        /* renamed from: a */
        public final BigInteger b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() == b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigInteger(aVar.h());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        public final void a(c cVar, BigInteger bigInteger) throws IOException {
            cVar.a(bigInteger);
        }
    };
    public static final w S = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.19
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
            if (aVar.a() != Timestamp.class) {
                return null;
            }
            final v<T> a2 = fVar.a((Class) Date.class);
            return (v<T>) new v<Timestamp>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.19.1
                /* renamed from: a */
                public Timestamp b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar2) throws IOException {
                    Date date = (Date) a2.b(aVar2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                public void a(c cVar, Timestamp timestamp) throws IOException {
                    a2.a(cVar, timestamp);
                }
            };
        }
    };
    public static final w Z = new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.24
        @Override // com.bytedance.sdk.openadsdk.preload.a.w
        public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
            Class<? super T> a2 = aVar.a();
            if (!Enum.class.isAssignableFrom(a2) || a2 == Enum.class) {
                return null;
            }
            Class<? super Object> cls = a2;
            if (!a2.isEnum()) {
                cls = a2.getSuperclass();
            }
            return new a(cls);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.n$30  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n$30.class */
    public static /* synthetic */ class AnonymousClass30 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9982a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f9982a = iArr;
            try {
                iArr[b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9982a[b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9982a[b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f9982a[b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f9982a[b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f9982a[b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f9982a[b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f9982a[b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f9982a[b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f9982a[b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n$a.class */
    static final class a<T extends Enum<T>> extends v<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, T> f9983a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<T, String> f9984b = new HashMap();

        public a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    com.bytedance.sdk.openadsdk.preload.a.a.c cVar = (com.bytedance.sdk.openadsdk.preload.a.a.c) cls.getField(name).getAnnotation(com.bytedance.sdk.openadsdk.preload.a.a.c.class);
                    if (cVar != null) {
                        name = cVar.a();
                        for (String str : cVar.b()) {
                            this.f9983a.put(str, t);
                        }
                    }
                    this.f9983a.put(name, t);
                    this.f9984b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: a */
        public final T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
            if (aVar.f() != b.NULL) {
                return this.f9983a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        public final void a(c cVar, T t) throws IOException {
            cVar.b(t == null ? null : this.f9984b.get(t));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bytedance.sdk.openadsdk.preload.a.v
        public final /* bridge */ /* synthetic */ void a(c cVar, Object obj) throws IOException {
            a(cVar, (c) ((Enum) obj));
        }
    }

    static {
        v<Class> a2 = new v<Class>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.1
            /* renamed from: a */
            public final Class b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            public final void a(c cVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.a();
        f9962a = a2;
        f9963b = a(Class.class, a2);
        v<BitSet> a3 = new v<BitSet>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.12
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
                if (java.lang.Integer.parseInt(r0) != 0) goto L_0x0086;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
                r11 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
                if (r6.m() != 0) goto L_0x0086;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.BitSet b(com.bytedance.sdk.openadsdk.preload.a.d.a r6) throws java.io.IOException {
                /*
                    r5 = this;
                    java.util.BitSet r0 = new java.util.BitSet
                    r1 = r0
                    r1.<init>()
                    r7 = r0
                    r0 = r6
                    r0.a()
                    r0 = r6
                    com.bytedance.sdk.openadsdk.preload.a.d.b r0 = r0.f()
                    r8 = r0
                    r0 = 0
                    r9 = r0
                L_0x0014:
                    r0 = r8
                    com.bytedance.sdk.openadsdk.preload.a.d.b r1 = com.bytedance.sdk.openadsdk.preload.a.d.b.END_ARRAY
                    if (r0 == r1) goto L_0x009c
                    int[] r0 = com.bytedance.sdk.openadsdk.preload.a.b.a.n.AnonymousClass30.f9982a
                    r1 = r8
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    r10 = r0
                    r0 = 1
                    r11 = r0
                    r0 = r10
                    r1 = 1
                    if (r0 == r1) goto L_0x007f
                    r0 = r10
                    r1 = 2
                    if (r0 == r1) goto L_0x0076
                    r0 = r10
                    r1 = 3
                    if (r0 != r1) goto L_0x0065
                    r0 = r6
                    java.lang.String r0 = r0.h()
                    r8 = r0
                    r0 = r8
                    int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0053
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L_0x004d
                    goto L_0x0086
                L_0x004d:
                    r0 = 0
                    r11 = r0
                    goto L_0x0086
                L_0x0053:
                    r6 = move-exception
                    com.bytedance.sdk.openadsdk.preload.a.t r0 = new com.bytedance.sdk.openadsdk.preload.a.t
                    r1 = r0
                    java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                    r3 = r8
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L_0x0065:
                    com.bytedance.sdk.openadsdk.preload.a.t r0 = new com.bytedance.sdk.openadsdk.preload.a.t
                    r1 = r0
                    java.lang.String r2 = "Invalid bitset value type: "
                    r3 = r8
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L_0x0076:
                    r0 = r6
                    boolean r0 = r0.i()
                    r11 = r0
                    goto L_0x0086
                L_0x007f:
                    r0 = r6
                    int r0 = r0.m()
                    if (r0 == 0) goto L_0x004d
                L_0x0086:
                    r0 = r11
                    if (r0 == 0) goto L_0x0091
                    r0 = r7
                    r1 = r9
                    r0.set(r1)
                L_0x0091:
                    int r9 = r9 + 1
                    r0 = r6
                    com.bytedance.sdk.openadsdk.preload.a.d.b r0 = r0.f()
                    r8 = r0
                    goto L_0x0014
                L_0x009c:
                    r0 = r6
                    r0.b()
                    r0 = r7
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.b.a.n.AnonymousClass12.b(com.bytedance.sdk.openadsdk.preload.a.d.a):java.util.BitSet");
            }

            public final void a(c cVar, BitSet bitSet) throws IOException {
                cVar.b();
                int length = bitSet.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(bitSet.get(i2) ? 1L : 0L);
                }
                cVar.c();
            }
        }.a();
        f9964c = a3;
        f9965d = a(BitSet.class, a3);
        v<Boolean> vVar = new v<Boolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.23
            /* renamed from: a */
            public final Boolean b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                b f2 = aVar.f();
                if (f2 != b.NULL) {
                    return f2 == b.STRING ? Boolean.valueOf(Boolean.parseBoolean(aVar.h())) : Boolean.valueOf(aVar.i());
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, Boolean bool) throws IOException {
                cVar.a(bool);
            }
        };
        e = vVar;
        g = a(Boolean.TYPE, Boolean.class, vVar);
        v<Number> vVar2 = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.32
            /* renamed from: a */
            public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            public final void a(c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        h = vVar2;
        i = a(Byte.TYPE, Byte.class, vVar2);
        v<Number> vVar3 = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.33
            /* renamed from: a */
            public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Short.valueOf((short) aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            public final void a(c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        j = vVar3;
        k = a(Short.TYPE, Short.class, vVar3);
        v<Number> vVar4 = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.34
            /* renamed from: a */
            public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            public final void a(c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        l = vVar4;
        m = a(Integer.TYPE, Integer.class, vVar4);
        v<AtomicInteger> a4 = new v<AtomicInteger>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.35
            /* renamed from: a */
            public final AtomicInteger b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                try {
                    return new AtomicInteger(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            public final void a(c cVar, AtomicInteger atomicInteger) throws IOException {
                cVar.a(atomicInteger.get());
            }
        }.a();
        n = a4;
        o = a(AtomicInteger.class, a4);
        v<AtomicBoolean> a5 = new v<AtomicBoolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.36
            /* renamed from: a */
            public final AtomicBoolean b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                return new AtomicBoolean(aVar.i());
            }

            public final void a(c cVar, AtomicBoolean atomicBoolean) throws IOException {
                cVar.a(atomicBoolean.get());
            }
        }.a();
        p = a5;
        q = a(AtomicBoolean.class, a5);
        v<AtomicIntegerArray> a6 = new v<AtomicIntegerArray>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.2
            /* renamed from: a */
            public final AtomicIntegerArray b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.m()));
                    } catch (NumberFormatException e2) {
                        throw new t(e2);
                    }
                }
                aVar.b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            public final void a(c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                cVar.b();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(atomicIntegerArray.get(i2));
                }
                cVar.c();
            }
        }.a();
        r = a6;
        s = a(AtomicIntegerArray.class, a6);
        v<Number> vVar5 = new v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.6
            /* renamed from: a */
            public final Number b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                b f2 = aVar.f();
                int i2 = AnonymousClass30.f9982a[f2.ordinal()];
                if (i2 == 1 || i2 == 3) {
                    return new g(aVar.h());
                }
                if (i2 == 4) {
                    aVar.j();
                    return null;
                }
                throw new t("Expecting number, got: ".concat(String.valueOf(f2)));
            }

            public final void a(c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        w = vVar5;
        x = a(Number.class, vVar5);
        v<Character> vVar6 = new v<Character>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.7
            /* renamed from: a */
            public final Character b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                String h2 = aVar.h();
                if (h2.length() == 1) {
                    return Character.valueOf(h2.charAt(0));
                }
                throw new t("Expecting character, got: ".concat(String.valueOf(h2)));
            }

            public final void a(c cVar, Character ch) throws IOException {
                cVar.b(ch == null ? null : String.valueOf(ch));
            }
        };
        y = vVar6;
        z = a(Character.TYPE, Character.class, vVar6);
        v<String> vVar7 = new v<String>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.8
            /* renamed from: a */
            public final String b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                b f2 = aVar.f();
                if (f2 != b.NULL) {
                    return f2 == b.BOOLEAN ? Boolean.toString(aVar.i()) : aVar.h();
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, String str) throws IOException {
                cVar.b(str);
            }
        };
        A = vVar7;
        D = a(String.class, vVar7);
        v<StringBuilder> vVar8 = new v<StringBuilder>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.11
            /* renamed from: a */
            public final StringBuilder b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != b.NULL) {
                    return new StringBuilder(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, StringBuilder sb) throws IOException {
                cVar.b(sb == null ? null : sb.toString());
            }
        };
        E = vVar8;
        F = a(StringBuilder.class, vVar8);
        v<StringBuffer> vVar9 = new v<StringBuffer>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.13
            /* renamed from: a */
            public final StringBuffer b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != b.NULL) {
                    return new StringBuffer(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, StringBuffer stringBuffer) throws IOException {
                cVar.b(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        G = vVar9;
        H = a(StringBuffer.class, vVar9);
        v<URL> vVar10 = new v<URL>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.14
            /* renamed from: a */
            public final URL b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                String h2 = aVar.h();
                if (JsonReaderKt.NULL.equals(h2)) {
                    return null;
                }
                return new URL(h2);
            }

            public final void a(c cVar, URL url) throws IOException {
                cVar.b(url == null ? null : url.toExternalForm());
            }
        };
        I = vVar10;
        J = a(URL.class, vVar10);
        v<URI> vVar11 = new v<URI>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.15
            /* renamed from: a */
            public final URI b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    String h2 = aVar.h();
                    if (JsonReaderKt.NULL.equals(h2)) {
                        return null;
                    }
                    return new URI(h2);
                } catch (URISyntaxException e2) {
                    throw new m(e2);
                }
            }

            public final void a(c cVar, URI uri) throws IOException {
                cVar.b(uri == null ? null : uri.toASCIIString());
            }
        };
        K = vVar11;
        L = a(URI.class, vVar11);
        v<InetAddress> vVar12 = new v<InetAddress>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.16
            /* renamed from: a */
            public final InetAddress b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != b.NULL) {
                    return InetAddress.getByName(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, InetAddress inetAddress) throws IOException {
                cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        M = vVar12;
        N = b(InetAddress.class, vVar12);
        v<UUID> vVar13 = new v<UUID>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.17
            /* renamed from: a */
            public final UUID b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() != b.NULL) {
                    return UUID.fromString(aVar.h());
                }
                aVar.j();
                return null;
            }

            public final void a(c cVar, UUID uuid) throws IOException {
                cVar.b(uuid == null ? null : uuid.toString());
            }
        };
        O = vVar13;
        P = a(UUID.class, vVar13);
        v<Currency> a7 = new v<Currency>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.18
            /* renamed from: a */
            public final Currency b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                return Currency.getInstance(aVar.h());
            }

            public final void a(c cVar, Currency currency) throws IOException {
                cVar.b(currency.getCurrencyCode());
            }
        }.a();
        Q = a7;
        R = a(Currency.class, a7);
        v<Calendar> vVar14 = new v<Calendar>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.20
            /* renamed from: a */
            public final Calendar b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                aVar.c();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (aVar.f() != b.END_OBJECT) {
                    String g2 = aVar.g();
                    int m2 = aVar.m();
                    if ("year".equals(g2)) {
                        i2 = m2;
                    } else if ("month".equals(g2)) {
                        i3 = m2;
                    } else if ("dayOfMonth".equals(g2)) {
                        i4 = m2;
                    } else if ("hourOfDay".equals(g2)) {
                        i5 = m2;
                    } else if ("minute".equals(g2)) {
                        i6 = m2;
                    } else if ("second".equals(g2)) {
                        i7 = m2;
                    }
                }
                aVar.d();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            public final void a(c cVar, Calendar calendar) throws IOException {
                if (calendar == null) {
                    cVar.f();
                    return;
                }
                cVar.d();
                cVar.a("year");
                cVar.a(calendar.get(1));
                cVar.a("month");
                cVar.a(calendar.get(2));
                cVar.a("dayOfMonth");
                cVar.a(calendar.get(5));
                cVar.a("hourOfDay");
                cVar.a(calendar.get(11));
                cVar.a("minute");
                cVar.a(calendar.get(12));
                cVar.a("second");
                cVar.a(calendar.get(13));
                cVar.e();
            }
        };
        T = vVar14;
        U = b(Calendar.class, GregorianCalendar.class, vVar14);
        v<Locale> vVar15 = new v<Locale>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.21
            /* renamed from: a */
            public final Locale b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                String str = null;
                if (aVar.f() == b.NULL) {
                    aVar.j();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                }
                return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
            }

            public final void a(c cVar, Locale locale) throws IOException {
                cVar.b(locale == null ? null : locale.toString());
            }
        };
        V = vVar15;
        W = a(Locale.class, vVar15);
        v<l> vVar16 = new v<l>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.22
            /* renamed from: a */
            public final l b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
                switch (AnonymousClass30.f9982a[aVar.f().ordinal()]) {
                    case 1:
                        return new q(new g(aVar.h()));
                    case 2:
                        return new q(Boolean.valueOf(aVar.i()));
                    case 3:
                        return new q(aVar.h());
                    case 4:
                        aVar.j();
                        return com.bytedance.sdk.openadsdk.preload.a.n.f10089a;
                    case 5:
                        i iVar = new i();
                        aVar.a();
                        while (aVar.e()) {
                            iVar.a(b(aVar));
                        }
                        aVar.b();
                        return iVar;
                    case 6:
                        o oVar = new o();
                        aVar.c();
                        while (aVar.e()) {
                            oVar.a(aVar.g(), b(aVar));
                        }
                        aVar.d();
                        return oVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            public final void a(c cVar, l lVar) throws IOException {
                if (lVar == null || lVar.j()) {
                    cVar.f();
                } else if (lVar.i()) {
                    q m2 = lVar.m();
                    if (m2.o()) {
                        cVar.a(m2.a());
                    } else if (m2.n()) {
                        cVar.a(m2.f());
                    } else {
                        cVar.b(m2.b());
                    }
                } else if (lVar.g()) {
                    cVar.b();
                    Iterator<l> it2 = lVar.l().iterator();
                    while (it2.hasNext()) {
                        a(cVar, it2.next());
                    }
                    cVar.c();
                } else if (lVar.h()) {
                    cVar.d();
                    for (Map.Entry<String, l> entry : lVar.k().n()) {
                        cVar.a(entry.getKey());
                        a(cVar, entry.getValue());
                    }
                    cVar.e();
                } else {
                    throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
                }
            }
        };
        X = vVar16;
        Y = b(l.class, vVar16);
    }

    public static <TT> w a(final com.bytedance.sdk.openadsdk.preload.a.c.a<TT> aVar, final v<TT> vVar) {
        return new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.25
            @Override // com.bytedance.sdk.openadsdk.preload.a.w
            public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar2) {
                if (aVar2.equals(com.bytedance.sdk.openadsdk.preload.a.c.a.this)) {
                    return vVar;
                }
                return null;
            }
        };
    }

    public static <TT> w a(final Class<TT> cls, final v<TT> vVar) {
        return new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.26
            @Override // com.bytedance.sdk.openadsdk.preload.a.w
            public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
                if (aVar.a() == cls) {
                    return vVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <TT> w a(final Class<TT> cls, final Class<TT> cls2, final v<? super TT> vVar) {
        return new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.27
            @Override // com.bytedance.sdk.openadsdk.preload.a.w
            public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
                Class<? super T> a2 = aVar.a();
                if (a2 == cls || a2 == cls2) {
                    return vVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <T1> w b(final Class<T1> cls, final v<T1> vVar) {
        return new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.29
            @Override // com.bytedance.sdk.openadsdk.preload.a.w
            public final <T2> v<T2> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T2> aVar) {
                final Class<? super T2> a2 = aVar.a();
                if (!cls.isAssignableFrom(a2)) {
                    return null;
                }
                return (v<T2>) new v<T1>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.29.1
                    @Override // com.bytedance.sdk.openadsdk.preload.a.v
                    public void a(c cVar, T1 t1) throws IOException {
                        vVar.a(cVar, t1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.bytedance.sdk.openadsdk.preload.a.v
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public T1 b(com.bytedance.sdk.openadsdk.preload.a.d.a r5) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = r4
                            com.bytedance.sdk.openadsdk.preload.a.b.a.n$29 r0 = com.bytedance.sdk.openadsdk.preload.a.b.a.n.AnonymousClass29.this
                            com.bytedance.sdk.openadsdk.preload.a.v r0 = r5
                            r1 = r5
                            java.lang.Object r0 = r0.b(r1)
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x0053
                            r0 = r4
                            java.lang.Class r0 = r5
                            r1 = r5
                            boolean r0 = r0.isInstance(r1)
                            if (r0 == 0) goto L_0x001e
                            goto L_0x0053
                        L_0x001e:
                            java.lang.StringBuilder r0 = new java.lang.StringBuilder
                            r1 = r0
                            java.lang.String r2 = "Expected a "
                            r1.<init>(r2)
                            r6 = r0
                            r0 = r6
                            r1 = r4
                            java.lang.Class r1 = r5
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r6
                            java.lang.String r1 = " but was "
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r6
                            r1 = r5
                            java.lang.Class r1 = r1.getClass()
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            com.bytedance.sdk.openadsdk.preload.a.t r0 = new com.bytedance.sdk.openadsdk.preload.a.t
                            r1 = r0
                            r2 = r6
                            java.lang.String r2 = r2.toString()
                            r1.<init>(r2)
                            throw r0
                        L_0x0053:
                            r0 = r5
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.b.a.n.AnonymousClass29.AnonymousClass1.b(com.bytedance.sdk.openadsdk.preload.a.d.a):java.lang.Object");
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <TT> w b(final Class<TT> cls, final Class<? extends TT> cls2, final v<? super TT> vVar) {
        return new w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.28
            @Override // com.bytedance.sdk.openadsdk.preload.a.w
            public final <T> v<T> a(f fVar, com.bytedance.sdk.openadsdk.preload.a.c.a<T> aVar) {
                Class<? super T> a2 = aVar.a();
                if (a2 == cls || a2 == cls2) {
                    return vVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + vVar + "]";
            }
        };
    }
}
