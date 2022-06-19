package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.C5259i;
import com.bytedance.sdk.openadsdk.preload.p193a.C5263m;
import com.bytedance.sdk.openadsdk.preload.p193a.C5264n;
import com.bytedance.sdk.openadsdk.preload.p193a.C5265o;
import com.bytedance.sdk.openadsdk.preload.p193a.C5267q;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5215g;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
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
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n.class */
public final class C5149n {

    /* renamed from: A */
    public static final AbstractC5274v<String> f18451A;

    /* renamed from: D */
    public static final AbstractC5276w f18454D;

    /* renamed from: E */
    public static final AbstractC5274v<StringBuilder> f18455E;

    /* renamed from: F */
    public static final AbstractC5276w f18456F;

    /* renamed from: G */
    public static final AbstractC5274v<StringBuffer> f18457G;

    /* renamed from: H */
    public static final AbstractC5276w f18458H;

    /* renamed from: I */
    public static final AbstractC5274v<URL> f18459I;

    /* renamed from: J */
    public static final AbstractC5276w f18460J;

    /* renamed from: K */
    public static final AbstractC5274v<URI> f18461K;

    /* renamed from: L */
    public static final AbstractC5276w f18462L;

    /* renamed from: M */
    public static final AbstractC5274v<InetAddress> f18463M;

    /* renamed from: N */
    public static final AbstractC5276w f18464N;

    /* renamed from: O */
    public static final AbstractC5274v<UUID> f18465O;

    /* renamed from: P */
    public static final AbstractC5276w f18466P;

    /* renamed from: Q */
    public static final AbstractC5274v<Currency> f18467Q;

    /* renamed from: R */
    public static final AbstractC5276w f18468R;

    /* renamed from: T */
    public static final AbstractC5274v<Calendar> f18470T;

    /* renamed from: U */
    public static final AbstractC5276w f18471U;

    /* renamed from: V */
    public static final AbstractC5274v<Locale> f18472V;

    /* renamed from: W */
    public static final AbstractC5276w f18473W;

    /* renamed from: X */
    public static final AbstractC5274v<AbstractC5262l> f18474X;

    /* renamed from: Y */
    public static final AbstractC5276w f18475Y;

    /* renamed from: a */
    public static final AbstractC5274v<Class> f18477a;

    /* renamed from: b */
    public static final AbstractC5276w f18478b;

    /* renamed from: c */
    public static final AbstractC5274v<BitSet> f18479c;

    /* renamed from: d */
    public static final AbstractC5276w f18480d;

    /* renamed from: e */
    public static final AbstractC5274v<Boolean> f18481e;

    /* renamed from: g */
    public static final AbstractC5276w f18483g;

    /* renamed from: h */
    public static final AbstractC5274v<Number> f18484h;

    /* renamed from: i */
    public static final AbstractC5276w f18485i;

    /* renamed from: j */
    public static final AbstractC5274v<Number> f18486j;

    /* renamed from: k */
    public static final AbstractC5276w f18487k;

    /* renamed from: l */
    public static final AbstractC5274v<Number> f18488l;

    /* renamed from: m */
    public static final AbstractC5276w f18489m;

    /* renamed from: n */
    public static final AbstractC5274v<AtomicInteger> f18490n;

    /* renamed from: o */
    public static final AbstractC5276w f18491o;

    /* renamed from: p */
    public static final AbstractC5274v<AtomicBoolean> f18492p;

    /* renamed from: q */
    public static final AbstractC5276w f18493q;

    /* renamed from: r */
    public static final AbstractC5274v<AtomicIntegerArray> f18494r;

    /* renamed from: s */
    public static final AbstractC5276w f18495s;

    /* renamed from: w */
    public static final AbstractC5274v<Number> f18499w;

    /* renamed from: x */
    public static final AbstractC5276w f18500x;

    /* renamed from: y */
    public static final AbstractC5274v<Character> f18501y;

    /* renamed from: z */
    public static final AbstractC5276w f18502z;

