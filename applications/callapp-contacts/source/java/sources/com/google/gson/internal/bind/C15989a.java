package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.internal.C15981b;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* renamed from: com.google.gson.internal.bind.a */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/a.class */
public final class C15989a<E> extends AbstractC16088j<Object> {

    /* renamed from: a */
    public static final AbstractC16090k f56661a = new AbstractC16090k() { // from class: com.google.gson.internal.bind.a.1
        @Override // com.google.gson.AbstractC16090k
        public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
            Type type = c15950a.getType();
            if ((type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray())) {
                Type m7936d = C15981b.m7936d(type);
                return new C15989a(c15965f, c15965f.m7977a((C15950a) C15950a.get(m7936d)), C15981b.m7940b(m7936d));
            }
            return null;
        }
    };

    /* renamed from: b */
    private final Class<E> f56662b;

    /* renamed from: c */
    private final AbstractC16088j<E> f56663c;

    public C15989a(C15965f c15965f, AbstractC16088j<E> abstractC16088j, Class<E> cls) {
        this.f56663c = new C16009i(c15965f, abstractC16088j, cls);
        this.f56662b = cls;
    }

    @Override // com.google.gson.AbstractC16088j
    public final Object read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(this.f56663c.read(jsonReader));
        }
        jsonReader.endArray();
        int size = arrayList.size();
        Object newInstance = Array.newInstance((Class<?>) this.f56662b, size);
        for (int i = 0; i < size; i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.AbstractC16088j
    public final void write(JsonWriter jsonWriter, Object obj) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
            return;
        }
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.f56663c.write(jsonWriter, Array.get(obj, i));
        }
        jsonWriter.endArray();
    }
}
