package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.C$Gson$Types;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/CollectionTypeAdapterFactory.class */
public final class CollectionTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: f */
    private final ConstructorConstructor f12059f;

    /* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter.class */
    private static final class Adapter<E> extends TypeAdapter<Collection<E>> {

        /* renamed from: a */
        private final TypeAdapter<E> f12060a;

        /* renamed from: b */
        private final ObjectConstructor<? extends Collection<E>> f12061b;

        public Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, ObjectConstructor<? extends Collection<E>> objectConstructor) {
            this.f12060a = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.f12061b = objectConstructor;
        }

        /* renamed from: e */
        public Collection<E> mo8175b(JsonReader jsonReader) throws IOException {
            if (jsonReader.mo8147Z() == JsonToken.NULL) {
                jsonReader.mo8151V();
                return null;
            }
            Collection<E> collection = (Collection) this.f12061b.mo8284a();
            jsonReader.mo8146a();
            while (jsonReader.mo8132o()) {
                collection.add(this.f12060a.mo8175b(jsonReader));
            }
            jsonReader.mo8138i();
            return collection;
        }

        /* renamed from: f */
        public void mo8174d(JsonWriter jsonWriter, Collection<E> collection) throws IOException {
            if (collection == null) {
                jsonWriter.mo8094t();
                return;
            }
            jsonWriter.mo8107d();
            for (E e : collection) {
                this.f12060a.mo8174d(jsonWriter, e);
            }
            jsonWriter.mo8102i();
        }
    }

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f12059f = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    /* renamed from: a */
    public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
        Type e = typeToken.m8158e();
        Class<? super T> c = typeToken.m8160c();
        if (!Collection.class.isAssignableFrom(c)) {
            return null;
        }
        Type h = C$Gson$Types.m8358h(e, c);
        return new Adapter(gson, h, gson.m8424k(TypeToken.m8161b(h)), this.f12059f.m8344a(typeToken));
    }
}
