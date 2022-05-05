package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.SerializedName;
import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.reflect.TypeToken;
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
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters.class */
public final class TypeAdapters {

    /* renamed from: E */
    public static final TypeAdapter<StringBuilder> f12123E;

    /* renamed from: F */
    public static final TypeAdapterFactory f12124F;

    /* renamed from: G */
    public static final TypeAdapter<StringBuffer> f12125G;

    /* renamed from: H */
    public static final TypeAdapterFactory f12126H;

    /* renamed from: I */
    public static final TypeAdapter<URL> f12127I;

    /* renamed from: J */
    public static final TypeAdapterFactory f12128J;

    /* renamed from: K */
    public static final TypeAdapter<URI> f12129K;

    /* renamed from: L */
    public static final TypeAdapterFactory f12130L;

    /* renamed from: M */
    public static final TypeAdapter<InetAddress> f12131M;

    /* renamed from: N */
    public static final TypeAdapterFactory f12132N;

    /* renamed from: O */
    public static final TypeAdapter<UUID> f12133O;

    /* renamed from: P */
    public static final TypeAdapterFactory f12134P;

    /* renamed from: Q */
    public static final TypeAdapter<Currency> f12135Q;

    /* renamed from: R */
    public static final TypeAdapterFactory f12136R;

    /* renamed from: T */
    public static final TypeAdapter<Calendar> f12138T;

    /* renamed from: U */
    public static final TypeAdapterFactory f12139U;

    /* renamed from: V */
    public static final TypeAdapter<Locale> f12140V;

    /* renamed from: W */
    public static final TypeAdapterFactory f12141W;

    /* renamed from: X */
    public static final TypeAdapter<JsonElement> f12142X;

    /* renamed from: Y */
    public static final TypeAdapterFactory f12143Y;

    /* renamed from: a */
    public static final TypeAdapter<Class> f12145a;

    /* renamed from: b */
    public static final TypeAdapterFactory f12146b;

    /* renamed from: c */
    public static final TypeAdapter<BitSet> f12147c;

    /* renamed from: d */
    public static final TypeAdapterFactory f12148d;

    /* renamed from: n */
    public static final TypeAdapter<AtomicInteger> f12158n;

    /* renamed from: o */
    public static final TypeAdapterFactory f12159o;

    /* renamed from: p */
    public static final TypeAdapter<AtomicBoolean> f12160p;

    /* renamed from: q */
    public static final TypeAdapterFactory f12161q;

    /* renamed from: r */
    public static final TypeAdapter<AtomicIntegerArray> f12162r;

    /* renamed from: s */
    public static final TypeAdapterFactory f12163s;

    /* renamed from: w */
    public static final TypeAdapter<Number> f12167w;

    /* renamed from: x */
    public static final TypeAdapterFactory f12168x;

