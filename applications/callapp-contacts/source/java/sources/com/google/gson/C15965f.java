package com.google.gson;

import com.google.gson.internal.C16050c;
import com.google.gson.internal.C16065d;
import com.google.gson.internal.C16079j;
import com.google.gson.internal.C16080k;
import com.google.gson.internal.bind.C15989a;
import com.google.gson.internal.bind.C15992b;
import com.google.gson.internal.bind.C15994c;
import com.google.gson.internal.bind.C15996d;
import com.google.gson.internal.bind.C15998e;
import com.google.gson.internal.bind.C16001f;
import com.google.gson.internal.bind.C16005g;
import com.google.gson.internal.bind.C16007h;
import com.google.gson.internal.bind.C16010j;
import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
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
import proguard.optimize.gson.C21027c;
/* renamed from: com.google.gson.f */
/* loaded from: classes4-dex2jar.jar:com/google/gson/f.class */
public class C15965f {

    /* renamed from: a */
    public static final C15950a<?> f56595a = C15950a.get(Object.class);

    /* renamed from: b */
    public final ThreadLocal<Map<C15950a<?>, C15971a<?>>> f56596b;

    /* renamed from: c */
    public final Map<C15950a<?>, AbstractC16088j<?>> f56597c;

    /* renamed from: d */
    public final C16050c f56598d;

    /* renamed from: e */
    public final JsonAdapterAnnotationTypeAdapterFactory f56599e;

    /* renamed from: f */
    public final List<AbstractC16090k> f56600f;

    /* renamed from: g */
    public final C16065d f56601g;

    /* renamed from: h */
    public final AbstractC15964e f56602h;

    /* renamed from: i */
    public final Map<Type, AbstractC15973h<?>> f56603i;

    /* renamed from: j */
    public final boolean f56604j;

    /* renamed from: k */
    public final boolean f56605k;

    /* renamed from: l */
    public final boolean f56606l;

    /* renamed from: m */
    public final boolean f56607m;

    /* renamed from: n */
    public final boolean f56608n;

    /* renamed from: o */
    public final boolean f56609o;

    /* renamed from: p */
    public final boolean f56610p;

    /* renamed from: q */
    public final String f56611q;

    /* renamed from: r */
    public final int f56612r;

    /* renamed from: s */
    public final int f56613s;

    /* renamed from: t */
    public final EnumC15974i f56614t;

    /* renamed from: u */
    public final List<AbstractC16090k> f56615u;

    /* renamed from: v */
    public final List<AbstractC16090k> f56616v;

    /* renamed from: com.google.gson.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/f$a.class */
    public static final class C15971a<T> extends AbstractC16088j<T> {

        /* renamed from: a */
        AbstractC16088j<T> f56621a;

        C15971a() {
        }

