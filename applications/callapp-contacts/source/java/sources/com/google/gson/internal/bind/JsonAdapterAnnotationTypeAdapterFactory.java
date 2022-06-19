package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.AbstractC16090k;
import com.google.gson.C15965f;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonSerializer;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.internal.C16050c;
import com.google.gson.p399a.C15950a;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.class */
public final class JsonAdapterAnnotationTypeAdapterFactory implements AbstractC16090k {
    private final C16050c constructorConstructor;

    public JsonAdapterAnnotationTypeAdapterFactory(C16050c c16050c) {
        this.constructorConstructor = c16050c;
    }

    @Override // com.google.gson.AbstractC16090k
    public final <T> AbstractC16088j<T> create(C15965f c15965f, C15950a<T> c15950a) {
        JsonAdapter jsonAdapter = (JsonAdapter) c15950a.getRawType().getAnnotation(JsonAdapter.class);
        if (jsonAdapter == null) {
            return null;
        }
        return (AbstractC16088j<T>) getTypeAdapter(this.constructorConstructor, c15965f, c15950a, jsonAdapter);
    }

    public final AbstractC16088j<?> getTypeAdapter(C16050c c16050c, C15965f c15965f, C15950a<?> c15950a, JsonAdapter jsonAdapter) {
        TreeTypeAdapter treeTypeAdapter;
        Object mo7874a = c16050c.m7900a(C15950a.get((Class) jsonAdapter.value())).mo7874a();
        if (mo7874a instanceof AbstractC16088j) {
            treeTypeAdapter = (AbstractC16088j) mo7874a;
        } else if (mo7874a instanceof AbstractC16090k) {
            treeTypeAdapter = ((AbstractC16090k) mo7874a).create(c15965f, c15950a);
        } else {
            boolean z = mo7874a instanceof JsonSerializer;
            if (!z && !(mo7874a instanceof JsonDeserializer)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + mo7874a.getClass().getName() + " as a @JsonAdapter for " + c15950a.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            JsonDeserializer jsonDeserializer = null;
            JsonSerializer jsonSerializer = z ? (JsonSerializer) mo7874a : null;
            if (mo7874a instanceof JsonDeserializer) {
                jsonDeserializer = (JsonDeserializer) mo7874a;
            }
            treeTypeAdapter = new TreeTypeAdapter(jsonSerializer, jsonDeserializer, c15965f, c15950a, null);
        }
        AbstractC16088j<?> abstractC16088j = treeTypeAdapter;
        if (treeTypeAdapter != null) {
            abstractC16088j = treeTypeAdapter;
            if (jsonAdapter.nullSafe()) {
                abstractC16088j = treeTypeAdapter.nullSafe();
            }
        }
        return abstractC16088j;
    }
}
