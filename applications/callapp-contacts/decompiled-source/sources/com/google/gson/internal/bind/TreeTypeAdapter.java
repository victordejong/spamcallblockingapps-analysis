package com.google.gson.internal.bind;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter.class */
public final class TreeTypeAdapter<T> extends j<T> {

    /* renamed from: a  reason: collision with root package name */
    final f f32693a;

    /* renamed from: b  reason: collision with root package name */
    private final JsonSerializer<T> f32694b;

    /* renamed from: c  reason: collision with root package name */
    private final JsonDeserializer<T> f32695c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.gson.a.a<T> f32696d;
    private final k e;
    private final TreeTypeAdapter<T>.GsonContextImpl f = new GsonContextImpl();
    private j<T> g;

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl.class */
    final class GsonContextImpl implements JsonDeserializationContext, JsonSerializationContext {
        private GsonContextImpl() {
        }

        @Override // com.google.gson.JsonDeserializationContext
        public final <R> R deserialize(JsonElement jsonElement, Type type) throws JsonParseException {
            return (R) TreeTypeAdapter.this.f32693a.a(jsonElement, type);
        }

        @Override // com.google.gson.JsonSerializationContext
        public final JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.f32693a.a(obj);
        }

        @Override // com.google.gson.JsonSerializationContext
        public final JsonElement serialize(Object obj, Type type) {
            return TreeTypeAdapter.this.f32693a.a(obj, type);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$a.class */
    public static final class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.a.a<?> f32697a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f32698b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f32699c;

        /* renamed from: d  reason: collision with root package name */
        private final JsonSerializer<?> f32700d;
        private final JsonDeserializer<?> e;

        public a(Object obj, com.google.gson.a.a<?> aVar, boolean z, Class<?> cls) {
            JsonDeserializer<?> jsonDeserializer = null;
            JsonSerializer<?> jsonSerializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.f32700d = jsonSerializer;
            jsonDeserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : jsonDeserializer;
            this.e = jsonDeserializer;
            com.google.gson.internal.a.a((jsonSerializer == null && jsonDeserializer == null) ? false : true);
            this.f32697a = aVar;
            this.f32698b = z;
            this.f32699c = cls;
        }

        @Override // com.google.gson.k
        public final <T> j<T> create(f fVar, com.google.gson.a.a<T> aVar) {
            com.google.gson.a.a<?> aVar2 = this.f32697a;
            if (aVar2 != null ? aVar2.equals(aVar) || (this.f32698b && this.f32697a.getType() == aVar.getRawType()) : this.f32699c.isAssignableFrom(aVar.getRawType())) {
                return new TreeTypeAdapter(this.f32700d, this.e, fVar, aVar, this);
            }
            return null;
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, f fVar, com.google.gson.a.a<T> aVar, k kVar) {
        this.f32694b = jsonSerializer;
        this.f32695c = jsonDeserializer;
        this.f32693a = fVar;
        this.f32696d = aVar;
        this.e = kVar;
    }

    private j<T> a() {
        j<T> jVar = this.g;
        if (jVar != null) {
            return jVar;
        }
        j<T> a2 = this.f32693a.a(this.e, this.f32696d);
        this.g = a2;
        return a2;
    }

    @Override // com.google.gson.j
    public final T read(JsonReader jsonReader) throws IOException {
        if (this.f32695c == null) {
            return a().read(jsonReader);
        }
        JsonElement a2 = com.google.gson.internal.k.a(jsonReader);
        if (a2.isJsonNull()) {
            return null;
        }
        return this.f32695c.deserialize(a2, this.f32696d.getType(), this.f);
    }

    @Override // com.google.gson.j
    public final void write(JsonWriter jsonWriter, T t) throws IOException {
        JsonSerializer<T> jsonSerializer = this.f32694b;
        if (jsonSerializer == null) {
            a().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            com.google.gson.internal.k.a(jsonSerializer.serialize(t, this.f32696d.getType(), this.f), jsonWriter);
        }
    }
}
