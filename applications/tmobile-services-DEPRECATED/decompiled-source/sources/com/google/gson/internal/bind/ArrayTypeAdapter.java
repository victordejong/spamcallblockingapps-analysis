package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/ArrayTypeAdapter.class */
public final class ArrayTypeAdapter<E> extends TypeAdapter<Object> {

    /* renamed from: c */
    public static final TypeAdapterFactory f12056c = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.ArrayTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        /* renamed from: a */
        public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
            Type e = typeToken.m8158e();
            if (!(e instanceof GenericArrayType) && (!(e instanceof Class) || !((Class) e).isArray())) {
                return null;
            }
            Type g = C$Gson$Types.m8359g(e);
            return new ArrayTypeAdapter(gson, gson.m8424k(TypeToken.m8161b(g)), C$Gson$Types.m8355k(g));
        }
    };

    /* renamed from: a */
    private final Class<E> f12057a;

    /* renamed from: b */
    private final TypeAdapter<E> f12058b;

    public ArrayTypeAdapter(Gson gson, TypeAdapter<E> typeAdapter, Class<E> cls) {
        this.f12058b = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, cls);
        this.f12057a = cls;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b */
    public Object mo8175b(JsonReader jsonReader) throws IOException {
        if (jsonReader.mo8147Z() == JsonToken.NULL) {
            jsonReader.mo8151V();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.mo8146a();
        while (jsonReader.mo8132o()) {
            arrayList.add(this.f12058b.mo8175b(jsonReader));
        }
        jsonReader.mo8138i();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f12057a, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.TypeAdapter
    /* renamed from: d */
    public void mo8174d(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.mo8094t();
            return;
        }
        jsonWriter.mo8107d();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f12058b.mo8174d(jsonWriter, Array.get(obj, i));
        }
        jsonWriter.mo8102i();
    }
}
