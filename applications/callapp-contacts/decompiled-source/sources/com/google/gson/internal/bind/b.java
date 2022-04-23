package com.google.gson.internal.bind;

import com.google.gson.f;
import com.google.gson.internal.c;
import com.google.gson.internal.h;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/b.class */
public final class b implements k {

    /* renamed from: a  reason: collision with root package name */
    private final c f32705a;

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/b$a.class */
    static final class a<E> extends j<Collection<E>> {

        /* renamed from: a  reason: collision with root package name */
        private final j<E> f32706a;

        /* renamed from: b  reason: collision with root package name */
        private final h<? extends Collection<E>> f32707b;

        public a(f fVar, Type type, j<E> jVar, h<? extends Collection<E>> hVar) {
            this.f32706a = new i(fVar, jVar, type);
            this.f32707b = hVar;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ Object read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection collection = (Collection) this.f32707b.a();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collection.add(this.f32706a.read(jsonReader));
            }
            jsonReader.endArray();
            return collection;
        }

        @Override // com.google.gson.j
        public final /* synthetic */ void write(JsonWriter jsonWriter, Object obj) throws IOException {
            Collection<E> collection = (Collection) obj;
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (E e : collection) {
                this.f32706a.write(jsonWriter, e);
            }
            jsonWriter.endArray();
        }
    }

    public b(c cVar) {
        this.f32705a = cVar;
    }

    @Override // com.google.gson.k
    public final <T> j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type a2 = com.google.gson.internal.b.a(type, (Class<?>) rawType);
        return new a(fVar, a2, fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(a2)), this.f32705a.a(aVar));
    }
}
