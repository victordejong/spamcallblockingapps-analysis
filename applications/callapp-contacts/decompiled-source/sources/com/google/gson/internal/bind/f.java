package com.google.gson.internal.bind;

import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.e;
import com.google.gson.internal.c;
import com.google.gson.internal.d;
import com.google.gson.internal.h;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f.class */
public final class f implements k {

    /* renamed from: a  reason: collision with root package name */
    private final c f32719a;

    /* renamed from: b  reason: collision with root package name */
    private final e f32720b;

    /* renamed from: c  reason: collision with root package name */
    private final d f32721c;

    /* renamed from: d  reason: collision with root package name */
    private final JsonAdapterAnnotationTypeAdapterFactory f32722d;
    private final com.google.gson.internal.a.b e = com.google.gson.internal.a.b.a();

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f$a.class */
    public static final class a<T> extends j<T> {

        /* renamed from: a  reason: collision with root package name */
        private final h<T> f32727a;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, b> f32728b;

        a(h<T> hVar, Map<String, b> map) {
            this.f32727a = hVar;
            this.f32728b = map;
        }

        @Override // com.google.gson.j
        public final T read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            T a2 = this.f32727a.a();
            try {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    b bVar = this.f32728b.get(jsonReader.nextName());
                    if (bVar != null && bVar.j) {
                        bVar.a(jsonReader, a2);
                    }
                    jsonReader.skipValue();
                }
                jsonReader.endObject();
                return a2;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new JsonSyntaxException(e2);
            }
        }

        @Override // com.google.gson.j
        public final void write(JsonWriter jsonWriter, T t) throws IOException {
            if (t == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            try {
                for (b bVar : this.f32728b.values()) {
                    if (bVar.a(t)) {
                        jsonWriter.name(bVar.h);
                        bVar.a(jsonWriter, t);
                    }
                }
                jsonWriter.endObject();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/f$b.class */
    public static abstract class b {
        final String h;
        final boolean i;
        final boolean j;

        protected b(String str, boolean z, boolean z2) {
            this.h = str;
            this.i = z;
            this.j = z2;
        }

        abstract void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException;

        abstract void a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException;

        abstract boolean a(Object obj) throws IOException, IllegalAccessException;
    }

    public f(c cVar, e eVar, d dVar, JsonAdapterAnnotationTypeAdapterFactory jsonAdapterAnnotationTypeAdapterFactory) {
        this.f32719a = cVar;
        this.f32720b = eVar;
        this.f32721c = dVar;
        this.f32722d = jsonAdapterAnnotationTypeAdapterFactory;
    }

    private List<String> a(Field field) {
        com.google.gson.annotations.b bVar = (com.google.gson.annotations.b) field.getAnnotation(com.google.gson.annotations.b.class);
        if (bVar == null) {
            return Collections.singletonList(this.f32720b.translateName(field));
        }
        String a2 = bVar.a();
        String[] b2 = bVar.b();
        if (b2.length == 0) {
            return Collections.singletonList(a2);
        }
        ArrayList arrayList = new ArrayList(b2.length + 1);
        arrayList.add(a2);
        for (String str : b2) {
            arrayList.add(str);
        }
        return arrayList;
    }

    private Map<String, b> a(final com.google.gson.f fVar, com.google.gson.a.a<?> aVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type type = aVar.getType();
        while (cls != Object.class) {
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int i = 0;
            Field[] fieldArr = declaredFields;
            while (i < length) {
                final Field field = fieldArr[i];
                boolean a2 = a(field, true);
                boolean a3 = a(field, false);
                if (a2 || a3) {
                    this.e.a(field);
                    Type a4 = com.google.gson.internal.b.a(aVar.getType(), cls, field.getGenericType());
                    List<String> a5 = a(field);
                    int size = a5.size();
                    b bVar = null;
                    for (int i2 = 0; i2 < size; i2++) {
                        String str = a5.get(i2);
                        if (i2 != 0) {
                            a2 = false;
                        }
                        final com.google.gson.a.a<?> aVar2 = com.google.gson.a.a.get(a4);
                        Class<? super Object> rawType = aVar2.getRawType();
                        final boolean z = (rawType instanceof Class) && rawType.isPrimitive();
                        JsonAdapter jsonAdapter = (JsonAdapter) field.getAnnotation(JsonAdapter.class);
                        j<?> typeAdapter = jsonAdapter != null ? this.f32722d.getTypeAdapter(this.f32719a, fVar, aVar2, jsonAdapter) : null;
                        final boolean z2 = typeAdapter != null;
                        final j<?> jVar = typeAdapter;
                        if (typeAdapter == null) {
                            jVar = fVar.a((com.google.gson.a.a) aVar2);
                        }
                        bVar = (b) linkedHashMap.put(str, new b(str, a2, a3) { // from class: com.google.gson.internal.bind.f.1
                            @Override // com.google.gson.internal.bind.f.b
                            final void a(JsonReader jsonReader, Object obj) throws IOException, IllegalAccessException {
                                Object read = jVar.read(jsonReader);
                                if (read != null || !z) {
                                    field.set(obj, read);
                                }
                            }

                            @Override // com.google.gson.internal.bind.f.b
                            final void a(JsonWriter jsonWriter, Object obj) throws IOException, IllegalAccessException {
                                (z2 ? jVar : new i(fVar, jVar, aVar2.getType())).write(jsonWriter, field.get(obj));
                            }

                            @Override // com.google.gson.internal.bind.f.b
                            public final boolean a(Object obj) throws IOException, IllegalAccessException {
                                return this.i && field.get(obj) != obj;
                            }
                        });
                        bVar = bVar;
                        if (bVar == null) {
                        }
                    }
                    cls = cls;
                    type = type;
                    if (bVar == null) {
                        fieldArr = fieldArr;
                    } else {
                        throw new IllegalArgumentException(type + " declares multiple JSON fields named " + bVar.h);
                    }
                } else {
                    type = type;
                    fieldArr = fieldArr;
                    cls = cls;
                }
                i++;
                aVar = aVar;
            }
            com.google.gson.a.a<?> aVar3 = com.google.gson.a.a.get(com.google.gson.internal.b.a(aVar.getType(), cls, cls.getGenericSuperclass()));
            cls = aVar3.getRawType();
            type = type;
            aVar = aVar3;
        }
        return linkedHashMap;
    }

    private boolean a(Field field, boolean z) {
        boolean z2;
        com.google.gson.annotations.a aVar;
        d dVar = this.f32721c;
        if (dVar.a(field.getType()) || dVar.a(z)) {
            return false;
        }
        if ((dVar.f32786c & field.getModifiers()) != 0 || (!(dVar.f32785b == -1.0d || dVar.a((com.google.gson.annotations.c) field.getAnnotation(com.google.gson.annotations.c.class), (com.google.gson.annotations.d) field.getAnnotation(com.google.gson.annotations.d.class))) || field.isSynthetic() || ((dVar.e && ((aVar = (com.google.gson.annotations.a) field.getAnnotation(com.google.gson.annotations.a.class)) == null || (!z ? !aVar.b() : !aVar.a()))) || ((!dVar.f32787d && d.c(field.getType())) || d.b(field.getType()))))) {
            z2 = true;
            break;
        }
        List<com.google.gson.b> list = z ? dVar.f : dVar.g;
        if (!list.isEmpty()) {
            new com.google.gson.c(field);
            for (com.google.gson.b bVar : list) {
                if (bVar.a()) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        return !z2;
    }

    @Override // com.google.gson.k
    public final <T> j<T> create(com.google.gson.f fVar, com.google.gson.a.a<T> aVar) {
        Class<? super T> rawType = aVar.getRawType();
        if (!Object.class.isAssignableFrom(rawType)) {
            return null;
        }
        return new a(this.f32719a.a(aVar), a(fVar, aVar, rawType));
    }
}
