package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonArray;
import com.aotter.net.gson.JsonElement;
import com.aotter.net.gson.JsonIOException;
import com.aotter.net.gson.JsonNull;
import com.aotter.net.gson.JsonObject;
import com.aotter.net.gson.JsonPrimitive;
import com.aotter.net.gson.JsonSyntaxException;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.annotations.SerializedName;
import com.aotter.net.gson.internal.LazilyParsedNumber;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.JsonWriter;
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
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TypeAdapters.class */
public final class TypeAdapters {
    public static final TypeAdapter<Class> CLASS = new TypeAdapter<Class>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Class read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }

        public void write(JsonWriter jsonWriter, Class cls) {
            if (cls == null) {
                jsonWriter.nullValue();
                return;
            }
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    };
    public static final TypeAdapterFactory CLASS_FACTORY = newFactory(Class.class, CLASS);
    public static final TypeAdapter<BitSet> BIT_SET = new TypeAdapter<BitSet>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.2
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
            if (java.lang.Integer.parseInt(r0) != 0) goto L_0x00b6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00b3, code lost:
            if (r5.nextInt() != 0) goto L_0x00b6;
         */
        @Override // com.aotter.net.gson.TypeAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.BitSet read(com.aotter.net.gson.stream.JsonReader r5) {
            /*
                Method dump skipped, instructions count: 210
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.internal.bind.TypeAdapters.C16292.read(com.aotter.net.gson.stream.JsonReader):java.util.BitSet");
        }

        public void write(JsonWriter jsonWriter, BitSet bitSet) {
            if (bitSet == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (int i = 0; i < bitSet.length(); i++) {
                jsonWriter.value(bitSet.get(i) ? 1L : 0L);
            }
            jsonWriter.endArray();
        }
    };
    public static final TypeAdapterFactory BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
    public static final TypeAdapter<Boolean> BOOLEAN = new TypeAdapter<Boolean>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Boolean read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return jsonReader.peek() == JsonToken.STRING ? Boolean.valueOf(Boolean.parseBoolean(jsonReader.nextString())) : Boolean.valueOf(jsonReader.nextBoolean());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, Boolean bool) {
            jsonWriter.value(bool);
        }
    };
    public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING = new TypeAdapter<Boolean>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.4
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Boolean read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Boolean.valueOf(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, Boolean bool) {
            jsonWriter.value(bool == null ? C14247d.f31851f : bool.toString());
        }
    };
    public static final TypeAdapterFactory BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
    public static final TypeAdapter<Number> BYTE = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapterFactory BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
    public static final TypeAdapter<Number> SHORT = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.6
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapterFactory SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
    public static final TypeAdapter<Number> INTEGER = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.7
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapterFactory INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
    public static final TypeAdapter<AtomicInteger> ATOMIC_INTEGER = new TypeAdapter<AtomicInteger>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.8
        @Override // com.aotter.net.gson.TypeAdapter
        public AtomicInteger read(JsonReader jsonReader) {
            try {
                return new AtomicInteger(jsonReader.nextInt());
            } catch (NumberFormatException e) {
                throw new JsonSyntaxException(e);
            }
        }

        public void write(JsonWriter jsonWriter, AtomicInteger atomicInteger) {
            jsonWriter.value(atomicInteger.get());
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_INTEGER_FACTORY = newFactory(AtomicInteger.class, ATOMIC_INTEGER);
    public static final TypeAdapter<AtomicBoolean> ATOMIC_BOOLEAN = new TypeAdapter<AtomicBoolean>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.9
        @Override // com.aotter.net.gson.TypeAdapter
        public AtomicBoolean read(JsonReader jsonReader) {
            return new AtomicBoolean(jsonReader.nextBoolean());
        }

        public void write(JsonWriter jsonWriter, AtomicBoolean atomicBoolean) {
            jsonWriter.value(atomicBoolean.get());
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_BOOLEAN_FACTORY = newFactory(AtomicBoolean.class, ATOMIC_BOOLEAN);
    public static final TypeAdapter<AtomicIntegerArray> ATOMIC_INTEGER_ARRAY = new TypeAdapter<AtomicIntegerArray>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.10
        @Override // com.aotter.net.gson.TypeAdapter
        public AtomicIntegerArray read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, AtomicIntegerArray atomicIntegerArray) {
            jsonWriter.beginArray();
            int length = atomicIntegerArray.length();
            for (int i = 0; i < length; i++) {
                jsonWriter.value(atomicIntegerArray.get(i));
            }
            jsonWriter.endArray();
        }
    }.nullSafe();
    public static final TypeAdapterFactory ATOMIC_INTEGER_ARRAY_FACTORY = newFactory(AtomicIntegerArray.class, ATOMIC_INTEGER_ARRAY);
    public static final TypeAdapter<Number> LONG = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.11
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapter<Number> FLOAT = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.12
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Float.valueOf((float) jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapter<Number> DOUBLE = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.13
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return Double.valueOf(jsonReader.nextDouble());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapter<Number> NUMBER = new TypeAdapter<Number>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.14
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Number read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            int i = C164936.$SwitchMap$com$aotter$net$gson$stream$JsonToken[peek.ordinal()];
            if (i == 1) {
                return new LazilyParsedNumber(jsonReader.nextString());
            }
            if (i == 4) {
                jsonReader.nextNull();
                return null;
            }
            throw new JsonSyntaxException("Expecting number, got: " + peek);
        }

        public void write(JsonWriter jsonWriter, Number number) {
            jsonWriter.value(number);
        }
    };
    public static final TypeAdapterFactory NUMBER_FACTORY = newFactory(Number.class, NUMBER);
    public static final TypeAdapter<Character> CHARACTER = new TypeAdapter<Character>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.15
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public Character read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String nextString = jsonReader.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            throw new JsonSyntaxException("Expecting character, got: " + nextString);
        }

        public void write(JsonWriter jsonWriter, Character ch) {
            jsonWriter.value(ch == null ? null : String.valueOf(ch));
        }
    };
    public static final TypeAdapterFactory CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
    public static final TypeAdapter<String> STRING = new TypeAdapter<String>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.16
        @Override // com.aotter.net.gson.TypeAdapter
        public String read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            if (peek != JsonToken.NULL) {
                return peek == JsonToken.BOOLEAN ? Boolean.toString(jsonReader.nextBoolean()) : jsonReader.nextString();
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, String str) {
            jsonWriter.value(str);
        }
    };
    public static final TypeAdapter<BigDecimal> BIG_DECIMAL = new TypeAdapter<BigDecimal>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.17
        @Override // com.aotter.net.gson.TypeAdapter
        public BigDecimal read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, BigDecimal bigDecimal) {
            jsonWriter.value(bigDecimal);
        }
    };
    public static final TypeAdapter<BigInteger> BIG_INTEGER = new TypeAdapter<BigInteger>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.18
        @Override // com.aotter.net.gson.TypeAdapter
        public BigInteger read(JsonReader jsonReader) {
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

        public void write(JsonWriter jsonWriter, BigInteger bigInteger) {
            jsonWriter.value(bigInteger);
        }
    };
    public static final TypeAdapterFactory STRING_FACTORY = newFactory(String.class, STRING);
    public static final TypeAdapter<StringBuilder> STRING_BUILDER = new TypeAdapter<StringBuilder>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.19
        @Override // com.aotter.net.gson.TypeAdapter
        public StringBuilder read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuilder(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, StringBuilder sb) {
            jsonWriter.value(sb == null ? null : sb.toString());
        }
    };
    public static final TypeAdapterFactory STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
    public static final TypeAdapter<StringBuffer> STRING_BUFFER = new TypeAdapter<StringBuffer>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.20
        @Override // com.aotter.net.gson.TypeAdapter
        public StringBuffer read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return new StringBuffer(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, StringBuffer stringBuffer) {
            jsonWriter.value(stringBuffer == null ? null : stringBuffer.toString());
        }
    };
    public static final TypeAdapterFactory STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
    public static final TypeAdapter<URL> URL = new TypeAdapter<URL>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.21
        @Override // com.aotter.net.gson.TypeAdapter
        public URL read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            URL url = null;
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            String nextString = jsonReader.nextString();
            if (!C14247d.f31851f.equals(nextString)) {
                url = new URL(nextString);
            }
            return url;
        }

        public void write(JsonWriter jsonWriter, URL url) {
            jsonWriter.value(url == null ? null : url.toExternalForm());
        }
    };
    public static final TypeAdapterFactory URL_FACTORY = newFactory(URL.class, URL);
    public static final TypeAdapter<URI> URI = new TypeAdapter<URI>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.22
        @Override // com.aotter.net.gson.TypeAdapter
        public URI read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            URI uri = null;
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            try {
                String nextString = jsonReader.nextString();
                if (!C14247d.f31851f.equals(nextString)) {
                    uri = new URI(nextString);
                }
                return uri;
            } catch (URISyntaxException e) {
                throw new JsonIOException(e);
            }
        }

        public void write(JsonWriter jsonWriter, URI uri) {
            jsonWriter.value(uri == null ? null : uri.toASCIIString());
        }
    };
    public static final TypeAdapterFactory URI_FACTORY = newFactory(URI.class, URI);
    public static final TypeAdapter<InetAddress> INET_ADDRESS = new TypeAdapter<InetAddress>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.23
        @Override // com.aotter.net.gson.TypeAdapter
        public InetAddress read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return InetAddress.getByName(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, InetAddress inetAddress) {
            jsonWriter.value(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    };
    public static final TypeAdapterFactory INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
    public static final TypeAdapter<UUID> UUID = new TypeAdapter<UUID>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.24
        @Override // com.aotter.net.gson.TypeAdapter
        public UUID read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return UUID.fromString(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, UUID uuid) {
            jsonWriter.value(uuid == null ? null : uuid.toString());
        }
    };
    public static final TypeAdapterFactory UUID_FACTORY = newFactory(UUID.class, UUID);
    public static final TypeAdapter<Currency> CURRENCY = new TypeAdapter<Currency>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.25
        @Override // com.aotter.net.gson.TypeAdapter
        public Currency read(JsonReader jsonReader) {
            return Currency.getInstance(jsonReader.nextString());
        }

        public void write(JsonWriter jsonWriter, Currency currency) {
            jsonWriter.value(currency.getCurrencyCode());
        }
    }.nullSafe();
    public static final TypeAdapterFactory CURRENCY_FACTORY = newFactory(Currency.class, CURRENCY);
    public static final TypeAdapterFactory TIMESTAMP_FACTORY = new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.26
        @Override // com.aotter.net.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() != Timestamp.class) {
                return null;
            }
            final TypeAdapter<T> adapter = gson.getAdapter(Date.class);
            return (TypeAdapter<T>) new TypeAdapter<Timestamp>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.26.1
                @Override // com.aotter.net.gson.TypeAdapter
                public Timestamp read(JsonReader jsonReader) {
                    Date date = (Date) adapter.read(jsonReader);
                    return date != null ? new Timestamp(date.getTime()) : null;
                }

                public void write(JsonWriter jsonWriter, Timestamp timestamp) {
                    adapter.write(jsonWriter, timestamp);
                }
            };
        }
    };
    public static final TypeAdapter<Calendar> CALENDAR = new TypeAdapter<Calendar>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.27
        public static final String DAY_OF_MONTH = "dayOfMonth";
        public static final String HOUR_OF_DAY = "hourOfDay";
        public static final String MINUTE = "minute";
        public static final String MONTH = "month";
        public static final String SECOND = "second";
        public static final String YEAR = "year";

        @Override // com.aotter.net.gson.TypeAdapter
        public Calendar read(JsonReader jsonReader) {
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
                if (YEAR.equals(nextName)) {
                    i = nextInt;
                } else if (MONTH.equals(nextName)) {
                    i2 = nextInt;
                } else if (DAY_OF_MONTH.equals(nextName)) {
                    i3 = nextInt;
                } else if (HOUR_OF_DAY.equals(nextName)) {
                    i4 = nextInt;
                } else if (MINUTE.equals(nextName)) {
                    i5 = nextInt;
                } else if (SECOND.equals(nextName)) {
                    i6 = nextInt;
                }
            }
            jsonReader.endObject();
            return new GregorianCalendar(i, i2, i3, i4, i5, i6);
        }

        public void write(JsonWriter jsonWriter, Calendar calendar) {
            if (calendar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name(YEAR);
            jsonWriter.value(calendar.get(1));
            jsonWriter.name(MONTH);
            jsonWriter.value(calendar.get(2));
            jsonWriter.name(DAY_OF_MONTH);
            jsonWriter.value(calendar.get(5));
            jsonWriter.name(HOUR_OF_DAY);
            jsonWriter.value(calendar.get(11));
            jsonWriter.name(MINUTE);
            jsonWriter.value(calendar.get(12));
            jsonWriter.name(SECOND);
            jsonWriter.value(calendar.get(13));
            jsonWriter.endObject();
        }
    };
    public static final TypeAdapterFactory CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
    public static final TypeAdapter<Locale> LOCALE = new TypeAdapter<Locale>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.28
        /* JADX WARN: Type inference failed for: r0v3, types: [java.util.StringTokenizer, boolean] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.util.StringTokenizer, boolean] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.util.StringTokenizer, boolean] */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // com.aotter.net.gson.TypeAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.Locale read(com.aotter.net.gson.stream.JsonReader r6) {
            /*
                r5 = this;
                r0 = r6
                com.aotter.net.gson.stream.JsonToken r0 = r0.peek()
                r7 = r0
                com.aotter.net.gson.stream.JsonToken r0 = com.aotter.net.gson.stream.JsonToken.NULL
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r7
                r1 = r8
                if (r0 != r1) goto L_0x0017
                r0 = r6
                r0.nextNull()
                r0 = 0
                return r0
            L_0x0017:
                java.util.StringTokenizer r0 = new java.util.StringTokenizer
                r1 = r0
                r2 = r6
                java.lang.String r2 = r2.nextString()
                java.lang.String r3 = "_"
                r1.<init>(r2, r3)
                r8 = r0
                r0 = r8
                boolean r0 = r0.hasMoreElements()
                if (r0 == 0) goto L_0x0034
                r0 = r8
                java.lang.String r0 = r0.nextToken()
                r6 = r0
                goto L_0x0036
            L_0x0034:
                r0 = 0
                r6 = r0
            L_0x0036:
                r0 = r8
                boolean r0 = r0.hasMoreElements()
                if (r0 == 0) goto L_0x0045
                r0 = r8
                java.lang.String r0 = r0.nextToken()
                r7 = r0
                goto L_0x0047
            L_0x0045:
                r0 = 0
                r7 = r0
            L_0x0047:
                r0 = r8
                boolean r0 = r0.hasMoreElements()
                if (r0 == 0) goto L_0x0054
                r0 = r8
                java.lang.String r0 = r0.nextToken()
                r9 = r0
            L_0x0054:
                r0 = r7
                if (r0 != 0) goto L_0x0066
                r0 = r9
                if (r0 != 0) goto L_0x0066
                java.util.Locale r0 = new java.util.Locale
                r1 = r0
                r2 = r6
                r1.<init>(r2)
                return r0
            L_0x0066:
                java.util.Locale r0 = new java.util.Locale
                r8 = r0
                r0 = r9
                if (r0 != 0) goto L_0x0077
                r0 = r8
                r1 = r6
                r2 = r7
                r0.<init>(r1, r2)
                r0 = r8
                return r0
            L_0x0077:
                r0 = r8
                r1 = r6
                r2 = r7
                r3 = r9
                r0.<init>(r1, r2, r3)
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.internal.bind.TypeAdapters.C163928.read(com.aotter.net.gson.stream.JsonReader):java.util.Locale");
        }

        public void write(JsonWriter jsonWriter, Locale locale) {
            jsonWriter.value(locale == null ? null : locale.toString());
        }
    };
    public static final TypeAdapterFactory LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
    public static final TypeAdapter<JsonElement> JSON_ELEMENT = new TypeAdapter<JsonElement>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.29
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.aotter.net.gson.TypeAdapter
        public JsonElement read(JsonReader jsonReader) {
            switch (C164936.$SwitchMap$com$aotter$net$gson$stream$JsonToken[jsonReader.peek().ordinal()]) {
                case 1:
                    return new JsonPrimitive((Number) new LazilyParsedNumber(jsonReader.nextString()));
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

        public void write(JsonWriter jsonWriter, JsonElement jsonElement) {
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
                Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                while (it.hasNext()) {
                    write(jsonWriter, it.next());
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
    public static final TypeAdapterFactory JSON_ELEMENT_FACTORY = newTypeHierarchyFactory(JsonElement.class, JSON_ELEMENT);
    public static final TypeAdapterFactory ENUM_FACTORY = new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.30
        @Override // com.aotter.net.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> rawType = typeToken.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            Class<? super Object> cls = rawType;
            if (!rawType.isEnum()) {
                cls = rawType.getSuperclass();
            }
            return new EnumTypeAdapter(cls);
        }
    };

    /* renamed from: com.aotter.net.gson.internal.bind.TypeAdapters$36 */
    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TypeAdapters$36.class */
    public /* synthetic */ class C164936 {
        public static final /* synthetic */ int[] $SwitchMap$com$aotter$net$gson$stream$JsonToken = new int[JsonToken.values().length];

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
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$aotter$net$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TypeAdapters$EnumTypeAdapter.class */
    public final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {
        public final Map<String, T> nameToConstant = new HashMap();
        public final Map<T, String> constantToName = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            T[] enumConstants;
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        name = serializedName.value();
                        for (String str : serializedName.alternate()) {
                            this.nameToConstant.put(str, t);
                        }
                    }
                    this.nameToConstant.put(name, t);
                    this.constantToName.put(t, name);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.aotter.net.gson.TypeAdapter
        public T read(JsonReader jsonReader) {
            if (jsonReader.peek() != JsonToken.NULL) {
                return this.nameToConstant.get(jsonReader.nextString());
            }
            jsonReader.nextNull();
            return null;
        }

        public void write(JsonWriter jsonWriter, T t) {
            jsonWriter.value(t == null ? null : this.constantToName.get(t));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.aotter.net.gson.TypeAdapter
        public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) {
            write(jsonWriter, (JsonWriter) ((Enum) obj));
        }
    }

    public TypeAdapters() {
        throw new UnsupportedOperationException();
    }

    public static <TT> TypeAdapterFactory newFactory(final TypeToken<TT> typeToken, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.31
            @Override // com.aotter.net.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken2) {
                return typeToken2.equals(TypeToken.this) ? typeAdapter : null;
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.32
            @Override // com.aotter.net.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                return typeToken.getRawType() == cls ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactory(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.33
            @Override // com.aotter.net.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                return (rawType == cls || rawType == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.34
            @Override // com.aotter.net.gson.TypeAdapterFactory
            public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
                Class<? super T> rawType = typeToken.getRawType();
                return (rawType == cls || rawType == cls2) ? typeAdapter : null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <T1> TypeAdapterFactory newTypeHierarchyFactory(final Class<T1> cls, final TypeAdapter<T1> typeAdapter) {
        return new TypeAdapterFactory() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.35
            @Override // com.aotter.net.gson.TypeAdapterFactory
            public <T2> TypeAdapter<T2> create(Gson gson, TypeToken<T2> typeToken) {
                final Class<? super T2> rawType = typeToken.getRawType();
                if (!cls.isAssignableFrom(rawType)) {
                    return null;
                }
                return (TypeAdapter<T2>) new TypeAdapter<T1>() { // from class: com.aotter.net.gson.internal.bind.TypeAdapters.35.1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, T1] */
                    /* JADX WARN: Unknown variable types count: 1 */
                    @Override // com.aotter.net.gson.TypeAdapter
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public T1 read(com.aotter.net.gson.stream.JsonReader r5) {
                        /*
                            r4 = this;
                            r0 = r4
                            com.aotter.net.gson.internal.bind.TypeAdapters$35 r0 = com.aotter.net.gson.internal.bind.TypeAdapters.C164735.this
                            com.aotter.net.gson.TypeAdapter r0 = r5
                            r1 = r5
                            java.lang.Object r0 = r0.read(r1)
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x0058
                            r0 = r4
                            java.lang.Class r0 = r5
                            r1 = r5
                            boolean r0 = r0.isInstance(r1)
                            if (r0 == 0) goto L_0x001e
                            goto L_0x0058
                        L_0x001e:
                            java.lang.StringBuilder r0 = new java.lang.StringBuilder
                            r1 = r0
                            r1.<init>()
                            r6 = r0
                            r0 = r6
                            java.lang.String r1 = "Expected a "
                            java.lang.StringBuilder r0 = r0.append(r1)
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
                            com.aotter.net.gson.JsonSyntaxException r0 = new com.aotter.net.gson.JsonSyntaxException
                            r1 = r0
                            r2 = r6
                            java.lang.String r2 = r2.toString()
                            r1.<init>(r2)
                            throw r0
                        L_0x0058:
                            r0 = r5
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.internal.bind.TypeAdapters.C164735.C16481.read(com.aotter.net.gson.stream.JsonReader):java.lang.Object");
                    }

                    @Override // com.aotter.net.gson.TypeAdapter
                    public void write(JsonWriter jsonWriter, T1 t1) {
                        typeAdapter.write(jsonWriter, t1);
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
