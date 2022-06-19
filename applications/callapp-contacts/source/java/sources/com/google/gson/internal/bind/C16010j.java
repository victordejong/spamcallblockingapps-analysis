package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.internal.C16068f;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
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
/* renamed from: com.google.gson.internal.bind.j */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j.class */
public final class C16010j {

    /* renamed from: A */
    public static final AbstractC16088j<String> f56703A;

    /* renamed from: D */
    public static final AbstractC16090k f56706D;

    /* renamed from: E */
    public static final AbstractC16088j<StringBuilder> f56707E;

    /* renamed from: F */
    public static final AbstractC16090k f56708F;

    /* renamed from: G */
    public static final AbstractC16088j<StringBuffer> f56709G;

    /* renamed from: H */
    public static final AbstractC16090k f56710H;

    /* renamed from: I */
    public static final AbstractC16088j<URL> f56711I;

    /* renamed from: J */
    public static final AbstractC16090k f56712J;

    /* renamed from: K */
    public static final AbstractC16088j<URI> f56713K;

    /* renamed from: L */
    public static final AbstractC16090k f56714L;

    /* renamed from: M */
    public static final AbstractC16088j<InetAddress> f56715M;

    /* renamed from: N */
    public static final AbstractC16090k f56716N;

    /* renamed from: O */
    public static final AbstractC16088j<UUID> f56717O;

    /* renamed from: P */
    public static final AbstractC16090k f56718P;

    /* renamed from: Q */
    public static final AbstractC16088j<Currency> f56719Q;

    /* renamed from: R */
    public static final AbstractC16090k f56720R;

    /* renamed from: T */
    public static final AbstractC16088j<Calendar> f56722T;

    /* renamed from: U */
    public static final AbstractC16090k f56723U;

    /* renamed from: V */
    public static final AbstractC16088j<Locale> f56724V;

    /* renamed from: W */
    public static final AbstractC16090k f56725W;

    /* renamed from: X */
    public static final AbstractC16088j<JsonElement> f56726X;

    /* renamed from: Y */
    public static final AbstractC16090k f56727Y;

    /* renamed from: a */
    public static final AbstractC16088j<Class> f56729a;

    /* renamed from: b */
    public static final AbstractC16090k f56730b;

    /* renamed from: c */
    public static final AbstractC16088j<BitSet> f56731c;

    /* renamed from: d */
    public static final AbstractC16090k f56732d;

    /* renamed from: e */
    public static final AbstractC16088j<Boolean> f56733e;

    /* renamed from: g */
    public static final AbstractC16090k f56735g;

    /* renamed from: h */
    public static final AbstractC16088j<Number> f56736h;

    /* renamed from: i */
    public static final AbstractC16090k f56737i;

    /* renamed from: j */
    public static final AbstractC16088j<Number> f56738j;

    /* renamed from: k */
    public static final AbstractC16090k f56739k;

    /* renamed from: l */
    public static final AbstractC16088j<Number> f56740l;

    /* renamed from: m */
    public static final AbstractC16090k f56741m;

    /* renamed from: n */
    public static final AbstractC16088j<AtomicInteger> f56742n;

    /* renamed from: o */
    public static final AbstractC16090k f56743o;

    /* renamed from: p */
    public static final AbstractC16088j<AtomicBoolean> f56744p;

    /* renamed from: q */
    public static final AbstractC16090k f56745q;

    /* renamed from: r */
    public static final AbstractC16088j<AtomicIntegerArray> f56746r;

    /* renamed from: s */
    public static final AbstractC16090k f56747s;

    /* renamed from: w */
    public static final AbstractC16088j<Number> f56751w;

    /* renamed from: x */
    public static final AbstractC16090k f56752x;

    /* renamed from: y */
    public static final AbstractC16088j<Character> f56753y;

    /* renamed from: z */
    public static final AbstractC16090k f56754z;

