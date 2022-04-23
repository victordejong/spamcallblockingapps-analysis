package com.google.gson.internal.bind;

import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.a.a;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.f;
import com.google.gson.internal.c;
import com.google.gson.j;
import com.google.gson.k;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.class */
public final class JsonAdapterAnnotationTypeAdapterFactory implements k {
    private final c constructorConstructor;

    public JsonAdapterAnnotationTypeAdapterFactory(c cVar) {
        this.constructorConstructor = cVar;
    }

    @Override // com.google.gson.k
    public final <T> j<T> create(f fVar, a<T> aVar) {
        JsonAdapter jsonAdapter = (JsonAdapter) aVar.getRawType().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (j<T>) getTypeAdapter(this.constructorConstructor, fVar, aVar, jsonAdapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final j<?> getTypeAdapter(c cVar, f fVar, a<?> aVar, JsonAdapter jsonAdapter) {
        j<?> jVar;
        Object a2 = cVar.a(a.get((Class) jsonAdapter.value())).a();
        if (a2 instanceof j) {
            jVar = (j) a2;
        } else if (a2 instanceof k) {
            jVar = ((k) a2).create(fVar, aVar);
        } else {
            boolean z = a2 instanceof JsonSerializer;
            if (z || (a2 instanceof JsonDeserializer)) {
                JsonDeserializer jsonDeserializer = null;
                JsonSerializer jsonSerializer = z ? (JsonSerializer) a2 : null;
                if (a2 instanceof JsonDeserializer) {
                    jsonDeserializer = (JsonDeserializer) a2;
                }
                jVar = new TreeTypeAdapter<>(jsonSerializer, jsonDeserializer, fVar, aVar, null);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + a2.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        j<?> jVar2 = jVar;
        if (jVar != null) {
            jVar2 = jVar;
            if (jsonAdapter.nullSafe()) {
                jVar2 = jVar.nullSafe();
            }
        }
        return jVar2;
    }
}
