package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonDeserializationContext;
import com.aotter.net.gson.JsonDeserializer;
import com.aotter.net.gson.JsonElement;
import com.aotter.net.gson.JsonSerializationContext;
import com.aotter.net.gson.JsonSerializer;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.internal.C$Gson$Preconditions;
import com.aotter.net.gson.internal.Streams;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonWriter;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TreeTypeAdapter.class */
public final class TreeTypeAdapter<T> extends TypeAdapter<T> {
    public final TreeTypeAdapter<T>.GsonContextImpl context = new GsonContextImpl();
    public TypeAdapter<T> delegate;
    public final JsonDeserializer<T> deserializer;
    public final Gson gson;
    public final JsonSerializer<T> serializer;
    public final TypeAdapterFactory skipPast;
    public final TypeToken<T> typeToken;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TreeTypeAdapter$GsonContextImpl.class */
    public final class GsonContextImpl implements JsonDeserializationContext, JsonSerializationContext {
        public GsonContextImpl() {
        }

        @Override // com.aotter.net.gson.JsonDeserializationContext
        public <R> R deserialize(JsonElement jsonElement, Type type) {
            return (R) TreeTypeAdapter.this.gson.fromJson(jsonElement, type);
        }

        @Override // com.aotter.net.gson.JsonSerializationContext
        public JsonElement serialize(Object obj) {
            return TreeTypeAdapter.this.gson.toJsonTree(obj);
        }

        @Override // com.aotter.net.gson.JsonSerializationContext
        public JsonElement serialize(Object obj, Type type) {
            return TreeTypeAdapter.this.gson.toJsonTree(obj, type);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory.class */
    public final class SingleTypeFactory implements TypeAdapterFactory {
        public final JsonDeserializer<?> deserializer;
        public final TypeToken<?> exactType;
        public final Class<?> hierarchyType;
        public final boolean matchRawType;
        public final JsonSerializer<?> serializer;

        public SingleTypeFactory(Object obj, TypeToken<?> typeToken, boolean z, Class<?> cls) {
            JsonDeserializer<?> jsonDeserializer = null;
            this.serializer = obj instanceof JsonSerializer ? (JsonSerializer) obj : null;
            this.deserializer = obj instanceof JsonDeserializer ? (JsonDeserializer) obj : jsonDeserializer;
            C$Gson$Preconditions.checkArgument((this.serializer == null && this.deserializer == null) ? false : true);
            this.exactType = typeToken;
            this.matchRawType = z;
            this.hierarchyType = cls;
        }

        @Override // com.aotter.net.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            TypeToken<?> typeToken2 = this.exactType;
            return typeToken2 != null ? typeToken2.equals(typeToken) || (this.matchRawType && this.exactType.getType() == typeToken.getRawType()) : this.hierarchyType.isAssignableFrom(typeToken.getRawType()) ? new TreeTypeAdapter(this.serializer, this.deserializer, gson, typeToken, this) : null;
        }
    }

    public TreeTypeAdapter(JsonSerializer<T> jsonSerializer, JsonDeserializer<T> jsonDeserializer, Gson gson, TypeToken<T> typeToken, TypeAdapterFactory typeAdapterFactory) {
        this.serializer = jsonSerializer;
        this.deserializer = jsonDeserializer;
        this.gson = gson;
        this.typeToken = typeToken;
        this.skipPast = typeAdapterFactory;
    }

    private TypeAdapter<T> delegate() {
        TypeAdapter<T> typeAdapter = this.delegate;
        if (typeAdapter == null) {
            typeAdapter = this.gson.getDelegateAdapter(this.skipPast, this.typeToken);
            this.delegate = typeAdapter;
        }
        return typeAdapter;
    }

    public static TypeAdapterFactory newFactory(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, false, null);
    }

    public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> typeToken, Object obj) {
        return new SingleTypeFactory(obj, typeToken, typeToken.getType() == typeToken.getRawType(), null);
    }

    public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> cls, Object obj) {
        return new SingleTypeFactory(obj, null, false, cls);
    }

    @Override // com.aotter.net.gson.TypeAdapter
    public T read(JsonReader jsonReader) {
        if (this.deserializer == null) {
            return delegate().read(jsonReader);
        }
        JsonElement parse = Streams.parse(jsonReader);
        if (parse.isJsonNull()) {
            return null;
        }
        return this.deserializer.deserialize(parse, this.typeToken.getType(), this.context);
    }

    @Override // com.aotter.net.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) {
        JsonSerializer<T> jsonSerializer = this.serializer;
        if (jsonSerializer == null) {
            delegate().write(jsonWriter, t);
        } else if (t == null) {
            jsonWriter.nullValue();
        } else {
            Streams.write(jsonSerializer.serialize(t, this.typeToken.getType(), this.context), jsonWriter);
        }
    }
}