    /* renamed from: f */
    public static final AbstractC16088j<Boolean> f56734f = new AbstractC16088j<Boolean>() { // from class: com.google.gson.internal.bind.j.31
        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Boolean read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Boolean.valueOf(jsonReader.nextString());
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            jsonWriter.value(bool2 == null ? JsonReaderKt.NULL : bool2.toString());
        }
    };

    /* renamed from: t */
    public static final AbstractC16088j<Number> f56748t = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.3
        /* renamed from: a */
        private static Number m7906a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            return m7906a(jsonReader);
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };

    /* renamed from: u */
    public static final AbstractC16088j<Number> f56749u = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.4
        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Float.valueOf((float) jsonReader.nextDouble());
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };

    /* renamed from: v */
    public static final AbstractC16088j<Number> f56750v = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.5
        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return Double.valueOf(jsonReader.nextDouble());
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };

    /* renamed from: B */
    public static final AbstractC16088j<BigDecimal> f56704B = new AbstractC16088j<BigDecimal>() { // from class: com.google.gson.internal.bind.j.9
        /* renamed from: a */
        private static BigDecimal m7901a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigDecimal(jsonReader.nextString());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ BigDecimal read(JsonReader jsonReader) throws IOException {
            return m7901a(jsonReader);
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
            jsonWriter.value(bigDecimal);
        }
    };

    /* renamed from: C */
    public static final AbstractC16088j<BigInteger> f56705C = new AbstractC16088j<BigInteger>() { // from class: com.google.gson.internal.bind.j.10
        /* renamed from: a */
        private static BigInteger m7912a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigInteger(jsonReader.nextString());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ BigInteger read(JsonReader jsonReader) throws IOException {
            return m7912a(jsonReader);
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
            jsonWriter.value(bigInteger);
        }
    };

    /* renamed from: S */
    public static final AbstractC16090k f56721S = new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.19
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            if (c15950a.getRawType() != Timestamp.class) {
                return null;
            }
            final AbstractC16088j<T> m7971a = c15965f.m7971a((Class) Date.class);
            return (AbstractC16088j<T>) new AbstractC16088j<Timestamp>() { // from class: com.google.gson.internal.bind.j.19.1
                @Override // com.google.gson.AbstractC16088j
                public final /* synthetic */ Timestamp read(JsonReader jsonReader) throws IOException {
                    Date date = (Date) m7971a.read(jsonReader);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.gson.AbstractC16088j
                public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                    m7971a.write(jsonWriter, timestamp);
                }
            };
        }
    };

    /* renamed from: Z */
    public static final AbstractC16090k f56728Z = new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.24
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            Class<? super T> rawType = c15950a.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            Class<? super Object> cls = rawType;
            if (!rawType.isEnum()) {
                cls = rawType.getSuperclass();
            }
            return new C16049a(cls);
        }
    };

    /* renamed from: com.google.gson.internal.bind.j$30 */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j$30.class */
    public static final /* synthetic */ class C1603630 {

        /* renamed from: a */
        static final /* synthetic */ int[] f56771a;

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
            int[] iArr = new int[JsonToken.values().length];
            f56771a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f56771a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f56771a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f56771a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f56771a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f56771a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f56771a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f56771a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f56771a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f56771a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: com.google.gson.internal.bind.j$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j$a.class */
    static final class C16049a<T extends Enum<T>> extends AbstractC16088j<T> {

        /* renamed from: a */
        private final Map<String, T> f56772a = new HashMap();

        /* renamed from: b */
        private final Map<T, String> f56773b = new HashMap();

        public C16049a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    AbstractC15952b abstractC15952b = (AbstractC15952b) cls.getField(name).getAnnotation(AbstractC15952b.class);
                    if (abstractC15952b != null) {
                        String m7988a = abstractC15952b.m7988a();
                        String[] m7987b = abstractC15952b.m7987b();
                        int length = m7987b.length;
                        int i = 0;
                        while (true) {
                            name = m7988a;
                            if (i < length) {
                                this.f56772a.put(m7987b[i], t);
                                i++;
                            }
                        }
                    }
                    this.f56772a.put(name, t);
                    this.f56773b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            return this.f56772a.get(jsonReader.nextString());
        }

        @Override // com.google.gson.AbstractC16088j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Enum r0 = (Enum) obj;
            jsonWriter.value(r0 == null ? null : this.f56773b.get(r0));
        }
    }

    static {
        AbstractC16088j<Class> nullSafe = new AbstractC16088j<Class>() { // from class: com.google.gson.internal.bind.j.1
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Class read(JsonReader jsonReader) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.nullSafe();
        f56729a = nullSafe;
        f56730b = m7915a(Class.class, nullSafe);
        AbstractC16088j<BitSet> nullSafe2 = new AbstractC16088j<BitSet>() { // from class: com.google.gson.internal.bind.j.12
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
                if (java.lang.Integer.parseInt(r0) != 0) goto L23;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
                r10 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
                if (r5.nextInt() != 0) goto L23;
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private static java.util.BitSet m7911a(com.google.gson.stream.JsonReader r5) throws java.io.IOException {
                /*
                    java.util.BitSet r0 = new java.util.BitSet
                    r1 = r0
                    r1.<init>()
                    r6 = r0
                    r0 = r5
                    r0.beginArray()
                    r0 = r5
                    com.google.gson.stream.JsonToken r0 = r0.peek()
                    r7 = r0
                    r0 = 0
                    r8 = r0
                L13:
                    r0 = r7
                    com.google.gson.stream.JsonToken r1 = com.google.gson.stream.JsonToken.END_ARRAY
                    if (r0 == r1) goto L9a
                    int[] r0 = com.google.gson.internal.bind.C16010j.C1603630.f56771a
                    r1 = r7
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    r9 = r0
                    r0 = 1
                    r10 = r0
                    r0 = r9
                    r1 = 1
                    if (r0 == r1) goto L7e
                    r0 = r9
                    r1 = 2
                    if (r0 == r1) goto L75
                    r0 = r9
                    r1 = 3
                    if (r0 != r1) goto L64
                    r0 = r5
                    java.lang.String r0 = r0.nextString()
                    r7 = r0
                    r0 = r7
                    int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L52
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L4c
                    goto L85
                L4c:
                    r0 = 0
                    r10 = r0
                    goto L85
                L52:
                    r5 = move-exception
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                    r3 = r7
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L64:
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    java.lang.String r2 = "Invalid bitset value type: "
                    r3 = r7
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L75:
                    r0 = r5
                    boolean r0 = r0.nextBoolean()
                    r10 = r0
                    goto L85
                L7e:
                    r0 = r5
                    int r0 = r0.nextInt()
                    if (r0 == 0) goto L4c
                L85:
                    r0 = r10
                    if (r0 == 0) goto L8f
                    r0 = r6
                    r1 = r8
                    r0.set(r1)
                L8f:
                    int r8 = r8 + 1
                    r0 = r5
                    com.google.gson.stream.JsonToken r0 = r0.peek()
                    r7 = r0
                    goto L13
                L9a:
                    r0 = r5
                    r0.endArray()
                    r0 = r6
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.C16010j.C1601412.m7911a(com.google.gson.stream.JsonReader):java.util.BitSet");
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ BitSet read(JsonReader jsonReader) throws IOException {
                return m7911a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                jsonWriter.beginArray();
                int length = bitSet2.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.value(bitSet2.get(i) ? 1L : 0L);
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        f56731c = nullSafe2;
        f56732d = m7915a(BitSet.class, nullSafe2);
        AbstractC16088j<Boolean> abstractC16088j = new AbstractC16088j<Boolean>() { // from class: com.google.gson.internal.bind.j.23
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Boolean read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek != JsonToken.NULL) {
                    return peek == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool);
            }
        };
        f56733e = abstractC16088j;
        f56735g = m7914a(Boolean.TYPE, Boolean.class, abstractC16088j);
        AbstractC16088j<Number> abstractC16088j2 = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.32
            /* renamed from: a */
            private static Number m7905a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return m7905a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f56736h = abstractC16088j2;
        f56737i = m7914a(Byte.TYPE, Byte.class, abstractC16088j2);
        AbstractC16088j<Number> abstractC16088j3 = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.33
            /* renamed from: a */
            private static Number m7904a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Short.valueOf((short) jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return m7904a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f56738j = abstractC16088j3;
        f56739k = m7914a(Short.TYPE, Short.class, abstractC16088j3);
        AbstractC16088j<Number> abstractC16088j4 = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.34
            /* renamed from: a */
            private static Number m7903a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return m7903a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f56740l = abstractC16088j4;
        f56741m = m7914a(Integer.TYPE, Integer.class, abstractC16088j4);
        AbstractC16088j<AtomicInteger> nullSafe3 = new AbstractC16088j<AtomicInteger>() { // from class: com.google.gson.internal.bind.j.35
            /* renamed from: a */
            private static AtomicInteger m7902a(JsonReader jsonReader) throws IOException {
                try {
                    return new AtomicInteger(jsonReader.nextInt());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ AtomicInteger read(JsonReader jsonReader) throws IOException {
                return m7902a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
                jsonWriter.value(atomicInteger.get());
            }
        }.nullSafe();
        f56742n = nullSafe3;
        f56743o = m7915a(AtomicInteger.class, nullSafe3);
        AbstractC16088j<AtomicBoolean> nullSafe4 = new AbstractC16088j<AtomicBoolean>() { // from class: com.google.gson.internal.bind.j.36
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ AtomicBoolean read(JsonReader jsonReader) throws IOException {
                return new AtomicBoolean(jsonReader.nextBoolean());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
                jsonWriter.value(atomicBoolean.get());
            }
        }.nullSafe();
        f56744p = nullSafe4;
        f56745q = m7915a(AtomicBoolean.class, nullSafe4);
        AbstractC16088j<AtomicIntegerArray> nullSafe5 = new AbstractC16088j<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.j.2
            /* renamed from: a */
            private static AtomicIntegerArray m7909a(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i = 0; i < size; i++) {
                    atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ AtomicIntegerArray read(JsonReader jsonReader) throws IOException {
                return m7909a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
                AtomicIntegerArray atomicIntegerArray2;
                jsonWriter.beginArray();
                int length = atomicIntegerArray.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.value(atomicIntegerArray2.get(i));
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        f56746r = nullSafe5;
        f56747s = m7915a(AtomicIntegerArray.class, nullSafe5);
        AbstractC16088j<Number> abstractC16088j5 = new AbstractC16088j<Number>() { // from class: com.google.gson.internal.bind.j.6
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                int i = C1603630.f56771a[peek.ordinal()];
                if (i == 1 || i == 3) {
                    return new C16068f(jsonReader.nextString());
                }
                if (i != 4) {
                    throw new JsonSyntaxException("Expecting number, got: ".concat(String.valueOf(peek)));
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        f56751w = abstractC16088j5;
        f56752x = m7915a(Number.class, abstractC16088j5);
        AbstractC16088j<Character> abstractC16088j6 = new AbstractC16088j<Character>() { // from class: com.google.gson.internal.bind.j.7
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Character read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if (nextString.length() != 1) {
                    throw new JsonSyntaxException("Expecting character, got: ".concat(String.valueOf(nextString)));
                }
                return Character.valueOf(nextString.charAt(0));
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Character ch) throws IOException {
                Character ch2 = ch;
                jsonWriter.value(ch2 == null ? null : String.valueOf(ch2));
            }
        };
        f56753y = abstractC16088j6;
        f56754z = m7914a(Character.TYPE, Character.class, abstractC16088j6);
        AbstractC16088j<String> abstractC16088j7 = new AbstractC16088j<String>() { // from class: com.google.gson.internal.bind.j.8
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ String read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek != JsonToken.NULL) {
                    return peek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        f56703A = abstractC16088j7;
        f56706D = m7915a(String.class, abstractC16088j7);
        AbstractC16088j<StringBuilder> abstractC16088j8 = new AbstractC16088j<StringBuilder>() { // from class: com.google.gson.internal.bind.j.11
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ StringBuilder read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return new StringBuilder(jsonReader.nextString());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                StringBuilder sb2 = sb;
                jsonWriter.value(sb2 == null ? null : sb2.toString());
            }
        };
        f56707E = abstractC16088j8;
        f56708F = m7915a(StringBuilder.class, abstractC16088j8);
        AbstractC16088j<StringBuffer> abstractC16088j9 = new AbstractC16088j<StringBuffer>() { // from class: com.google.gson.internal.bind.j.13
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ StringBuffer read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return new StringBuffer(jsonReader.nextString());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                jsonWriter.value(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        };
        f56709G = abstractC16088j9;
        f56710H = m7915a(StringBuffer.class, abstractC16088j9);
        AbstractC16088j<URL> abstractC16088j10 = new AbstractC16088j<URL>() { // from class: com.google.gson.internal.bind.j.14
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ URL read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if (!JsonReaderKt.NULL.equals(nextString)) {
                    return new URL(nextString);
                }
                return null;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, URL url) throws IOException {
                URL url2 = url;
                jsonWriter.value(url2 == null ? null : url2.toExternalForm());
            }
        };
        f56711I = abstractC16088j10;
        f56712J = m7915a(URL.class, abstractC16088j10);
        AbstractC16088j<URI> abstractC16088j11 = new AbstractC16088j<URI>() { // from class: com.google.gson.internal.bind.j.15
            /* renamed from: a */
            private static URI m7910a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String nextString = jsonReader.nextString();
                    if (!JsonReaderKt.NULL.equals(nextString)) {
                        return new URI(nextString);
                    }
                    return null;
                } catch (URISyntaxException e) {
                    throw new JsonIOException(e);
                }
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ URI read(JsonReader jsonReader) throws IOException {
                return m7910a(jsonReader);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, URI uri) throws IOException {
                URI uri2 = uri;
                jsonWriter.value(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        f56713K = abstractC16088j11;
        f56714L = m7915a(URI.class, abstractC16088j11);
        AbstractC16088j<InetAddress> abstractC16088j12 = new AbstractC16088j<InetAddress>() { // from class: com.google.gson.internal.bind.j.16
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ InetAddress read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return InetAddress.getByName(jsonReader.nextString());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                jsonWriter.value(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        f56715M = abstractC16088j12;
        f56716N = m7913b(InetAddress.class, abstractC16088j12);
        AbstractC16088j<UUID> abstractC16088j13 = new AbstractC16088j<UUID>() { // from class: com.google.gson.internal.bind.j.17
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ UUID read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return UUID.fromString(jsonReader.nextString());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                jsonWriter.value(uuid2 == null ? null : uuid2.toString());
            }
        };
        f56717O = abstractC16088j13;
        f56718P = m7915a(UUID.class, abstractC16088j13);
        AbstractC16088j<Currency> nullSafe6 = new AbstractC16088j<Currency>() { // from class: com.google.gson.internal.bind.j.18
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Currency read(JsonReader jsonReader) throws IOException {
                return Currency.getInstance(jsonReader.nextString());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Currency currency) throws IOException {
                jsonWriter.value(currency.getCurrencyCode());
            }
        }.nullSafe();
        f56719Q = nullSafe6;
        f56720R = m7915a(Currency.class, nullSafe6);
        final AbstractC16088j<Calendar> abstractC16088j14 = new AbstractC16088j<Calendar>() { // from class: com.google.gson.internal.bind.j.20
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Calendar read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                jsonReader.beginObject();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String nextName = jsonReader.nextName();
                    int nextInt = jsonReader.nextInt();
                    if ("year".equals(nextName)) {
                        i = nextInt;
                    } else if ("month".equals(nextName)) {
                        i2 = nextInt;
                    } else if ("dayOfMonth".equals(nextName)) {
                        i3 = nextInt;
                    } else if ("hourOfDay".equals(nextName)) {
                        i4 = nextInt;
                    } else if ("minute".equals(nextName)) {
                        i5 = nextInt;
                    } else if ("second".equals(nextName)) {
                        i6 = nextInt;
                    }
                }
                jsonReader.endObject();
                return new GregorianCalendar(i, i2, i3, i4, i5, i6);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Calendar calendar) throws IOException {
                Calendar calendar2 = calendar;
                if (calendar2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                jsonWriter.beginObject();
                jsonWriter.name("year");
                jsonWriter.value(calendar2.get(1));
                jsonWriter.name("month");
                jsonWriter.value(calendar2.get(2));
                jsonWriter.name("dayOfMonth");
                jsonWriter.value(calendar2.get(5));
                jsonWriter.name("hourOfDay");
                jsonWriter.value(calendar2.get(11));
                jsonWriter.name("minute");
                jsonWriter.value(calendar2.get(12));
                jsonWriter.name("second");
                jsonWriter.value(calendar2.get(13));
                jsonWriter.endObject();
            }
        };
        f56722T = abstractC16088j14;
        f56723U = new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.28
            @Override // com.google.gson.AbstractC16090k
            public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
                Class<? super T> rawType = c15950a.getRawType();
                if (rawType == r4 || rawType == r5) {
                    return abstractC16088j14;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + r4.getName() + "+" + r5.getName() + ",adapter=" + abstractC16088j14 + "]";
            }
        };
        AbstractC16088j<Locale> abstractC16088j15 = new AbstractC16088j<Locale>() { // from class: com.google.gson.internal.bind.j.21
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Locale read(JsonReader jsonReader) throws IOException {
                String str = null;
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.nextString(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                }
                return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Locale locale) throws IOException {
                Locale locale2 = locale;
                jsonWriter.value(locale2 == null ? null : locale2.toString());
            }
        };
        f56724V = abstractC16088j15;
        f56725W = m7915a(Locale.class, abstractC16088j15);
        AbstractC16088j<JsonElement> abstractC16088j16 = new AbstractC16088j<JsonElement>() { // from class: com.google.gson.internal.bind.j.22
            /* renamed from: a */
            public JsonElement read(JsonReader jsonReader) throws IOException {
                switch (C1603630.f56771a[jsonReader.peek().ordinal()]) {
                    case 1:
                        return new JsonPrimitive(new C16068f(jsonReader.nextString()));
                    case 2:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.nextBoolean()));
                    case 3:
                        return new JsonPrimitive(jsonReader.nextString());
                    case 4:
                        jsonReader.nextNull();
                        return JsonNull.INSTANCE;
                    case 5:
                        JsonArray jsonArray = new JsonArray();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            jsonArray.add(read(jsonReader));
                        }
                        jsonReader.endArray();
                        return jsonArray;
                    case 6:
                        JsonObject jsonObject = new JsonObject();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            jsonObject.add(jsonReader.nextName(), read(jsonReader));
                        }
                        jsonReader.endObject();
                        return jsonObject;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            /* renamed from: a */
            public void write(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
                if (jsonElement == null || jsonElement.isJsonNull()) {
                    jsonWriter.nullValue();
                } else if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        jsonWriter.value(asJsonPrimitive.getAsNumber());
                    } else if (asJsonPrimitive.isBoolean()) {
                        jsonWriter.value(asJsonPrimitive.getAsBoolean());
                    } else {
                        jsonWriter.value(asJsonPrimitive.getAsString());
                    }
                } else if (jsonElement.isJsonArray()) {
                    jsonWriter.beginArray();
                    Iterator<JsonElement> it2 = jsonElement.getAsJsonArray().iterator();
                    while (it2.hasNext()) {
                        write(jsonWriter, it2.next());
                    }
                    jsonWriter.endArray();
                } else if (!jsonElement.isJsonObject()) {
                    throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
                } else {
                    jsonWriter.beginObject();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                        jsonWriter.name(entry.getKey());
                        write(jsonWriter, entry.getValue());
                    }
                    jsonWriter.endObject();
                }
            }
        };
        f56726X = abstractC16088j16;
        f56727Y = m7913b(JsonElement.class, abstractC16088j16);
    }

    private C16010j() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static <TT> AbstractC16090k m7916a(final C15950a<TT> c15950a, final AbstractC16088j<TT> abstractC16088j) {
        return new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.25
            @Override // com.google.gson.AbstractC16090k
            public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a2) {
                if (c15950a2.equals(c15950a)) {
                    return abstractC16088j;
                }
                return null;
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC16090k m7915a(final Class<TT> cls, final AbstractC16088j<TT> abstractC16088j) {
        return new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.26
            @Override // com.google.gson.AbstractC16090k
            public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
                if (c15950a.getRawType() == cls) {
                    return abstractC16088j;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + abstractC16088j + "]";
            }
        };
    }

    /* renamed from: a */
    public static <TT> AbstractC16090k m7914a(final Class<TT> cls, final Class<TT> cls2, final AbstractC16088j<? super TT> abstractC16088j) {
        return new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.27
            @Override // com.google.gson.AbstractC16090k
            public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
                Class<? super T> rawType = c15950a.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return abstractC16088j;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + abstractC16088j + "]";
            }
        };
    }

    /* renamed from: b */
    private static <T1> AbstractC16090k m7913b(final Class<T1> cls, final AbstractC16088j<T1> abstractC16088j) {
        return new AbstractC16090k() { // from class: com.google.gson.internal.bind.j.29
            @Override // com.google.gson.AbstractC16090k
            public final <T2> AbstractC16088j<T2> create(C15965f c15965f, C15950a<T2> c15950a) {
                final Class<? super T2> rawType = c15950a.getRawType();
                if (!cls.isAssignableFrom(rawType)) {
                    return null;
                }
                return (AbstractC16088j<T2>) new AbstractC16088j<T1>() { // from class: com.google.gson.internal.bind.j.29.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    @Override // com.google.gson.AbstractC16088j
                    public final T1 read(JsonReader jsonReader) throws IOException {
                        ?? read = abstractC16088j.read(jsonReader);
                        if (read == 0 || rawType.isInstance(read)) {
                            return read;
                        }
                        throw new JsonSyntaxException("Expected a " + rawType.getName() + " but was " + read.getClass().getName());
                    }

                    @Override // com.google.gson.AbstractC16088j
                    public final void write(JsonWriter jsonWriter, T1 t1) throws IOException {
                        abstractC16088j.write(jsonWriter, t1);
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + abstractC16088j + "]";
            }
        };
    }
}