    /* renamed from: e */
    public static final TypeAdapter<Boolean> f12149e = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
        /* renamed from: e */
        public Boolean mo8175b(JsonReader jsonReader) throws IOException {
            JsonToken Z = jsonReader.mo8147Z();
            if (Z != JsonToken.NULL) {
                return Z == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.mo8149X())) : Boolean.valueOf(jsonReader.mo8157B());
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.mo8111Z(bool);
        }
    };

    /* renamed from: f */
    public static final TypeAdapter<Boolean> f12150f = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
        /* renamed from: e */
        public Boolean mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() != JsonToken.NULL) {
                return Boolean.valueOf(jsonReader.mo8149X());
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Boolean bool) throws IOException {
            jsonWriter.mo8106d0(bool == null ? "null" : bool.toString());
        }
    };

    /* renamed from: g */
    public static final TypeAdapterFactory f12151g = m8237b(Boolean.TYPE, Boolean.class, f12149e);

    /* renamed from: h */
    public static final TypeAdapter<Number> f12152h = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return Byte.valueOf((byte) jsonReader.mo8155J());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: i */
    public static final TypeAdapterFactory f12153i = m8237b(Byte.TYPE, Byte.class, f12152h);

    /* renamed from: j */
    public static final TypeAdapter<Number> f12154j = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return Short.valueOf((short) jsonReader.mo8155J());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: k */
    public static final TypeAdapterFactory f12155k = m8237b(Short.TYPE, Short.class, f12154j);

    /* renamed from: l */
    public static final TypeAdapter<Number> f12156l = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return Integer.valueOf(jsonReader.mo8155J());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: m */
    public static final TypeAdapterFactory f12157m = m8237b(Integer.TYPE, Integer.class, f12156l);

    /* renamed from: t */
    public static final TypeAdapter<Number> f12164t = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return Long.valueOf(jsonReader.mo8154K());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: u */
    public static final TypeAdapter<Number> f12165u = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.mo8156I());
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: v */
    public static final TypeAdapter<Number> f12166v = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
        /* renamed from: e */
        public Number mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.mo8156I());
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
            jsonWriter.mo8108b0(number);
        }
    };

    /* renamed from: y */
    public static final TypeAdapter<Character> f12169y = new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
        /* renamed from: e */
        public Character mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            String X = jsonReader.mo8149X();
            if (X.length() == 1) {
                return Character.valueOf(X.charAt(0));
            }
            throw new JsonSyntaxException("Expecting character, got: " + X);
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Character ch) throws IOException {
            jsonWriter.mo8106d0(ch == null ? null : String.valueOf(ch));
        }
    };

    /* renamed from: z */
    public static final TypeAdapterFactory f12170z = m8237b(Character.TYPE, Character.class, f12169y);

    /* renamed from: A */
    public static final TypeAdapter<String> f12119A = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
        /* renamed from: e */
        public String mo8175b(JsonReader jsonReader) throws IOException {
            JsonToken Z = jsonReader.mo8147Z();
            if (Z != JsonToken.NULL) {
                return Z == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.mo8157B()) : jsonReader.mo8149X();
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, String str) throws IOException {
            jsonWriter.mo8106d0(str);
        }
    };

    /* renamed from: B */
    public static final TypeAdapter<BigDecimal> f12120B = new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
        /* renamed from: e */
        public BigDecimal mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return new BigDecimal(jsonReader.mo8149X());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, BigDecimal bigDecimal) throws IOException {
            jsonWriter.mo8108b0(bigDecimal);
        }
    };

    /* renamed from: C */
    public static final TypeAdapter<BigInteger> f12121C = new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
        /* renamed from: e */
        public BigInteger mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            try {
                return new BigInteger(jsonReader.mo8149X());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, BigInteger bigInteger) throws IOException {
            jsonWriter.mo8108b0(bigInteger);
        }
    };

    /* renamed from: D */
    public static final TypeAdapterFactory f12122D = m8238a(String.class, f12119A);

    /* renamed from: S */
    public static final TypeAdapterFactory f12137S = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.26
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.m8160c() != Timestamp.class) {
                return null;
            }
            final TypeAdapter<T> l = gson.m8423l(Date.class);
            return (TypeAdapter<T>) new TypeAdapter<Timestamp>(this) { // from class: com.google.gson.internal.bind.TypeAdapters.26.1
                /* renamed from: e */
                public Timestamp mo8175b(JsonReader jsonReader) throws IOException {
                    Date date = (Date) l.mo8175b(jsonReader);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }

                /* renamed from: f */
                public void mo8174d(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
                    l.mo8174d(jsonWriter, timestamp);
                }
            };
        }
    };

    /* renamed from: Z */
    public static final TypeAdapterFactory f12144Z = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.30
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> c = typeToken.m8160c();
            if (!Enum.class.isAssignableFrom(c) || c == Enum.class) {
                return null;
            }
            Class<? super Object> cls = c;
            if (!c.isEnum()) {
                cls = c.getSuperclass();
            }
            return new EnumTypeAdapter(cls);
        }
    };

    /* renamed from: com.google.gson.internal.bind.TypeAdapters$31 */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters$31.class */
    final class C146331 implements TypeAdapterFactory {

        /* renamed from: f */
        final /* synthetic */ TypeToken f12172f;

        /* renamed from: g */
        final /* synthetic */ TypeAdapter f12173g;

        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            return typeToken.equals(this.f12172f) ? this.f12173g : null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.gson.internal.bind.TypeAdapters$36 */
    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters$36.class */
    public static /* synthetic */ class C146936 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12186a;

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
            f12186a = iArr;
            try {
                iArr[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12186a[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12186a[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12186a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12186a[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f12186a[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f12186a[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f12186a[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f12186a[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f12186a[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter.class */
    private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {

        /* renamed from: a */
        private final Map<String, T> f12187a = new HashMap();

        /* renamed from: b */
        private final Map<T, String> f12188b = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        name = serializedName.value();
                        for (String str : serializedName.alternate()) {
                            this.f12187a.put(str, t);
                        }
                    }
                    this.f12187a.put(name, t);
                    this.f12188b.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        /* renamed from: e */
        public T mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() != JsonToken.NULL) {
                return this.f12187a.get(jsonReader.mo8149X());
            }
            jsonReader.mo8151V();
            return null;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
            jsonWriter.mo8106d0(t == null ? null : this.f12188b.get(t));
        }
    }

    static {
        TypeAdapter<Class> a = new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: b */
            public /* bridge */ /* synthetic */ Class mo8175b(JsonReader jsonReader) throws IOException {
                m8234e(jsonReader);
                throw null;
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: d */
            public /* bridge */ /* synthetic */ void mo8174d(JsonWriter jsonWriter, Class cls) throws IOException {
                m8233f(jsonWriter, cls);
                throw null;
            }

            /* renamed from: e */
            public Class m8234e(JsonReader jsonReader) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }

            /* renamed from: f */
            public void m8233f(JsonWriter jsonWriter, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }
        }.m8369a();
        f12145a = a;
        f12146b = m8238a(Class.class, a);
        TypeAdapter<BitSet> a2 = new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
            /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
                if (java.lang.Integer.parseInt(r0) != 0) goto L_0x00a6;
             */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
                r10 = false;
             */
            /* JADX WARN: Code restructure failed: missing block: B:22:0x00a3, code lost:
                if (r5.mo8155J() != 0) goto L_0x00a6;
             */
            /* renamed from: e */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.util.BitSet mo8175b(com.google.gson.stream.JsonReader r5) throws java.io.IOException {
                /*
                    r4 = this;
                    java.util.BitSet r0 = new java.util.BitSet
                    r1 = r0
                    r1.<init>()
                    r6 = r0
                    r0 = r5
                    r0.mo8146a()
                    r0 = r5
                    com.google.gson.stream.JsonToken r0 = r0.mo8147Z()
                    r7 = r0
                    r0 = 0
                    r8 = r0
                L_0x0014:
                    r0 = r7
                    com.google.gson.stream.JsonToken r1 = com.google.gson.stream.JsonToken.END_ARRAY
                    if (r0 == r1) goto L_0x00bc
                    int[] r0 = com.google.gson.internal.bind.TypeAdapters.C146936.f12186a
                    r1 = r7
                    int r1 = r1.ordinal()
                    r0 = r0[r1]
                    r9 = r0
                    r0 = 1
                    r10 = r0
                    r0 = r9
                    r1 = 1
                    if (r0 == r1) goto L_0x009f
                    r0 = r9
                    r1 = 2
                    if (r0 == r1) goto L_0x0096
                    r0 = r9
                    r1 = 3
                    if (r0 != r1) goto L_0x0075
                    r0 = r5
                    java.lang.String r0 = r0.mo8149X()
                    r7 = r0
                    r0 = r7
                    int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0053
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L_0x004d
                    goto L_0x00a6
                L_0x004d:
                    r0 = 0
                    r10 = r0
                    goto L_0x00a6
                L_0x0053:
                    r5 = move-exception
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r5 = r0
                    r0 = r5
                    java.lang.String r1 = "Error: Expecting: bitset number value (1, 0), Found: "
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r5
                    r1 = r7
                    java.lang.StringBuilder r0 = r0.append(r1)
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    r2 = r5
                    java.lang.String r2 = r2.toString()
                    r1.<init>(r2)
                    throw r0
                L_0x0075:
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r1 = r0
                    r1.<init>()
                    r5 = r0
                    r0 = r5
                    java.lang.String r1 = "Invalid bitset value type: "
                    java.lang.StringBuilder r0 = r0.append(r1)
                    r0 = r5
                    r1 = r7
                    java.lang.StringBuilder r0 = r0.append(r1)
                    com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                    r1 = r0
                    r2 = r5
                    java.lang.String r2 = r2.toString()
                    r1.<init>(r2)
                    throw r0
                L_0x0096:
                    r0 = r5
                    boolean r0 = r0.mo8157B()
                    r10 = r0
                    goto L_0x00a6
                L_0x009f:
                    r0 = r5
                    int r0 = r0.mo8155J()
                    if (r0 == 0) goto L_0x004d
                L_0x00a6:
                    r0 = r10
                    if (r0 == 0) goto L_0x00b1
                    r0 = r6
                    r1 = r8
                    r0.set(r1)
                L_0x00b1:
                    int r8 = r8 + 1
                    r0 = r5
                    com.google.gson.stream.JsonToken r0 = r0.mo8147Z()
                    r7 = r0
                    goto L_0x0014
                L_0x00bc:
                    r0 = r5
                    r0.mo8138i()
                    r0 = r6
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.C14492.mo8175b(com.google.gson.stream.JsonReader):java.util.BitSet");
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, BitSet bitSet) throws IOException {
                jsonWriter.mo8107d();
                int length = bitSet.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.mo8112Y(bitSet.get(i) ? 1L : 0L);
                }
                jsonWriter.mo8102i();
            }
        }.m8369a();
        f12147c = a2;
        f12148d = m8238a(BitSet.class, a2);
        TypeAdapter<AtomicInteger> a3 = new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
            /* renamed from: e */
            public AtomicInteger mo8175b(JsonReader jsonReader) throws IOException {
                try {
                    return new AtomicInteger(jsonReader.mo8155J());
                } catch (NumberFormatException e) {
                    throw new JsonSyntaxException(e);
                }
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, AtomicInteger atomicInteger) throws IOException {
                jsonWriter.mo8112Y(atomicInteger.get());
            }
        }.m8369a();
        f12158n = a3;
        f12159o = m8238a(AtomicInteger.class, a3);
        TypeAdapter<AtomicBoolean> a4 = new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            /* renamed from: e */
            public AtomicBoolean mo8175b(JsonReader jsonReader) throws IOException {
                return new AtomicBoolean(jsonReader.mo8157B());
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) throws IOException {
                jsonWriter.mo8104e0(atomicBoolean.get());
            }
        }.m8369a();
        f12160p = a4;
        f12161q = m8238a(AtomicBoolean.class, a4);
        TypeAdapter<AtomicIntegerArray> a5 = new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
            /* renamed from: e */
            public AtomicIntegerArray mo8175b(JsonReader jsonReader) throws IOException {
                ArrayList arrayList = new ArrayList();
                jsonReader.mo8146a();
                while (jsonReader.mo8132o()) {
                    try {
                        arrayList.add(Integer.valueOf(jsonReader.mo8155J()));
                    } catch (NumberFormatException e) {
                        throw new JsonSyntaxException(e);
                    }
                }
                jsonReader.mo8138i();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i = 0; i < size; i++) {
                    atomicIntegerArray.set(i, ((Integer) arrayList.get(i)).intValue());
                }
                return atomicIntegerArray;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) throws IOException {
                jsonWriter.mo8107d();
                int length = atomicIntegerArray.length();
                for (int i = 0; i < length; i++) {
                    jsonWriter.mo8112Y(atomicIntegerArray.get(i));
                }
                jsonWriter.mo8102i();
            }
        }.m8369a();
        f12162r = a5;
        f12163s = m8238a(AtomicIntegerArray.class, a5);
        TypeAdapter<Number> typeAdapter = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
            /* renamed from: e */
            public Number mo8175b(JsonReader jsonReader) throws IOException {
                JsonToken Z = jsonReader.mo8147Z();
                int i = C146936.f12186a[Z.ordinal()];
                if (i == 1 || i == 3) {
                    return new LazilyParsedNumber(jsonReader.mo8149X());
                }
                if (i == 4) {
                    jsonReader.mo8151V();
                    return null;
                }
                throw new JsonSyntaxException("Expecting number, got: " + Z);
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Number number) throws IOException {
                jsonWriter.mo8108b0(number);
            }
        };
        f12167w = typeAdapter;
        f12168x = m8238a(Number.class, typeAdapter);
        TypeAdapter<StringBuilder> typeAdapter2 = new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
            /* renamed from: e */
            public StringBuilder mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return new StringBuilder(jsonReader.mo8149X());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, StringBuilder sb) throws IOException {
                jsonWriter.mo8106d0(sb == null ? null : sb.toString());
            }
        };
        f12123E = typeAdapter2;
        f12124F = m8238a(StringBuilder.class, typeAdapter2);
        TypeAdapter<StringBuffer> typeAdapter3 = new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
            /* renamed from: e */
            public StringBuffer mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return new StringBuffer(jsonReader.mo8149X());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, StringBuffer stringBuffer) throws IOException {
                jsonWriter.mo8106d0(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        f12125G = typeAdapter3;
        f12126H = m8238a(StringBuffer.class, typeAdapter3);
        TypeAdapter<URL> typeAdapter4 = new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
            /* renamed from: e */
            public URL mo8175b(JsonReader jsonReader) throws IOException {
                JsonToken Z = jsonReader.mo8147Z();
                URL url = null;
                if (Z == JsonToken.NULL) {
                    jsonReader.mo8151V();
                    return null;
                }
                String X = jsonReader.mo8149X();
                if (!"null".equals(X)) {
                    url = new URL(X);
                }
                return url;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, URL url) throws IOException {
                jsonWriter.mo8106d0(url == null ? null : url.toExternalForm());
            }
        };
        f12127I = typeAdapter4;
        f12128J = m8238a(URL.class, typeAdapter4);
        TypeAdapter<URI> typeAdapter5 = new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
            /* renamed from: e */
            public URI mo8175b(JsonReader jsonReader) throws IOException {
                JsonToken Z = jsonReader.mo8147Z();
                URI uri = null;
                if (Z == JsonToken.NULL) {
                    jsonReader.mo8151V();
                    return null;
                }
                try {
                    String X = jsonReader.mo8149X();
                    if (!"null".equals(X)) {
                        uri = new URI(X);
                    }
                    return uri;
                } catch (URISyntaxException e) {
                    throw new JsonIOException(e);
                }
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, URI uri) throws IOException {
                jsonWriter.mo8106d0(uri == null ? null : uri.toASCIIString());
            }
        };
        f12129K = typeAdapter5;
        f12130L = m8238a(URI.class, typeAdapter5);
        TypeAdapter<InetAddress> typeAdapter6 = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
            /* renamed from: e */
            public InetAddress mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return InetAddress.getByName(jsonReader.mo8149X());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, InetAddress inetAddress) throws IOException {
                jsonWriter.mo8106d0(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        f12131M = typeAdapter6;
        f12132N = m8235d(InetAddress.class, typeAdapter6);
        TypeAdapter<UUID> typeAdapter7 = new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
            /* renamed from: e */
            public UUID mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() != JsonToken.NULL) {
                    return UUID.fromString(jsonReader.mo8149X());
                }
                jsonReader.mo8151V();
                return null;
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, UUID uuid) throws IOException {
                jsonWriter.mo8106d0(uuid == null ? null : uuid.toString());
            }
        };
        f12133O = typeAdapter7;
        f12134P = m8238a(UUID.class, typeAdapter7);
        TypeAdapter<Currency> a6 = new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
            /* renamed from: e */
            public Currency mo8175b(JsonReader jsonReader) throws IOException {
                return Currency.getInstance(jsonReader.mo8149X());
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Currency currency) throws IOException {
                jsonWriter.mo8106d0(currency.getCurrencyCode());
            }
        }.m8369a();
        f12135Q = a6;
        f12136R = m8238a(Currency.class, a6);
        TypeAdapter<Calendar> typeAdapter8 = new TypeAdapter<Calendar>() { // from class: com.google.gson.internal.bind.TypeAdapters.27
            /* renamed from: e */
            public Calendar mo8175b(JsonReader jsonReader) throws IOException {
                if (jsonReader.mo8147Z() == JsonToken.NULL) {
                    jsonReader.mo8151V();
                    return null;
                }
                jsonReader.mo8145b();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (jsonReader.mo8147Z() != JsonToken.END_OBJECT) {
                    String L = jsonReader.mo8153L();
                    int J = jsonReader.mo8155J();
                    if ("year".equals(L)) {
                        i = J;
                    } else if ("month".equals(L)) {
                        i2 = J;
                    } else if ("dayOfMonth".equals(L)) {
                        i3 = J;
                    } else if ("hourOfDay".equals(L)) {
                        i4 = J;
                    } else if ("minute".equals(L)) {
                        i5 = J;
                    } else if ("second".equals(L)) {
                        i6 = J;
                    }
                }
                jsonReader.mo8135k();
                return new GregorianCalendar(i, i2, i3, i4, i5, i6);
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Calendar calendar) throws IOException {
                if (calendar == null) {
                    jsonWriter.mo8094t();
                    return;
                }
                jsonWriter.mo8105e();
                jsonWriter.mo8096p("year");
                jsonWriter.mo8112Y(calendar.get(1));
                jsonWriter.mo8096p("month");
                jsonWriter.mo8112Y(calendar.get(2));
                jsonWriter.mo8096p("dayOfMonth");
                jsonWriter.mo8112Y(calendar.get(5));
                jsonWriter.mo8096p("hourOfDay");
                jsonWriter.mo8112Y(calendar.get(11));
                jsonWriter.mo8096p("minute");
                jsonWriter.mo8112Y(calendar.get(12));
                jsonWriter.mo8096p("second");
                jsonWriter.mo8112Y(calendar.get(13));
                jsonWriter.mo8100k();
            }
        };
        f12138T = typeAdapter8;
        f12139U = m8236c(Calendar.class, GregorianCalendar.class, typeAdapter8);
        TypeAdapter<Locale> typeAdapter9 = new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.28
            /* renamed from: e */
            public Locale mo8175b(JsonReader jsonReader) throws IOException {
                String str = null;
                if (jsonReader.mo8147Z() == JsonToken.NULL) {
                    jsonReader.mo8151V();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(jsonReader.mo8149X(), "_");
                String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                }
                return (nextToken2 == null && str == null) ? new Locale(nextToken) : str == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, str);
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, Locale locale) throws IOException {
                jsonWriter.mo8106d0(locale == null ? null : locale.toString());
            }
        };
        f12140V = typeAdapter9;
        f12141W = m8238a(Locale.class, typeAdapter9);
        TypeAdapter<JsonElement> typeAdapter10 = new TypeAdapter<JsonElement>() { // from class: com.google.gson.internal.bind.TypeAdapters.29
            /* renamed from: e */
            public JsonElement mo8175b(JsonReader jsonReader) throws IOException {
                switch (C146936.f12186a[jsonReader.mo8147Z().ordinal()]) {
                    case 1:
                        return new JsonPrimitive(new LazilyParsedNumber(jsonReader.mo8149X()));
                    case 2:
                        return new JsonPrimitive(Boolean.valueOf(jsonReader.mo8157B()));
                    case 3:
                        return new JsonPrimitive(jsonReader.mo8149X());
                    case 4:
                        jsonReader.mo8151V();
                        return JsonNull.f11955a;
                    case 5:
                        JsonArray jsonArray = new JsonArray();
                        jsonReader.mo8146a();
                        while (jsonReader.mo8132o()) {
                            jsonArray.m8395k(mo8175b(jsonReader));
                        }
                        jsonReader.mo8138i();
                        return jsonArray;
                    case 6:
                        JsonObject jsonObject = new JsonObject();
                        jsonReader.mo8145b();
                        while (jsonReader.mo8132o()) {
                            jsonObject.m8386k(jsonReader.mo8153L(), mo8175b(jsonReader));
                        }
                        jsonReader.mo8135k();
                        return jsonObject;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            /* renamed from: f */
            public void mo8174d(JsonWriter jsonWriter, JsonElement jsonElement) throws IOException {
                if (jsonElement == null || jsonElement.m8389g()) {
                    jsonWriter.mo8094t();
                } else if (jsonElement.m8387j()) {
                    JsonPrimitive e = jsonElement.m8391e();
                    if (e.m8374x()) {
                        jsonWriter.mo8108b0(e.m8378t());
                    } else if (e.m8376v()) {
                        jsonWriter.mo8104e0(e.m8383k());
                    } else {
                        jsonWriter.mo8106d0(e.m8377u());
                    }
                } else if (jsonElement.m8390f()) {
                    jsonWriter.mo8107d();
                    Iterator<JsonElement> it = jsonElement.m8393c().iterator();
                    while (it.hasNext()) {
                        mo8174d(jsonWriter, it.next());
                    }
                    jsonWriter.mo8102i();
                } else if (jsonElement.m8388h()) {
                    jsonWriter.mo8105e();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.m8392d().m8385n()) {
                        jsonWriter.mo8096p(entry.getKey());
                        mo8174d(jsonWriter, entry.getValue());
                    }
                    jsonWriter.mo8100k();
                } else {
                    throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
                }
            }
        };
        f12142X = typeAdapter10;
        f12143Y = m8235d(JsonElement.class, typeAdapter10);
    }

    private TypeAdapters() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public static <TT> TypeAdapterFactory m8238a(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.TypeAdapterFactory
            /* renamed from: a */
            public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
                return typeToken.m8160c() == cls ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: b */
    public static <TT> TypeAdapterFactory m8237b(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // com.google.gson.TypeAdapterFactory
            /* renamed from: a */
            public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> c = typeToken.m8160c();
                return (c == cls || c == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: c */
    public static <TT> TypeAdapterFactory m8236c(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.34
            @Override // com.google.gson.TypeAdapterFactory
            /* renamed from: a */
            public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> c = typeToken.m8160c();
                return (c == cls || c == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    /* renamed from: d */
    public static <T1> TypeAdapterFactory m8235d(final Class<T1> cls, final TypeAdapter<T1> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.TypeAdapters.35
            @Override // com.google.gson.TypeAdapterFactory
            /* renamed from: a */
            public <T2> TypeAdapter<T2> mo8188a(Gson gson, TypeToken<T2> typeToken) {
                final Class<? super T2> c = typeToken.m8160c();
                if (!cls.isAssignableFrom(c)) {
                    return null;
                }
                return (TypeAdapter<T2>) new TypeAdapter<T1>() { // from class: com.google.gson.internal.bind.TypeAdapters.35.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.google.gson.TypeAdapter
                    /* renamed from: b */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public T1 mo8175b(com.google.gson.stream.JsonReader r5) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = r4
                            com.google.gson.internal.bind.TypeAdapters$35 r0 = com.google.gson.internal.bind.TypeAdapters.C146735.this
                            com.google.gson.TypeAdapter r0 = r5
                            r1 = r5
                            java.lang.Object r0 = r0.mo8175b(r1)
                            r6 = r0
                            r0 = r6
                            if (r0 == 0) goto L_0x0058
                            r0 = r4
                            java.lang.Class r0 = r5
                            r1 = r6
                            boolean r0 = r0.isInstance(r1)
                            if (r0 == 0) goto L_0x001e
                            goto L_0x0058
                        L_0x001e:
                            java.lang.StringBuilder r0 = new java.lang.StringBuilder
                            r1 = r0
                            r1.<init>()
                            r5 = r0
                            r0 = r5
                            java.lang.String r1 = "Expected a "
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            r1 = r4
                            java.lang.Class r1 = r5
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            java.lang.String r1 = " but was "
                            java.lang.StringBuilder r0 = r0.append(r1)
                            r0 = r5
                            r1 = r6
                            java.lang.Class r1 = r1.getClass()
                            java.lang.String r1 = r1.getName()
                            java.lang.StringBuilder r0 = r0.append(r1)
                            com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
                            r1 = r0
                            r2 = r5
                            java.lang.String r2 = r2.toString()
                            r1.<init>(r2)
                            throw r0
                        L_0x0058:
                            r0 = r6
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.C146735.C14681.mo8175b(com.google.gson.stream.JsonReader):java.lang.Object");
                    }

                    @Override // com.google.gson.TypeAdapter
                    /* renamed from: d */
                    public void mo8174d(JsonWriter jsonWriter, T1 t1) throws IOException {
                        typeAdapter.mo8174d(jsonWriter, t1);
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
