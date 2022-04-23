package com.google.gson;

import com.google.gson.internal.bind.JsonAdapterAnnotationTypeAdapterFactory;
import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.internal.bind.b;
import com.google.gson.internal.bind.e;
import com.google.gson.internal.bind.g;
import com.google.gson.internal.bind.h;
import com.google.gson.internal.bind.j;
import com.google.gson.internal.c;
import com.google.gson.internal.d;
import com.google.gson.internal.k;
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
/* loaded from: classes4-dex2jar.jar:com/google/gson/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.gson.a.a<?> f32669a = com.google.gson.a.a.get(Object.class);

    /* renamed from: b  reason: collision with root package name */
    public final ThreadLocal<Map<com.google.gson.a.a<?>, a<?>>> f32670b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<com.google.gson.a.a<?>, j<?>> f32671c;

    /* renamed from: d  reason: collision with root package name */
    public final c f32672d;
    public final JsonAdapterAnnotationTypeAdapterFactory e;
    public final List<k> f;
    public final d g;
    public final e h;
    public final Map<Type, h<?>> i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final String q;
    public final int r;
    public final int s;
    public final i t;
    public final List<k> u;
    public final List<k> v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/f$a.class */
    public static final class a<T> extends j<T> {

        /* renamed from: a  reason: collision with root package name */
        j<T> f32677a;

        a() {
        }

        @Override // com.google.gson.j
        public final T read(JsonReader jsonReader) throws IOException {
            j<T> jVar = this.f32677a;
            if (jVar != null) {
                return jVar.read(jsonReader);
            }
            throw new IllegalStateException();
        }

        @Override // com.google.gson.j
        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            j<T> jVar = this.f32677a;
            if (jVar != null) {
                jVar.write(jsonWriter, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public f() {
        this(d.f32784a, d.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, i.DEFAULT, null, 2, 2, Collections.emptyList(), Collections.emptyList(), Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, e eVar, Map<Type, h<?>> map, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, i iVar, String str, int i, int i2, List<k> list, List<k> list2, List<k> list3) {
        ArrayList arrayList = new ArrayList(list3);
        arrayList.add(new proguard.optimize.gson.c());
        this.f32670b = new ThreadLocal<>();
        this.f32671c = new ConcurrentHashMap();
        this.g = dVar;
        this.h = eVar;
        this.i = map;
        c cVar = new c(map);
        this.f32672d = cVar;
        this.j = z;
        this.k = z2;
        this.l = z3;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = z7;
        this.t = iVar;
        this.q = str;
        this.r = i;
        this.s = i2;
        this.u = list;
        this.v = list2;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(j.Y);
        arrayList2.add(e.f32716a);
        arrayList2.add(dVar);
        arrayList2.addAll(arrayList);
        arrayList2.add(j.D);
        arrayList2.add(j.m);
        arrayList2.add(j.g);
        arrayList2.add(j.i);
        arrayList2.add(j.k);
        final j<Number> jVar = iVar == i.DEFAULT ? j.t : new j<Number>() { // from class: com.google.gson.f.3
            @Override // com.google.gson.j
            public final /* synthetic */ Number read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return Long.valueOf(jsonReader.nextLong());
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, Number number) throws IOException {
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                } else {
                    jsonWriter.value(number2.toString());
                }
            }
        };
        arrayList2.add(j.a(Long.TYPE, Long.class, jVar));
        arrayList2.add(j.a(Double.TYPE, Double.class, z7 ? j.v : new j<Number>() { // from class: com.google.gson.f.1
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
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                f.a(number2.doubleValue());
                jsonWriter.value(number2);
            }
        }));
        arrayList2.add(j.a(Float.TYPE, Float.class, z7 ? j.u : new j<Number>() { // from class: com.google.gson.f.2
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
                Number number2 = number;
                if (number2 == null) {
                    jsonWriter.nullValue();
                    return;
                }
                f.a(number2.floatValue());
                jsonWriter.value(number2);
            }
        }));
        arrayList2.add(j.x);
        arrayList2.add(j.o);
        arrayList2.add(j.q);
        arrayList2.add(j.a(AtomicLong.class, new j<AtomicLong>() { // from class: com.google.gson.f.4
            @Override // com.google.gson.j
            public final /* synthetic */ AtomicLong read(JsonReader jsonReader) throws IOException {
                return new AtomicLong(((Number) j.this.read(jsonReader)).longValue());
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
                j.this.write(jsonWriter, Long.valueOf(atomicLong.get()));
            }
        }.nullSafe()));
        arrayList2.add(j.a(AtomicLongArray.class, new j<AtomicLongArray>() { // from class: com.google.gson.f.5
            @Override // com.google.gson.j
            public final /* synthetic */ AtomicLongArray read(JsonReader jsonReader) throws IOException {
                ArrayList arrayList3 = new ArrayList();
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    arrayList3.add(Long.valueOf(((Number) j.this.read(jsonReader)).longValue()));
                }
                jsonReader.endArray();
                int size = arrayList3.size();
                AtomicLongArray atomicLongArray = new AtomicLongArray(size);
                for (int i3 = 0; i3 < size; i3++) {
                    atomicLongArray.set(i3, ((Long) arrayList3.get(i3)).longValue());
                }
                return atomicLongArray;
            }

            @Override // com.google.gson.j
            public final /* synthetic */ void write(JsonWriter jsonWriter, AtomicLongArray atomicLongArray) throws IOException {
                AtomicLongArray atomicLongArray2 = atomicLongArray;
                jsonWriter.beginArray();
                int length = atomicLongArray2.length();
                for (int i3 = 0; i3 < length; i3++) {
                    j.this.write(jsonWriter, Long.valueOf(atomicLongArray2.get(i3)));
                }
                jsonWriter.endArray();
            }
        }.nullSafe()));
        arrayList2.add(j.s);
        arrayList2.add(j.z);
        arrayList2.add(j.F);
        arrayList2.add(j.H);
        arrayList2.add(j.a(BigDecimal.class, j.B));
        arrayList2.add(j.a(BigInteger.class, j.C));
        arrayList2.add(j.J);
        arrayList2.add(j.L);
        arrayList2.add(j.P);
        arrayList2.add(j.R);
        arrayList2.add(j.W);
        arrayList2.add(j.N);
        arrayList2.add(j.f32739d);
        arrayList2.add(com.google.gson.internal.bind.c.f32708a);
        arrayList2.add(j.U);
        arrayList2.add(h.f32731a);
        arrayList2.add(g.f32729a);
        arrayList2.add(j.S);
        arrayList2.add(com.google.gson.internal.bind.a.f32701a);
        arrayList2.add(j.f32737b);
        arrayList2.add(new b(cVar));
        arrayList2.add(new com.google.gson.internal.bind.d(cVar, z2));
        JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory = new JsonAdapterAnnotationTypeAdapterFactory(cVar);
        this.e = jsonAdapterAnnotationTypeAdapterFactory;
        arrayList2.add(jsonAdapterAnnotationTypeAdapterFactory);
        arrayList2.add(j.Z);
        arrayList2.add(new com.google.gson.internal.bind.f(cVar, eVar, dVar, jsonAdapterAnnotationTypeAdapterFactory));
        this.f = Collections.unmodifiableList(arrayList2);
    }

    private <T> T a(Reader reader, Type type) throws JsonIOException, JsonSyntaxException {
        JsonReader a2 = a(reader);
        T t = (T) a(a2, type);
        a(t, a2);
        return t;
    }

    private <T> T a(String str, Type type) throws JsonSyntaxException {
        if (str == null) {
            return null;
        }
        return (T) a((Reader) new StringReader(str), type);
    }

    private String a(JsonElement jsonElement) {
        StringWriter stringWriter = new StringWriter();
        a(jsonElement, (Appendable) stringWriter);
        return stringWriter.toString();
    }

    static void a(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    private void a(JsonElement jsonElement, JsonWriter jsonWriter) throws JsonIOException {
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.m);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.j);
        try {
            try {
                k.a(jsonElement, jsonWriter);
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

    private void a(JsonElement jsonElement, Appendable appendable) throws JsonIOException {
        try {
            a(jsonElement, a(k.a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    public static void a(Object obj, JsonReader jsonReader) {
        if (obj != null) {
            try {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new JsonIOException("JSON document was not fully consumed.");
                }
            } catch (MalformedJsonException e) {
                throw new JsonSyntaxException(e);
            } catch (IOException e2) {
                throw new JsonIOException(e2);
            }
        }
    }

    private void a(Object obj, Type type, JsonWriter jsonWriter) throws JsonIOException {
        j a2 = a((com.google.gson.a.a) com.google.gson.a.a.get(type));
        boolean isLenient = jsonWriter.isLenient();
        jsonWriter.setLenient(true);
        boolean isHtmlSafe = jsonWriter.isHtmlSafe();
        jsonWriter.setHtmlSafe(this.m);
        boolean serializeNulls = jsonWriter.getSerializeNulls();
        jsonWriter.setSerializeNulls(this.j);
        try {
            try {
                a2.write(jsonWriter, obj);
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

    private void a(Object obj, Type type, Appendable appendable) throws JsonIOException {
        try {
            a(obj, type, a(k.a(appendable)));
        } catch (IOException e) {
            throw new JsonIOException(e);
        }
    }

    private String b(Object obj, Type type) {
        StringWriter stringWriter = new StringWriter();
        a(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public final JsonElement a(Object obj) {
        return obj == null ? JsonNull.INSTANCE : a(obj, obj.getClass());
    }

    public final JsonElement a(Object obj, Type type) {
        JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
        a(obj, type, jsonTreeWriter);
        return jsonTreeWriter.get();
    }

    public final <T> j<T> a(com.google.gson.a.a<T> aVar) {
        j<T> create;
        j<T> jVar = (j<T>) this.f32671c.get(aVar == null ? f32669a : aVar);
        if (jVar != null) {
            return jVar;
        }
        Map<com.google.gson.a.a<?>, a<?>> map = this.f32670b.get();
        boolean z = false;
        Map<com.google.gson.a.a<?>, a<?>> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f32670b.set(map2);
            z = true;
        }
        a<?> aVar2 = map2.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map2.put(aVar, aVar3);
            Iterator<k> it2 = this.f.iterator();
            do {
                if (it2.hasNext()) {
                    create = it2.next().create(this, aVar);
                } else {
                    throw new IllegalArgumentException("GSON (2.8.6) cannot handle ".concat(String.valueOf(aVar)));
                }
            } while (create == null);
            if (aVar3.f32677a == null) {
                aVar3.f32677a = create;
                this.f32671c.put(aVar, create);
                return create;
            }
            throw new AssertionError();
        } finally {
            map2.remove(aVar);
            if (z) {
                this.f32670b.remove();
            }
        }
    }

    public final <T> j<T> a(k kVar, com.google.gson.a.a<T> aVar) {
        k kVar2 = kVar;
        if (!this.f.contains(kVar)) {
            kVar2 = this.e;
        }
        boolean z = false;
        for (k kVar3 : this.f) {
            if (z) {
                j<T> create = kVar3.create(this, aVar);
                if (create != null) {
                    return create;
                }
            } else if (kVar3 == kVar2) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize ".concat(String.valueOf(aVar)));
    }

    public final <T> j<T> a(Class<T> cls) {
        return a((com.google.gson.a.a) com.google.gson.a.a.get((Class) cls));
    }

    public final JsonReader a(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        jsonReader.setLenient(this.o);
        return jsonReader;
    }

    public final JsonWriter a(Writer writer) throws IOException {
        if (this.l) {
            writer.write(")]}'\n");
        }
        JsonWriter jsonWriter = new JsonWriter(writer);
        if (this.n) {
            jsonWriter.setIndent("  ");
        }
        jsonWriter.setSerializeNulls(this.j);
        return jsonWriter;
    }

    public final <T> T a(JsonElement jsonElement, Type type) throws JsonSyntaxException {
        if (jsonElement == null) {
            return null;
        }
        return (T) a((JsonReader) new JsonTreeReader(jsonElement), type);
    }

    public final <T> T a(JsonReader jsonReader, Type type) throws JsonIOException, JsonSyntaxException {
        boolean isLenient = jsonReader.isLenient();
        boolean z = true;
        jsonReader.setLenient(true);
        try {
            try {
                try {
                    try {
                        jsonReader.peek();
                        z = false;
                        T read = a((com.google.gson.a.a) com.google.gson.a.a.get(type)).read(jsonReader);
                        jsonReader.setLenient(isLenient);
                        return read;
                    } catch (IOException e) {
                        throw new JsonSyntaxException(e);
                    }
                } catch (IllegalStateException e2) {
                    throw new JsonSyntaxException(e2);
                }
            } catch (EOFException e3) {
                if (z) {
                    jsonReader.setLenient(isLenient);
                    return null;
                }
                throw new JsonSyntaxException(e3);
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

    public final <T> T a(String str, Class<T> cls) throws JsonSyntaxException {
        return (T) com.google.gson.internal.j.a(cls).cast(a(str, (Type) cls));
    }

    public final void a(Object obj, Appendable appendable) throws JsonIOException {
        if (obj != null) {
            a(obj, obj.getClass(), appendable);
        } else {
            a((JsonElement) JsonNull.INSTANCE, appendable);
        }
    }

    public final String b(Object obj) {
        return obj == null ? a((JsonElement) JsonNull.INSTANCE) : b(obj, obj.getClass());
    }

    public String toString() {
        return "{serializeNulls:" + this.j + ",factories:" + this.f + ",instanceCreators:" + this.f32672d + "}";
    }
}
