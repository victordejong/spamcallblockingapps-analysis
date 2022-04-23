package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.k;
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
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j.class */
public final class j {
    public static final com.google.gson.j<String> A;
    public static final k D;
    public static final com.google.gson.j<StringBuilder> E;
    public static final k F;
    public static final com.google.gson.j<StringBuffer> G;
    public static final k H;
    public static final com.google.gson.j<URL> I;
    public static final k J;
    public static final com.google.gson.j<URI> K;
    public static final k L;
    public static final com.google.gson.j<InetAddress> M;
    public static final k N;
    public static final com.google.gson.j<UUID> O;
    public static final k P;
    public static final com.google.gson.j<Currency> Q;
    public static final k R;
    public static final com.google.gson.j<Calendar> T;
    public static final k U;
    public static final com.google.gson.j<Locale> V;
    public static final k W;
    public static final com.google.gson.j<JsonElement> X;
    public static final k Y;

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.gson.j<Class> f32736a;

    /* renamed from: b  reason: collision with root package name */
    public static final k f32737b;

    /* renamed from: c  reason: collision with root package name */
    public static final com.google.gson.j<BitSet> f32738c;

    /* renamed from: d  reason: collision with root package name */
    public static final k f32739d;
    public static final com.google.gson.j<Boolean> e;
    public static final k g;
    public static final com.google.gson.j<Number> h;
    public static final k i;
    public static final com.google.gson.j<Number> j;
    public static final k k;
    public static final com.google.gson.j<Number> l;
    public static final k m;
    public static final com.google.gson.j<AtomicInteger> n;
    public static final k o;
    public static final com.google.gson.j<AtomicBoolean> p;
    public static final k q;
    public static final com.google.gson.j<AtomicIntegerArray> r;
    public static final k s;
    public static final com.google.gson.j<Number> w;
    public static final k x;
    public static final com.google.gson.j<Character> y;
    public static final k z;
    public static final com.google.gson.j<Boolean> f = new com.google.gson.j<Boolean>() { // from class: com.google.gson.internal.bind.j.31
        @Override // com.google.gson.j
        public final /* synthetic */ Boolean read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Boolean.valueOf(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
            Boolean bool2 = bool;
            jsonWriter.value(bool2 == null ? JsonReaderKt.NULL : bool2.toString());
        }
    };
    public static final com.google.gson.j<Number> t = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.3
        private static Number a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.nextLong());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            return a(jsonReader);
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };
    public static final com.google.gson.j<Number> u = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.4
        @Override // com.google.gson.j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };
    public static final com.google.gson.j<Number> v = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.5
        @Override // com.google.gson.j
        public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.value(number);
        }
    };
    public static final com.google.gson.j<BigDecimal> B = new com.google.gson.j<BigDecimal>() { // from class: com.google.gson.internal.bind.j.9
        private static BigDecimal a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigDecimal(jsonReader.nextString());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.j
        public final /* synthetic */ BigDecimal read(JsonReader jsonReader) throws IOException {
            return a(jsonReader);
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
            jsonWriter.value(bigDecimal);
        }
    };
    public static final com.google.gson.j<BigInteger> C = new com.google.gson.j<BigInteger>() { // from class: com.google.gson.internal.bind.j.10
        private static BigInteger a(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                return new BigInteger(jsonReader.nextString());
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.j
        public final /* synthetic */ BigInteger read(JsonReader jsonReader) throws IOException {
            return a(jsonReader);
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
            jsonWriter.value(bigInteger);
        }
    };
    public static final k S = new k() { // from class: com.google.gson.internal.bind.j.19
        @Override // com.google.gson.k
        public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
            if (aVar.getRawType() != Timestamp.class) {
                return null;
            }
            final com.google.gson.j<T> a2 = fVar.a((Class) Date.class);
            return (com.google.gson.j<T>) new com.google.gson.j<Timestamp>() { // from class: com.google.gson.internal.bind.j.19.1
                @Override // com.google.gson.j
                public final /* synthetic */ Timestamp read(JsonReader jsonReader) throws IOException {
                    Date date = (Date) a2.read(jsonReader);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.gson.j
                public final /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                    a2.write(jsonWriter, timestamp);
                }
            };
        }
    };
    public static final k Z = new k() { // from class: com.google.gson.internal.bind.j.24
        @Override // com.google.gson.k
        public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            Class<? super Object> cls = rawType;
            if (!rawType.isEnum()) {
                cls = rawType.getSuperclass();
            }
            return new a(cls);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.bind.j$30  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j$30.class */
    public static final /* synthetic */ class AnonymousClass30 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f32756a;

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
            f32756a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f32756a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f32756a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f32756a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f32756a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f32756a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f32756a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f32756a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f32756a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f32756a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/j$a.class */
    static final class a<T extends Enum<T>> extends com.google.gson.j<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, T> f32757a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map<T, String> f32758b = new HashMap();

        public a(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    b bVar = (b) cls.getField(name).getAnnotation(b.class);
                    if (bVar != null) {
                        name = bVar.a();
                        for (String str : bVar.b()) {
                            this.f32757a.put(str, t);
                        }
                    }
                    this.f32757a.put(name, t);
                    this.f32758b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() != JsonToken.NULL) {
                return this.f32757a.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Enum r0 = (Enum) obj;
            jsonWriter.value(r0 == null ? null : this.f32758b.get(r0));
        }
    }

    static {
        com.google.gson.j<Class> nullSafe = new com.google.gson.j<Class>() { // from class: com.google.gson.internal.bind.j.1
            @Override // com.google.gson.j
            public final /* synthetic */ Class read(JsonReader jsonReader) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.nullSafe();
        f32736a = nullSafe;
        f32737b = a(Class.class, nullSafe);
        com.google.gson.j<BitSet> nullSafe2 = new com.google.gson.j<BitSet>() { // from class: com.google.gson.internal.bind.j.12
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
                if (java.lang.Integer.parseInt(r0) != 0) goto L_0x0085;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
                r10 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x0082, code lost:
                if (r5.nextInt() != 0) goto L_0x0085;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private static java.util.BitSet a(com.google.gson.stream.JsonReader r5) throws java.io.IOException {
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
                L_0x0013:
                    r0 = r7
                    com.google.gson.stream.JsonToken r1 = com.google.gson.stream.JsonToken.END_ARRAY
                    if (r0 == r1) goto L_0x009a
                    int[] r0 = com.google.gson.internal.bind.j.AnonymousClass30.f32756a
                    r1 = r7
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    r9 = r0
                    r0 = 1
                    r10 = r0
                    r0 = r9
                    r1 = 1
                    if (r0 == r1) goto L_0x007e
                    r0 = r9
                    r1 = 2
                    if (r0 == r1) goto L_0x0075
                    r0 = r9
                    r1 = 3
                    if (r0 != r1) goto L_0x0064
                    r0 = r5
                    java.lang.String r0 = r0.nextString()
                    r7 = r0
                    r0 = r7
                    int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0052
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x004c
                    goto L_0x0085
                L_0x004c:
                    r0 = 0
                    r10 = r0
                    goto L_0x0085
                L_0x0052:
                    r5 = move-exception
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                    r3 = r7
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L_0x0064:
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    java.lang.String r2 = "Invalid bitset value type: "
                    r3 = r7
                    java.lang.String r3 = java.lang.String.valueOf(r3)
                    java.lang.String r2 = r2.concat(r3)
                    r1.<init>(r2)
                    throw r0
                L_0x0075:
                    r0 = r5
                    boolean r0 = r0.nextBoolean()
                    r10 = r0
                    goto L_0x0085
                L_0x007e:
                    r0 = r5
                    int r0 = r0.nextInt()
                    if (r0 == 0) goto L_0x004c
                L_0x0085:
                    r0 = r10
                    if (r0 == 0) goto L_0x008f
                    r0 = r6
                    r1 = r8
                    r0.set(r1)
                L_0x008f:
                    int r8 = r8 + 1
                    r0 = r5
                    com.google.gson.stream.JsonToken r0 = r0.peek()
                    r7 = r0
                    goto L_0x0013
                L_0x009a:
                    r0 = r5
                    r0.endArray()
                    r0 = r6
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.j.AnonymousClass12.a(com.google.gson.stream.JsonReader):java.util.BitSet");
            }

            @Override // com.google.gson.j
            public final /* synthetic */ BitSet read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                BitSet bitSet2 = bitSet;
                jsonWriter.beginArray();
                int length = bitSet2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    jsonWriter.value(bitSet2.get(i2) ? 1L : 0L);
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        f32738c = nullSafe2;
        f32739d = a(BitSet.class, nullSafe2);
        com.google.gson.j<Boolean> jVar = new com.google.gson.j<Boolean>() { // from class: com.google.gson.internal.bind.j.23
            @Override // com.google.gson.j
            public final /* synthetic */ Boolean read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek != JsonToken.NULL) {
                    return peek == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Boolean bool) throws IOException {
                jsonWriter.value(bool);
            }
        };
        e = jVar;
        g = a(Boolean.TYPE, Boolean.class, jVar);
        com.google.gson.j<Number> jVar2 = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.32
            private static Number a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        h = jVar2;
        i = a(Byte.TYPE, Byte.class, jVar2);
        com.google.gson.j<Number> jVar3 = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.33
            private static Number a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Short.valueOf((short) jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        j = jVar3;
        k = a(Short.TYPE, Short.class, jVar3);
        com.google.gson.j<Number> jVar4 = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.34
            private static Number a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    return Integer.valueOf(jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        l = jVar4;
        m = a(Integer.TYPE, Integer.class, jVar4);
        com.google.gson.j<AtomicInteger> nullSafe3 = new com.google.gson.j<AtomicInteger>() { // from class: com.google.gson.internal.bind.j.35
            private static AtomicInteger a(JsonReader jsonReader) throws IOException {
                try {
                    return new AtomicInteger(jsonReader.nextInt());
                } catch (NumberFormatException e2) {
                    throw new JsonSyntaxException(e2);
                }
            }

            @Override // com.google.gson.j
            public final /* synthetic */ AtomicInteger read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
                jsonWriter.value(atomicInteger.get());
            }
        }.nullSafe();
        n = nullSafe3;
        o = a(AtomicInteger.class, nullSafe3);
        com.google.gson.j<AtomicBoolean> nullSafe4 = new com.google.gson.j<AtomicBoolean>() { // from class: com.google.gson.internal.bind.j.36
            @Override // com.google.gson.j
            public final /* synthetic */ AtomicBoolean read(JsonReader jsonReader) throws IOException {
                return new AtomicBoolean(jsonReader.nextBoolean());
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
                jsonWriter.value(atomicBoolean.get());
            }
        }.nullSafe();
        p = nullSafe4;
        q = a(AtomicBoolean.class, nullSafe4);
        com.google.gson.j<AtomicIntegerArray> nullSafe5 = new com.google.gson.j<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.j.2
            private static AtomicIntegerArray a(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.nextInt()));
                    } catch (NumberFormatException e2) {
                        throw new JsonSyntaxException(e2);
                    }
                }
                jsonReader.endArray();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ AtomicIntegerArray read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
                AtomicIntegerArray atomicIntegerArray2 = atomicIntegerArray;
                jsonWriter.beginArray();
                int length = atomicIntegerArray2.length();
                for (int i2 = 0; i2 < length; i2++) {
                    jsonWriter.value(atomicIntegerArray2.get(i2));
                }
                jsonWriter.endArray();
            }
        }.nullSafe();
        r = nullSafe5;
        s = a(AtomicIntegerArray.class, nullSafe5);
        com.google.gson.j<Number> jVar5 = new com.google.gson.j<Number>() { // from class: com.google.gson.internal.bind.j.6
            @Override // com.google.gson.j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                int i2 = AnonymousClass30.f32756a[peek.ordinal()];
                if (i2 == 1 || i2 == 3) {
                    return new com.google.gson.internal.f(jsonReader.nextString());
                }
                if (i2 == 4) {
                    jsonReader.nextNull();
                    return null;
                }
                throw new JsonSyntaxException("Expecting number, got: ".concat(String.valueOf(peek)));
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.value(number);
            }
        };
        w = jVar5;
        x = a(Number.class, jVar5);
        com.google.gson.j<Character> jVar6 = new com.google.gson.j<Character>() { // from class: com.google.gson.internal.bind.j.7
            @Override // com.google.gson.j
            public final /* synthetic */ Character read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if (nextString.length() == 1) {
                    return Character.valueOf(nextString.charAt(0));
                }
                throw new JsonSyntaxException("Expecting character, got: ".concat(String.valueOf(nextString)));
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Character ch) throws IOException {
                Character ch2 = ch;
                jsonWriter.value(ch2 == null ? null : String.valueOf(ch2));
            }
        };
        y = jVar6;
        z = a(Character.TYPE, Character.class, jVar6);
        com.google.gson.j<String> jVar7 = new com.google.gson.j<String>() { // from class: com.google.gson.internal.bind.j.8
            @Override // com.google.gson.j
            public final /* synthetic */ String read(JsonReader jsonReader) throws IOException {
                JsonToken peek = jsonReader.peek();
                if (peek != JsonToken.NULL) {
                    return peek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, String str) throws IOException {
                jsonWriter.value(str);
            }
        };
        A = jVar7;
        D = a(String.class, jVar7);
        com.google.gson.j<StringBuilder> jVar8 = new com.google.gson.j<StringBuilder>() { // from class: com.google.gson.internal.bind.j.11
            @Override // com.google.gson.j
            public final /* synthetic */ StringBuilder read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                StringBuilder sb2 = sb;
                jsonWriter.value(sb2 == null ? null : sb2.toString());
            }
        };
        E = jVar8;
        F = a(StringBuilder.class, jVar8);
        com.google.gson.j<StringBuffer> jVar9 = new com.google.gson.j<StringBuffer>() { // from class: com.google.gson.internal.bind.j.13
            @Override // com.google.gson.j
            public final /* synthetic */ StringBuffer read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                StringBuffer stringBuffer2 = stringBuffer;
                jsonWriter.value(stringBuffer2 == null ? null : stringBuffer2.toString());
            }
        };
        G = jVar9;
        H = a(StringBuffer.class, jVar9);
        com.google.gson.j<URL> jVar10 = new com.google.gson.j<URL>() { // from class: com.google.gson.internal.bind.j.14
            @Override // com.google.gson.j
            public final /* synthetic */ URL read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                String nextString = jsonReader.nextString();
                if (JsonReaderKt.NULL.equals(nextString)) {
                    return null;
                }
                return new URL(nextString);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, URL url) throws IOException {
                URL url2 = url;
                jsonWriter.value(url2 == null ? null : url2.toExternalForm());
            }
        };
        I = jVar10;
        J = a(URL.class, jVar10);
        com.google.gson.j<URI> jVar11 = new com.google.gson.j<URI>() { // from class: com.google.gson.internal.bind.j.15
            private static URI a(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                try {
                    String nextString = jsonReader.nextString();
                    if (JsonReaderKt.NULL.equals(nextString)) {
                        return null;
                    }
                    return new URI(nextString);
                } catch (URISyntaxException e2) {
                    throw new JsonIOException(e2);
                }
            }

            @Override // com.google.gson.j
            public final /* synthetic */ URI read(JsonReader jsonReader) throws IOException {
                return a(jsonReader);
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, URI uri) throws IOException {
                URI uri2 = uri;
                jsonWriter.value(uri2 == null ? null : uri2.toASCIIString());
            }
        };
        K = jVar11;
        L = a(URI.class, jVar11);
        com.google.gson.j<InetAddress> jVar12 = new com.google.gson.j<InetAddress>() { // from class: com.google.gson.internal.bind.j.16
            @Override // com.google.gson.j
            public final /* synthetic */ InetAddress read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                InetAddress inetAddress2 = inetAddress;
                jsonWriter.value(inetAddress2 == null ? null : inetAddress2.getHostAddress());
            }
        };
        M = jVar12;
        N = b(InetAddress.class, jVar12);
        com.google.gson.j<UUID> jVar13 = new com.google.gson.j<UUID>() { // from class: com.google.gson.internal.bind.j.17
            @Override // com.google.gson.j
            public final /* synthetic */ UUID read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return UUID.fromString(jsonReader.nextString());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, UUID uuid) throws IOException {
                UUID uuid2 = uuid;
                jsonWriter.value(uuid2 == null ? null : uuid2.toString());
            }
        };
        O = jVar13;
        P = a(UUID.class, jVar13);
        com.google.gson.j<Currency> nullSafe6 = new com.google.gson.j<Currency>() { // from class: com.google.gson.internal.bind.j.18
            @Override // com.google.gson.j
            public final /* synthetic */ Currency read(JsonReader jsonReader) throws IOException {
                return Currency.getInstance(jsonReader.nextString());
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Currency currency) throws IOException {
                jsonWriter.value(currency.getCurrencyCode());
            }
        }.nullSafe();
        Q = nullSafe6;
        R = a(Currency.class, nullSafe6);
        final com.google.gson.j<Calendar> jVar14 = new com.google.gson.j<Calendar>() { // from class: com.google.gson.internal.bind.j.20
            @Override // com.google.gson.j
            public final /* synthetic */ Calendar read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                jsonReader.beginObject();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (jsonReader.peek() != JsonToken.END_OBJECT) {
                    String nextName = jsonReader.nextName();
                    int nextInt = jsonReader.nextInt();
                    if ("year".equals(nextName)) {
                        i2 = nextInt;
                    } else if ("month".equals(nextName)) {
                        i3 = nextInt;
                    } else if ("dayOfMonth".equals(nextName)) {
                        i4 = nextInt;
                    } else if ("hourOfDay".equals(nextName)) {
                        i5 = nextInt;
                    } else if ("minute".equals(nextName)) {
                        i6 = nextInt;
                    } else if ("second".equals(nextName)) {
                        i7 = nextInt;
                    }
                }
                jsonReader.endObject();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.google.gson.j
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
        T = jVar14;
        U = new k() { // from class: com.google.gson.internal.bind.j.28
            @Override // com.google.gson.k
            public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == r4 || rawType == r5) {
                    return jVar14;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + r4.getName() + "+" + r5.getName() + ",adapter=" + jVar14 + "]";
            }
        };
        com.google.gson.j<Locale> jVar15 = new com.google.gson.j<Locale>() { // from class: com.google.gson.internal.bind.j.21
            @Override // com.google.gson.j
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

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Locale locale) throws IOException {
                Locale locale2 = locale;
                jsonWriter.value(locale2 == null ? null : locale2.toString());
            }
        };
        V = jVar15;
        W = a(Locale.class, jVar15);
        com.google.gson.j<JsonElement> jVar16 = new com.google.gson.j<JsonElement>() { // from class: com.google.gson.internal.bind.j.22
            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: a */
            public JsonElement read(JsonReader jsonReader) throws IOException {
                switch (AnonymousClass30.f32756a[jsonReader.peek().ordinal()]) {
                    case 1:
                        return new JsonPrimitive(new com.google.gson.internal.f(jsonReader.nextString()));
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

            /* JADX INFO: Access modifiers changed from: private */
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
                } else if (jsonElement.isJsonObject()) {
                    jsonWriter.beginObject();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                        jsonWriter.name(entry.getKey());
                        write(jsonWriter, entry.getValue());
                    }
                    jsonWriter.endObject();
                } else {
                    throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
                }
            }
        };
        X = jVar16;
        Y = b(JsonElement.class, jVar16);
    }

    private j() {
        throw new UnsupportedOperationException();
    }

    public static <TT> k a(final com.google.gson.a.a<TT> aVar, final com.google.gson.j<TT> jVar) {
        return new k() { // from class: com.google.gson.internal.bind.j.25
            @Override // com.google.gson.k
            public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar2) {
                if (aVar2.equals(com.google.gson.a.a.this)) {
                    return jVar;
                }
                return null;
            }
        };
    }

    public static <TT> k a(final Class<TT> cls, final com.google.gson.j<TT> jVar) {
        return new k() { // from class: com.google.gson.internal.bind.j.26
            @Override // com.google.gson.k
            public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
                if (aVar.getRawType() == cls) {
                    return jVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + jVar + "]";
            }
        };
    }

    public static <TT> k a(final Class<TT> cls, final Class<TT> cls2, final com.google.gson.j<? super TT> jVar) {
        return new k() { // from class: com.google.gson.internal.bind.j.27
            @Override // com.google.gson.k
            public final <T> com.google.gson.j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return jVar;
                }
                return null;
            }

            public final String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + jVar + "]";
            }
        };
    }

    private static <T1> k b(final Class<T1> cls, final com.google.gson.j<T1> jVar) {
        return new k() { // from class: com.google.gson.internal.bind.j.29
            @Override // com.google.gson.k
            public final <T2> com.google.gson.j<T2> create(f fVar, com.google.gson.a.a<T2> aVar) {
                final Class<? super T2> rawType = aVar.getRawType();
                if (!cls.isAssignableFrom(rawType)) {
                    return null;
                }
                return (com.google.gson.j<T2>) new com.google.gson.j<T1>() { // from class: com.google.gson.internal.bind.j.29.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.google.gson.j
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final T1 read(com.google.gson.stream.JsonReader r5) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = r4
                            com.google.gson.internal.bind.j$29 r0 = com.google.gson.internal.bind.j.AnonymousClass29.this
                            com.google.gson.j r0 = r5
                            r1 = r5
                            java.lang.Object r0 = r0.read(r1)
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
                            com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                            r1 = r0
                            r2 = r6
                            java.lang.String r2 = r2.toString()
                            r1.<init>(r2)
                            throw r0
                        L_0x0053:
                            r0 = r5
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.j.AnonymousClass29.AnonymousClass1.read(com.google.gson.stream.JsonReader):java.lang.Object");
                    }

                    @Override // com.google.gson.j
                    public final void write(JsonWriter jsonWriter, T1 t1) throws IOException {
                        jVar.write(jsonWriter, t1);
                    }
                };
            }

            public final String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + jVar + "]";
            }
        };
    }
}