        @Override // com.google.gson.AbstractC16088j
        public final T read(JsonReader jsonReader) throws IOException {
            AbstractC16088j<T> abstractC16088j = this.f56621a;
            if (abstractC16088j != null) {
                return abstractC16088j.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.AbstractC16088j
        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            AbstractC16088j<T> abstractC16088j = this.f56621a;
            if (abstractC16088j != null) {
                abstractC16088j.write(jsonWriter, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public C15965f() {
        this(C16065d.f56799a, EnumC15957d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, EnumC15974i.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    public C15965f(C16065d c16065d, AbstractC15964e abstractC15964e, Map<Type, AbstractC15973h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, EnumC15974i enumC15974i, String str, int i, int i2, List<AbstractC16090k> list, List<AbstractC16090k> list2, List<AbstractC16090k> list3) {
        ArrayList arrayList = new ArrayList(list3);
        arrayList.add(new C21027c());
        this.f56596b = new ThreadLocal<>();
        this.f56597c = new ConcurrentHashMap();
        this.f56601g = c16065d;
        this.f56602h = abstractC15964e;
        this.f56603i = map;
        C16050c c16050c = new C16050c(map);
        this.f56598d = c16050c;
        this.f56604j = z;
        this.f56605k = z2;
        this.f56606l = z3;
        this.f56607m = z4;
        this.f56608n = z5;
        this.f56609o = z6;
        this.f56610p = z7;
        this.f56614t = enumC15974i;
        this.f56611q = str;
        this.f56612r = i;
        this.f56613s = i2;
        this.f56615u = list;
        this.f56616v = list2;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(C16010j.f56727Y);
        arrayList2.add(C15998e.f56676a);
        arrayList2.add(c16065d);
        arrayList2.addAll(arrayList);
        arrayList2.add(C16010j.f56706D);
        arrayList2.add(C16010j.f56741m);
        arrayList2.add(C16010j.f56735g);
        arrayList2.add(C16010j.f56737i);
        arrayList2.add(C16010j.f56739k);
        AbstractC16088j<Number> abstractC16088j = enumC15974i == EnumC15974i.DEFAULT ? C16010j.f56748t : new AbstractC16088j<Number>() { // from class: com.google.gson.f.3
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                    return null;
                }
                return Long.valueOf(jsonReader.nextLong());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.toString());
                }
            }
        };
        arrayList2.add(C16010j.m7914a(Long.TYPE, Long.class, abstractC16088j));
        arrayList2.add(C16010j.m7914a(Double.TYPE, Double.class, z7 ? C16010j.f56750v : new AbstractC16088j<Number>() { // from class: com.google.gson.f.1
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
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                C15965f.m7982a(number2.doubleValue());
                jsonWriter.value(number2);
            }
        }));
        arrayList2.add(C16010j.m7914a(Float.TYPE, Float.class, z7 ? C16010j.f56749u : new AbstractC16088j<Number>() { // from class: com.google.gson.f.2
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
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                C15965f.m7982a(number2.floatValue());
                jsonWriter.value(number2);
            }
        }));
        arrayList2.add(C16010j.f56752x);
        arrayList2.add(C16010j.f56743o);
        arrayList2.add(C16010j.f56745q);
        final AbstractC16088j<Number> abstractC16088j2 = abstractC16088j;
        arrayList2.add(C16010j.m7915a(AtomicLong.class, new AbstractC16088j<AtomicLong>() { // from class: com.google.gson.f.4
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ AtomicLong read(JsonReader jsonReader) throws IOException {
                return new AtomicLong(((Number) abstractC16088j2.read(jsonReader)).longValue());
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
                abstractC16088j2.write(jsonWriter, Long.valueOf(atomicLong.get()));
            }
        }.nullSafe()));
        final AbstractC16088j<Number> abstractC16088j3 = abstractC16088j;
        arrayList2.add(C16010j.m7915a(AtomicLongArray.class, new AbstractC16088j<AtomicLongArray>() { // from class: com.google.gson.f.5
            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ AtomicLongArray read(JsonReader jsonReader) throws IOException {
                ArrayList arrayList3 = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList3.add(Long.valueOf(((Number) abstractC16088j3.read(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                int size = arrayList3.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList3.get(i3)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.AbstractC16088j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                jsonWriter.beginArray();
                int length = atomicLongArray2.length();
                for (int i3 = 0; i3 < length; i3++) {
                    abstractC16088j3.write(jsonWriter, Long.valueOf(atomicLongArray2.get(i3)));
                }
                jsonWriter.endArray();
            }
        }.nullSafe()));
        arrayList2.add(C16010j.f56747s);
        arrayList2.add(C16010j.f56754z);
        arrayList2.add(C16010j.f56708F);
        arrayList2.add(C16010j.f56710H);
        arrayList2.add(C16010j.m7915a(BigDecimal.class, C16010j.f56704B));
        arrayList2.add(C16010j.m7915a(BigInteger.class, C16010j.f56705C));
        arrayList2.add(C16010j.f56712J);
        arrayList2.add(C16010j.f56714L);
        arrayList2.add(C16010j.f56718P);
        arrayList2.add(C16010j.f56720R);
        arrayList2.add(C16010j.f56725W);
        arrayList2.add(C16010j.f56716N);
        arrayList2.add(C16010j.f56732d);
        arrayList2.add(C15994c.f56668a);
        arrayList2.add(C16010j.f56723U);
        arrayList2.add(C16007h.f56698a);
        arrayList2.add(C16005g.f56696a);
        arrayList2.add(C16010j.f56721S);
        arrayList2.add(C15989a.f56661a);
        arrayList2.add(C16010j.f56730b);
        arrayList2.add(new C15992b(c16050c));
        arrayList2.add(new C15996d(c16050c, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(c16050c);
        this.f56599e = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList2.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList2.add(C16010j.f56728Z);
        arrayList2.add(new C16001f(c16050c, abstractC15964e, c16065d, jsonAdapterAnnotationTypeAdapterFactory));
        this.f56600f = Collections.unmodifiableList(arrayList2);
    }

    /* renamed from: a */
    private <T> T m7973a(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        JsonReader m7974a = m7974a(reader);
        T t = (T) m7975a(m7974a, type);
        m7969a(t, m7974a);
        return t;
    }

    /* renamed from: a */
    private <T> T m7963a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) m7973a((Reader) new StringReader(str), type);
    }

    /* renamed from: a */
    private String m7981a(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        m7979a(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    static void m7982a(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException(d + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    /* renamed from: a */
    private void m7980a(JsonElement jsonElement, JsonWriter jsonWriter) throws JsonIOException {
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f56607m);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f56604j);
        try {
            try {
                C16080k.m7869a(jsonElement, jsonWriter);
                jsonWriter.setLenient(isLenient);
                jsonWriter.setHtmlSafe(isHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    /* renamed from: a */
    private void m7979a(JsonElement jsonElement, Appendable appendable) throws JsonIOException {
        try {
            m7980a(jsonElement, m7972a(C16080k.m7867a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: a */
    public static void m7969a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() == JsonToken.END_DOCUMENT) {
                    return;
                }
                throw new JsonIOException("JSON document was not fully consumed.");
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    /* renamed from: a */
    private void m7966a(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        AbstractC16088j m7977a = m7977a((C15950a) C15950a.get(type));
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.f56607m);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.f56604j);
        try {
            try {
                m7977a.write(jsonWriter, obj);
                jsonWriter.setLenient(isLenient);
                jsonWriter.setHtmlSafe(isHtmlSafe);
                jsonWriter.setSerializeNulls(serializeNulls);
            } catch (IOException e) {
                throw new JsonIOException(e);
            } catch (AssertionError e2) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e2.getMessage());
                assertionError.initCause(e2);
                throw assertionError;
            }
        } catch (Throwable th) {
            jsonWriter.setLenient(isLenient);
            jsonWriter.setHtmlSafe(isHtmlSafe);
            jsonWriter.setSerializeNulls(serializeNulls);
            throw th;
        }
    }

    /* renamed from: a */
    private void m7965a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            m7966a(obj, type, m7972a(C16080k.m7867a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    /* renamed from: b */
    private String m7961b(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        m7965a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    /* renamed from: a */
    public final JsonElement m7970a(Object obj) {
        return obj == null ? JsonNull.INSTANCE : m7967a(obj, obj.getClass());
    }

    /* renamed from: a */
    public final JsonElement m7967a(Object obj, Type type) {
        JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
        m7966a(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.google.gson.a.a<?>] */
    /* renamed from: a */
    public final <T> AbstractC16088j<T> m7977a(C15950a<T> c15950a) {
        AbstractC16088j<T> create;
        AbstractC16088j<T> abstractC16088j = (AbstractC16088j<T>) this.f56597c.get(c15950a == null ? f56595a : c15950a);
        if (abstractC16088j != null) {
            return abstractC16088j;
        }
        Map<C15950a<?>, C15971a<?>> map = this.f56596b.get();
        boolean z = false;
        HashMap hashMap = map;
        if (map == null) {
            HashMap hashMap2 = new HashMap();
            this.f56596b.set(hashMap2);
            z = true;
            hashMap = hashMap2;
        }
        C15971a<?> c15971a = hashMap.get(c15950a);
        if (c15971a != null) {
            return c15971a;
        }
        try {
            C15971a<?> c15971a2 = new C15971a<>();
            hashMap.put(c15950a, c15971a2);
            Iterator<AbstractC16090k> it2 = this.f56600f.iterator();
            do {
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("GSON (2.8.6) cannot handle ".concat(String.valueOf(c15950a)));
                }
                create = it2.next().create(this, c15950a);
            } while (create == null);
            if (c15971a2.f56621a != null) {
                throw new AssertionError();
            }
            c15971a2.f56621a = create;
            this.f56597c.put(c15950a, create);
            hashMap.remove(c15950a);
            if (z) {
                this.f56596b.remove();
            }
            return create;
        } catch (Throwable th) {
            hashMap.remove(c15950a);
            if (z) {
                this.f56596b.remove();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC16088j<T> m7976a(AbstractC16090k abstractC16090k, C15950a<T> c15950a) {
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = abstractC16090k;
        if (!this.f56600f.contains(abstractC16090k)) {
            jsonAdapterAnnotationTypeAdapterFactory = this.f56599e;
        }
        boolean z = false;
        for (AbstractC16090k abstractC16090k2 : this.f56600f) {
            if (z) {
                AbstractC16088j<T> create = abstractC16090k2.create(this, c15950a);
                if (create != null) {
                    return create;
                }
            } else if (abstractC16090k2 == jsonAdapterAnnotationTypeAdapterFactory) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(c15950a)));
    }

    /* renamed from: a */
    public final <T> AbstractC16088j<T> m7971a(Class<T> cls) {
        return m7977a((C15950a) C15950a.get((Class) cls));
    }

    /* renamed from: a */
    public final JsonReader m7974a(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(this.f56609o);
        return jsonReader;
    }

    /* renamed from: a */
    public final JsonWriter m7972a(Writer writer) throws IOException {
        if (this.f56606l) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.f56608n) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.f56604j);
        return jsonWriter;
    }

    /* renamed from: a */
    public final <T> T m7978a(JsonElement jsonElement, Type type) throws JsonSyntaxException {
        if (jsonElement == null) {
            return null;
        }
        return (T) m7975a((JsonReader) new JsonTreeReader(jsonElement), type);
    }

    /* renamed from: a */
    public final <T> T m7975a(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean isLenient = jsonReader.isLenient();
        boolean z = true;
        jsonReader.setLenient(true);
        try {
            try {
                try {
                    try {
                        jsonReader.peek();
                        z = false;
                        T read = m7977a((C15950a) C15950a.get(type)).read(jsonReader);
                        jsonReader.setLenient(isLenient);
                        return read;
                    } catch (IOException e) {
                        throw new JsonSyntaxException(e);
                    }
                } catch (IllegalStateException e2) {
                    throw new JsonSyntaxException(e2);
                }
            } catch (EOFException e3) {
                if (!z) {
                    throw new JsonSyntaxException(e3);
                }
                jsonReader.setLenient(isLenient);
                return null;
            } catch (AssertionError e4) {
                AssertionError assertionError = new AssertionError("AssertionError (GSON 2.8.6): " + e4.getMessage());
                assertionError.initCause(e4);
                throw assertionError;
            }
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
            throw th;
        }
    }

    /* renamed from: a */
    public final <T> T m7964a(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) C16079j.m7870a(cls).cast(m7963a(str, (Type) cls));
    }

    /* renamed from: a */
    public final void m7968a(Object obj, Appendable appendable) throws JsonIOException {
        if (obj != null) {
            m7965a(obj, obj.getClass(), appendable);
        } else {
            m7979a((JsonElement) JsonNull.INSTANCE, appendable);
        }
    }

    /* renamed from: b */
    public final String m7962b(Object obj) {
        return obj == null ? m7981a((JsonElement) JsonNull.INSTANCE) : m7961b(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.f56604j + ",factories:" + this.f56600f + ",instanceCreators:" + this.f56598d + "}";
    }
}
