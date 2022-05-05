package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.reflect.TypeToken;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.class */
public final class JsonAdapterAnnotationTypeAdapterFactory implements TypeAdapterFactory {

    /* renamed from: f */
    private final ConstructorConstructor f12064f;

    public JsonAdapterAnnotationTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.f12064f = constructorConstructor;
    }

    @Override // com.google.gson.TypeAdapterFactory
    /* renamed from: a */
    public <T> TypeAdapter<T> mo8188a(Gson gson, TypeToken<T> typeToken) {
        JsonAdapter jsonAdapter = (JsonAdapter) typeToken.m8160c().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (TypeAdapter<T>) m8266b(this.f12064f, gson, typeToken, jsonAdapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public TypeAdapter<?> m8266b(ConstructorConstructor constructorConstructor, Gson gson, TypeToken<?> typeToken, JsonAdapter jsonAdapter) {
        TypeAdapter<?> typeAdapter;
        Object a = constructorConstructor.m8344a(TypeToken.m8162a(jsonAdapter.value())).mo8284a();
        if (a instanceof TypeAdapter) {
            typeAdapter = (TypeAdapter) a;
        } else if (a instanceof TypeAdapterFactory) {
            typeAdapter = ((TypeAdapterFactory) a).mo8188a(gson, typeToken);
        } else {
            boolean z = a instanceof JsonSerializer;
            if (z || (a instanceof JsonDeserializer)) {
                JsonDeserializer jsonDeserializer = null;
                JsonSerializer jsonSerializer = z ? (JsonSerializer) a : null;
                if (a instanceof JsonDeserializer) {
                    jsonDeserializer = (JsonDeserializer) a;
                }
                typeAdapter = new TreeTypeAdapter<>(jsonSerializer, jsonDeserializer, gson, typeToken, null);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a.getClass().getName() + " as a @JsonAdapter for " + typeToken.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        TypeAdapter<?> typeAdapter2 = typeAdapter;
        if (typeAdapter != null) {
            typeAdapter2 = typeAdapter;
            if (jsonAdapter.nullSafe()) {
                typeAdapter2 = typeAdapter.m8369a();
            }
        }
        return typeAdapter2;
    }
}