    /* renamed from: f */
    public static final AbstractC5274v<Boolean> f18482f = new AbstractC5274v<Boolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.31
        /* renamed from: a */
        public final Boolean mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            return Boolean.valueOf(c5244a.mo32785h());
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, Boolean bool) throws IOException {
            c5247c.mo32754b(bool == null ? JsonReaderKt.NULL : bool.toString());
        }
    };

    /* renamed from: t */
    public static final AbstractC5274v<Number> f18496t = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.3
        /* renamed from: a */
        public final Number mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            try {
                return Long.valueOf(c5244a.mo32781l());
            } catch (NumberFormatException e) {
                throw new C5270t(e);
            }
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, Number number) throws IOException {
            c5247c.mo32759a(number);
        }
    };

    /* renamed from: u */
    public static final AbstractC5274v<Number> f18497u = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.4
        /* renamed from: a */
        public final Number mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            return Float.valueOf((float) c5244a.mo32782k());
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, Number number) throws IOException {
            c5247c.mo32759a(number);
        }
    };

    /* renamed from: v */
    public static final AbstractC5274v<Number> f18498v = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.5
        /* renamed from: a */
        public final Number mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            return Double.valueOf(c5244a.mo32782k());
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, Number number) throws IOException {
            c5247c.mo32759a(number);
        }
    };

    /* renamed from: B */
    public static final AbstractC5274v<BigDecimal> f18452B = new AbstractC5274v<BigDecimal>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.9
        /* renamed from: a */
        public final BigDecimal mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            try {
                return new BigDecimal(c5244a.mo32785h());
            } catch (NumberFormatException e) {
                throw new C5270t(e);
            }
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, BigDecimal bigDecimal) throws IOException {
            c5247c.mo32759a(bigDecimal);
        }
    };

    /* renamed from: C */
    public static final AbstractC5274v<BigInteger> f18453C = new AbstractC5274v<BigInteger>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.10
        /* renamed from: a */
        public final BigInteger mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            try {
                return new BigInteger(c5244a.mo32785h());
            } catch (NumberFormatException e) {
                throw new C5270t(e);
            }
        }

        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, BigInteger bigInteger) throws IOException {
            c5247c.mo32759a(bigInteger);
        }
    };

    /* renamed from: S */
    public static final AbstractC5276w f18469S = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.19
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            if (c5236a.m32808a() != Timestamp.class) {
                return null;
            }
            final AbstractC5274v<T> m32724a = c5250f.m32724a((Class) Date.class);
            return (AbstractC5274v<T>) new AbstractC5274v<Timestamp>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.19.1
                /* renamed from: a */
                public Timestamp mo32517b(C5244a c5244a) throws IOException {
                    Date date = (Date) m32724a.mo32517b(c5244a);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                /* renamed from: a */
                public void mo32518a(C5247c c5247c, Timestamp timestamp) throws IOException {
                    m32724a.mo32518a(c5247c, timestamp);
                }
            };
        }
    };

    /* renamed from: Z */
    public static final AbstractC5276w f18476Z = new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.24
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
        /* renamed from: a */
        public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
            Class<? super T> m32808a = c5236a.m32808a();
            if (!Enum.class.isAssignableFrom(m32808a) || m32808a == Enum.class) {
                return null;
            }
            Class<? super Object> cls = m32808a;
            if (!m32808a.isEnum()) {
                cls = m32808a.getSuperclass();
            }
            return new C5188a(cls);
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.n$30 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n$30.class */
    public static /* synthetic */ class C517530 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18519a;

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
            int[] iArr = new int[EnumC5246b.values().length];
            f18519a = iArr;
            try {
                iArr[EnumC5246b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18519a[EnumC5246b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18519a[EnumC5246b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18519a[EnumC5246b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18519a[EnumC5246b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18519a[EnumC5246b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f18519a[EnumC5246b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f18519a[EnumC5246b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f18519a[EnumC5246b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f18519a[EnumC5246b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.n$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/n$a.class */
    static final class C5188a<T extends Enum<T>> extends AbstractC5274v<T> {

        /* renamed from: a */
        private final Map<String, T> f18520a = new HashMap();

        /* renamed from: b */
        private final Map<T, String> f18521b = new HashMap();

        public C5188a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    AbstractC5114c abstractC5114c = (AbstractC5114c) cls.getField(name).getAnnotation(AbstractC5114c.class);
                    if (abstractC5114c != null) {
                        String m32993a = abstractC5114c.m32993a();
                        String[] m32992b = abstractC5114c.m32992b();
                        int length = m32992b.length;
                        int i = 0;
                        while (true) {
                            name = m32993a;
                            if (i < length) {
                                this.f18520a.put(m32992b[i], t);
                                i++;
                            }
                        }
                    }
                    this.f18520a.put(name, t);
                    this.f18521b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: a */
        public final T mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            return this.f18520a.get(c5244a.mo32785h());
        }

        /* renamed from: a */
        public final void m32883a(C5247c c5247c, T t) throws IOException {
            c5247c.mo32754b(t == null ? null : this.f18521b.get(t));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32518a(C5247c c5247c, Object obj) throws IOException {
            m32883a(c5247c, (C5247c) ((Enum) obj));
        }
    }

    static {
        AbstractC5274v<Class> a = new AbstractC5274v<Class>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.1
            /* renamed from: a */
            public final Class mo32517b(C5244a c5244a) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.m32677a();
        f18477a = a;
        f18478b = m32946a(Class.class, a);
        AbstractC5274v<BitSet> a2 = new AbstractC5274v<BitSet>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.12
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
                if (java.lang.Integer.parseInt(r0) != 0) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
                r11 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
                if (r6.mo32780m() != 0) goto L23;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.BitSet mo32517b(com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a r6) throws java.io.IOException {
                /*
                    r5 = this;
                    java.util.BitSet r0 = new java.util.BitSet
                    r1 = r0
                    r1.<init>()
                    r7 = r0
                    r0 = r6
                    r0.mo32801a()
                    r0 = r6
                    com.bytedance.sdk.openadsdk.preload.a.d.b r0 = r0.mo32787f()
                    r8 = r0
                    r0 = 0
                    r9 = r0
                L14:
                    r0 = r8
                    com.bytedance.sdk.openadsdk.preload.a.d.b r1 = com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b.END_ARRAY
                    if (r0 == r1) goto L9c
                    int[] r0 = com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5149n.C517530.f18519a
                    r1 = r8
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    r10 = r0
                    r0 = 1
                    r11 = r0
                    r0 = r10
                    r1 = 1
                    if (r0 == r1) goto L7f
                    r0 = r10
                    r1 = 2
                    if (r0 == r1) goto L76
                    r0 = r10
                    r1 = 3
                    if (r0 != r1) goto L65
                    r0 = r6
                    java.lang.String r0 = r0.mo32785h()
                    r8 = r0
                    r0 = r8
                    int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L53
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L4d
                    goto L86
                L4d:
                    r0 = 0
                    r11 = r0
                    goto L86
                L53:
                    r6 = move-exception
                    com.bytedance.sdk.openadsdk.preload.a.t r0 = new com.bytedance.sdk.openadsdk.preload.a.t
                    r1 = r0
                    java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                    r3 = r8
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L65:
                    com.bytedance.sdk.openadsdk.preload.a.t r0 = new com.bytedance.sdk.openadsdk.preload.a.t
                    r1 = r0
                    java.lang.String r2 = "Invalid bitset value type: "
                    r3 = r8
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L76:
                    r0 = r6
                    boolean r0 = r0.mo32784i()
                    r11 = r0
                    goto L86
                L7f:
                    r0 = r6
                    int r0 = r0.mo32780m()
                    if (r0 == 0) goto L4d
                L86:
                    r0 = r11
                    if (r0 == 0) goto L91
                    r0 = r7
                    r1 = r9
                    r0.set(r1)
                L91:
                    int r9 = r9 + 1
                    r0 = r6
                    com.bytedance.sdk.openadsdk.preload.a.d.b r0 = r0.mo32787f()
                    r8 = r0
                    goto L14
                L9c:
                    r0 = r6
                    r0.mo32796b()
                    r0 = r7
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5149n.C515312.mo32517b(com.bytedance.sdk.openadsdk.preload.a.d.a):java.util.BitSet");
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, BitSet bitSet) throws IOException {
                c5247c.mo32756b();
                int length = bitSet.length();
                for (int i = 0; i < length; i++) {
                    c5247c.mo32761a(bitSet.get(i) ? 1L : 0L);
                }
                c5247c.mo32752c();
            }
        }.m32677a();
        f18479c = a2;
        f18480d = m32946a(BitSet.class, a2);
        AbstractC5274v<Boolean> abstractC5274v = new AbstractC5274v<Boolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.23
            /* renamed from: a */
            public final Boolean mo32517b(C5244a c5244a) throws IOException {
                EnumC5246b mo32787f = c5244a.mo32787f();
                if (mo32787f != EnumC5246b.NULL) {
                    return mo32787f == EnumC5246b.STRING ? Boolean.valueOf(Boolean.parseBoolean(c5244a.mo32785h())) : Boolean.valueOf(c5244a.mo32784i());
                }
                c5244a.mo32783j();
                return null;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Boolean bool) throws IOException {
                c5247c.mo32760a(bool);
            }
        };
        f18481e = abstractC5274v;
        f18483g = m32945a(Boolean.TYPE, Boolean.class, abstractC5274v);
        AbstractC5274v<Number> abstractC5274v2 = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.32
            /* renamed from: a */
            public final Number mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) c5244a.mo32780m());
                } catch (NumberFormatException e) {
                    throw new C5270t(e);
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Number number) throws IOException {
                c5247c.mo32759a(number);
            }
        };
        f18484h = abstractC5274v2;
        f18485i = m32945a(Byte.TYPE, Byte.class, abstractC5274v2);
        AbstractC5274v<Number> abstractC5274v3 = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.33
            /* renamed from: a */
            public final Number mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                try {
                    return Short.valueOf((short) c5244a.mo32780m());
                } catch (NumberFormatException e) {
                    throw new C5270t(e);
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Number number) throws IOException {
                c5247c.mo32759a(number);
            }
        };
        f18486j = abstractC5274v3;
        f18487k = m32945a(Short.TYPE, Short.class, abstractC5274v3);
        AbstractC5274v<Number> abstractC5274v4 = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.34
            /* renamed from: a */
            public final Number mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                try {
                    return Integer.valueOf(c5244a.mo32780m());
                } catch (NumberFormatException e) {
                    throw new C5270t(e);
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Number number) throws IOException {
                c5247c.mo32759a(number);
            }
        };
        f18488l = abstractC5274v4;
        f18489m = m32945a(Integer.TYPE, Integer.class, abstractC5274v4);
        AbstractC5274v<AtomicInteger> a3 = new AbstractC5274v<AtomicInteger>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.35
            /* renamed from: a */
            public final AtomicInteger mo32517b(C5244a c5244a) throws IOException {
                try {
                    return new AtomicInteger(c5244a.mo32780m());
                } catch (NumberFormatException e) {
                    throw new C5270t(e);
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AtomicInteger atomicInteger) throws IOException {
                c5247c.mo32761a(atomicInteger.get());
            }
        }.m32677a();
        f18490n = a3;
        f18491o = m32946a(AtomicInteger.class, a3);
        AbstractC5274v<AtomicBoolean> a4 = new AbstractC5274v<AtomicBoolean>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.36
            /* renamed from: a */
            public final AtomicBoolean mo32517b(C5244a c5244a) throws IOException {
                return new AtomicBoolean(c5244a.mo32784i());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AtomicBoolean atomicBoolean) throws IOException {
                c5247c.mo32757a(atomicBoolean.get());
            }
        }.m32677a();
        f18492p = a4;
        f18493q = m32946a(AtomicBoolean.class, a4);
        AbstractC5274v<AtomicIntegerArray> a5 = new AbstractC5274v<AtomicIntegerArray>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.2
            /* renamed from: a */
            public final AtomicIntegerArray mo32517b(C5244a c5244a) throws IOException {
                ArrayList arrayList = new ArrayList();
                c5244a.mo32801a();
                while (c5244a.mo32788e()) {
                    try {
                        arrayList.add(Integer.valueOf(c5244a.mo32780m()));
                    } catch (NumberFormatException e) {
                        throw new C5270t(e);
                    }
                }
                c5244a.mo32796b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i = 0; i < size; i++) {
                    atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
                }
                return atomicIntegerArray;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AtomicIntegerArray atomicIntegerArray) throws IOException {
                c5247c.mo32756b();
                int length = atomicIntegerArray.length();
                for (int i = 0; i < length; i++) {
                    c5247c.mo32761a(atomicIntegerArray.get(i));
                }
                c5247c.mo32752c();
            }
        }.m32677a();
        f18494r = a5;
        f18495s = m32946a(AtomicIntegerArray.class, a5);
        AbstractC5274v<Number> abstractC5274v5 = new AbstractC5274v<Number>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.6
            /* renamed from: a */
            public final Number mo32517b(C5244a c5244a) throws IOException {
                EnumC5246b mo32787f = c5244a.mo32787f();
                int i = C517530.f18519a[mo32787f.ordinal()];
                if (i == 1 || i == 3) {
                    return new C5215g(c5244a.mo32785h());
                }
                if (i != 4) {
                    throw new C5270t("Expecting number, got: ".concat(String.valueOf(mo32787f)));
                }
                c5244a.mo32783j();
                return null;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Number number) throws IOException {
                c5247c.mo32759a(number);
            }
        };
        f18499w = abstractC5274v5;
        f18500x = m32946a(Number.class, abstractC5274v5);
        AbstractC5274v<Character> abstractC5274v6 = new AbstractC5274v<Character>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.7
            /* renamed from: a */
            public final Character mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                String mo32785h = c5244a.mo32785h();
                if (mo32785h.length() != 1) {
                    throw new C5270t("Expecting character, got: ".concat(String.valueOf(mo32785h)));
                }
                return Character.valueOf(mo32785h.charAt(0));
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Character ch) throws IOException {
                c5247c.mo32754b(ch == null ? null : String.valueOf(ch));
            }
        };
        f18501y = abstractC5274v6;
        f18502z = m32945a(Character.TYPE, Character.class, abstractC5274v6);
        AbstractC5274v<String> abstractC5274v7 = new AbstractC5274v<String>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.8
            /* renamed from: a */
            public final String mo32517b(C5244a c5244a) throws IOException {
                EnumC5246b mo32787f = c5244a.mo32787f();
                if (mo32787f != EnumC5246b.NULL) {
                    return mo32787f == EnumC5246b.BOOLEAN ? Boolean.toString(c5244a.mo32784i()) : c5244a.mo32785h();
                }
                c5244a.mo32783j();
                return null;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, String str) throws IOException {
                c5247c.mo32754b(str);
            }
        };
        f18451A = abstractC5274v7;
        f18454D = m32946a(String.class, abstractC5274v7);
        AbstractC5274v<StringBuilder> abstractC5274v8 = new AbstractC5274v<StringBuilder>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.11
            /* renamed from: a */
            public final StringBuilder mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return new StringBuilder(c5244a.mo32785h());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, StringBuilder sb) throws IOException {
                c5247c.mo32754b(sb == null ? null : sb.toString());
            }
        };
        f18455E = abstractC5274v8;
        f18456F = m32946a(StringBuilder.class, abstractC5274v8);
        AbstractC5274v<StringBuffer> abstractC5274v9 = new AbstractC5274v<StringBuffer>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.13
            /* renamed from: a */
            public final StringBuffer mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return new StringBuffer(c5244a.mo32785h());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, StringBuffer stringBuffer) throws IOException {
                c5247c.mo32754b(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        f18457G = abstractC5274v9;
        f18458H = m32946a(StringBuffer.class, abstractC5274v9);
        AbstractC5274v<URL> abstractC5274v10 = new AbstractC5274v<URL>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.14
            /* renamed from: a */
            public final URL mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                String mo32785h = c5244a.mo32785h();
                if (!JsonReaderKt.NULL.equals(mo32785h)) {
                    return new URL(mo32785h);
                }
                return null;
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, URL url) throws IOException {
                c5247c.mo32754b(url == null ? null : url.toExternalForm());
            }
        };
        f18459I = abstractC5274v10;
        f18460J = m32946a(URL.class, abstractC5274v10);
        AbstractC5274v<URI> abstractC5274v11 = new AbstractC5274v<URI>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.15
            /* renamed from: a */
            public final URI mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                try {
                    String mo32785h = c5244a.mo32785h();
                    if (!JsonReaderKt.NULL.equals(mo32785h)) {
                        return new URI(mo32785h);
                    }
                    return null;
                } catch (URISyntaxException e) {
                    throw new C5263m(e);
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, URI uri) throws IOException {
                c5247c.mo32754b(uri == null ? null : uri.toASCIIString());
            }
        };
        f18461K = abstractC5274v11;
        f18462L = m32946a(URI.class, abstractC5274v11);
        AbstractC5274v<InetAddress> abstractC5274v12 = new AbstractC5274v<InetAddress>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.16
            /* renamed from: a */
            public final InetAddress mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return InetAddress.getByName(c5244a.mo32785h());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, InetAddress inetAddress) throws IOException {
                c5247c.mo32754b(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        f18463M = abstractC5274v12;
        f18464N = m32944b(InetAddress.class, abstractC5274v12);
        AbstractC5274v<UUID> abstractC5274v13 = new AbstractC5274v<UUID>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.17
            /* renamed from: a */
            public final UUID mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                return UUID.fromString(c5244a.mo32785h());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, UUID uuid) throws IOException {
                c5247c.mo32754b(uuid == null ? null : uuid.toString());
            }
        };
        f18465O = abstractC5274v13;
        f18466P = m32946a(UUID.class, abstractC5274v13);
        AbstractC5274v<Currency> a6 = new AbstractC5274v<Currency>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.18
            /* renamed from: a */
            public final Currency mo32517b(C5244a c5244a) throws IOException {
                return Currency.getInstance(c5244a.mo32785h());
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Currency currency) throws IOException {
                c5247c.mo32754b(currency.getCurrencyCode());
            }
        }.m32677a();
        f18467Q = a6;
        f18468R = m32946a(Currency.class, a6);
        AbstractC5274v<Calendar> abstractC5274v14 = new AbstractC5274v<Calendar>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.20
            /* renamed from: a */
            public final Calendar mo32517b(C5244a c5244a) throws IOException {
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                c5244a.mo32791c();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (c5244a.mo32787f() != EnumC5246b.END_OBJECT) {
                    String mo32786g = c5244a.mo32786g();
                    int mo32780m = c5244a.mo32780m();
                    if ("year".equals(mo32786g)) {
                        i = mo32780m;
                    } else if ("month".equals(mo32786g)) {
                        i2 = mo32780m;
                    } else if ("dayOfMonth".equals(mo32786g)) {
                        i3 = mo32780m;
                    } else if ("hourOfDay".equals(mo32786g)) {
                        i4 = mo32780m;
                    } else if ("minute".equals(mo32786g)) {
                        i5 = mo32780m;
                    } else if ("second".equals(mo32786g)) {
                        i6 = mo32780m;
                    }
                }
                c5244a.mo32789d();
                return new GregorianCalendar(i, i2, i3, i4, i5, i6);
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Calendar calendar) throws IOException {
                if (calendar == null) {
                    c5247c.mo32745f();
                    return;
                }
                c5247c.mo32749d();
                c5247c.mo32758a("year");
                c5247c.mo32761a(calendar.get(1));
                c5247c.mo32758a("month");
                c5247c.mo32761a(calendar.get(2));
                c5247c.mo32758a("dayOfMonth");
                c5247c.mo32761a(calendar.get(5));
                c5247c.mo32758a("hourOfDay");
                c5247c.mo32761a(calendar.get(11));
                c5247c.mo32758a("minute");
                c5247c.mo32761a(calendar.get(12));
                c5247c.mo32758a("second");
                c5247c.mo32761a(calendar.get(13));
                c5247c.mo32746e();
            }
        };
        f18470T = abstractC5274v14;
        f18471U = m32943b(Calendar.class, GregorianCalendar.class, abstractC5274v14);
        AbstractC5274v<Locale> abstractC5274v15 = new AbstractC5274v<Locale>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.21
            /* renamed from: a */
            public final Locale mo32517b(C5244a c5244a) throws IOException {
                String str = null;
                if (c5244a.mo32787f() == EnumC5246b.NULL) {
                    c5244a.mo32783j();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(c5244a.mo32785h(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                }
                return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, Locale locale) throws IOException {
                c5247c.mo32754b(locale == null ? null : locale.toString());
            }
        };
        f18472V = abstractC5274v15;
        f18473W = m32946a(Locale.class, abstractC5274v15);
        AbstractC5274v<AbstractC5262l> abstractC5274v16 = new AbstractC5274v<AbstractC5262l>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.22
            /* renamed from: a */
            public final AbstractC5262l mo32517b(C5244a c5244a) throws IOException {
                switch (C517530.f18519a[c5244a.mo32787f().ordinal()]) {
                    case 1:
                        return new C5267q(new C5215g(c5244a.mo32785h()));
                    case 2:
                        return new C5267q(Boolean.valueOf(c5244a.mo32784i()));
                    case 3:
                        return new C5267q(c5244a.mo32785h());
                    case 4:
                        c5244a.mo32783j();
                        return C5264n.f18699a;
                    case 5:
                        C5259i c5259i = new C5259i();
                        c5244a.mo32801a();
                        while (c5244a.mo32788e()) {
                            c5259i.m32699a(mo32517b(c5244a));
                        }
                        c5244a.mo32796b();
                        return c5259i;
                    case 6:
                        C5265o c5265o = new C5265o();
                        c5244a.mo32791c();
                        while (c5244a.mo32788e()) {
                            c5265o.m32690a(c5244a.mo32786g(), mo32517b(c5244a));
                        }
                        c5244a.mo32789d();
                        return c5265o;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            /* renamed from: a */
            public final void mo32518a(C5247c c5247c, AbstractC5262l abstractC5262l) throws IOException {
                if (abstractC5262l == null || abstractC5262l.m32694j()) {
                    c5247c.mo32745f();
                } else if (abstractC5262l.m32695i()) {
                    C5267q m32691m = abstractC5262l.m32691m();
                    if (m32691m.m32680o()) {
                        c5247c.mo32759a(m32691m.mo32688a());
                    } else if (m32691m.m32681n()) {
                        c5247c.mo32757a(m32691m.mo32682f());
                    } else {
                        c5247c.mo32754b(m32691m.mo32686b());
                    }
                } else if (abstractC5262l.m32697g()) {
                    c5247c.mo32756b();
                    Iterator<AbstractC5262l> it2 = abstractC5262l.m32692l().iterator();
                    while (it2.hasNext()) {
                        mo32518a(c5247c, it2.next());
                    }
                    c5247c.mo32752c();
                } else if (!abstractC5262l.m32696h()) {
                    throw new IllegalArgumentException("Couldn't write " + abstractC5262l.getClass());
                } else {
                    c5247c.mo32749d();
                    for (Map.Entry<String, AbstractC5262l> entry : abstractC5262l.m32693k().m32689n()) {
                        c5247c.mo32758a(entry.getKey());
                        mo32518a(c5247c, entry.getValue());
                    }
                    c5247c.mo32746e();
                }
            }
        };
        f18474X = abstractC5274v16;
        f18475Y = m32944b(AbstractC5262l.class, abstractC5274v16);
    }

    /* renamed from: a */
    public static <TT> AbstractC5276w m32947a(final C5236a<TT> c5236a, final AbstractC5274v<TT> abstractC5274v) {
        return new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.25
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
            /* renamed from: a */
            public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a2) {
                if (c5236a2.equals(c5236a)) {
                    return abstractC5274v;
                }
                return null;
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC5276w m32946a(final Class<TT> cls, final AbstractC5274v<TT> abstractC5274v) {
        return new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.26
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
            /* renamed from: a */
            public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
                if (c5236a.m32808a() == cls) {
                    return abstractC5274v;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + abstractC5274v + "]";
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC5276w m32945a(final Class<TT> cls, final Class<TT> cls2, final AbstractC5274v<? super TT> abstractC5274v) {
        return new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.27
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
            /* renamed from: a */
            public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
                Class<? super T> m32808a = c5236a.m32808a();
                if (m32808a == cls || m32808a == cls2) {
                    return abstractC5274v;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + abstractC5274v + "]";
            }
        };
    }

    /* renamed from: b */
    public static <T1> AbstractC5276w m32944b(final Class<T1> cls, final AbstractC5274v<T1> abstractC5274v) {
        return new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.29
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
            /* renamed from: a */
            public final <T2> AbstractC5274v<T2> mo32675a(C5250f c5250f, C5236a<T2> c5236a) {
                final Class<? super T2> m32808a = c5236a.m32808a();
                if (!cls.isAssignableFrom(m32808a)) {
                    return null;
                }
                return (AbstractC5274v<T2>) new AbstractC5274v<T1>() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.29.1
                    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
                    /* renamed from: a */
                    public void mo32518a(C5247c c5247c, T1 t1) throws IOException {
                        abstractC5274v.mo32518a(c5247c, t1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
                    /* renamed from: b */
                    public T1 mo32517b(C5244a c5244a) throws IOException {
                        ?? mo32517b = abstractC5274v.mo32517b(c5244a);
                        if (mo32517b == 0 || m32808a.isInstance(mo32517b)) {
                            return mo32517b;
                        }
                        throw new C5270t("Expected a " + m32808a.getName() + " but was " + mo32517b.getClass().getName());
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + abstractC5274v + "]";
            }
        };
    }

    /* renamed from: b */
    public static <TT> AbstractC5276w m32943b(final Class<TT> cls, final Class<? extends TT> cls2, final AbstractC5274v<? super TT> abstractC5274v) {
        return new AbstractC5276w() { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.n.28
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
            /* renamed from: a */
            public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
                Class<? super T> m32808a = c5236a.m32808a();
                if (m32808a == cls || m32808a == cls2) {
                    return abstractC5274v;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + abstractC5274v + "]";
            }
        };
    }
}
