package com.google.gson.internal.bind;

import com.google.gson.f;
import com.google.gson.internal.b;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/a.class */
public final class a<E> extends j<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final k f32701a = new k() { // from class: com.google.gson.internal.bind.a.1
        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
            Type type = aVar.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type d2 = b.d(type);
            return new a(fVar, fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(d2)), b.b(d2));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final Class<E> f32702b;

    /* renamed from: c  reason: collision with root package name */
    private final j<E> f32703c;

    public a(f fVar, j<E> jVar, Class<E> cls) {
        this.f32703c = new i(fVar, jVar, cls);
        this.f32702b = cls;
    }

    @Override // com.google.gson.j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f32703c.read(jsonReader));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f32702b, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f32703c.write(jsonWriter, Array.get(obj, i));
        }
        jsonWriter.endArray();
    }
}
