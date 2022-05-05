package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import p081h.p203i.p384e.AbstractC10103i;
import p081h.p203i.p384e.AbstractC10112r;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p385v.AbstractC10119b;
import p081h.p203i.p384e.p386w.C10128c;
import p081h.p203i.p384e.p390x.C10173a;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory.class */
public final class JsonAdapterAnnotationTypeAdapterFactory implements AbstractC10117u {

    /* renamed from: a */
    public final C10128c f7846a;

    public JsonAdapterAnnotationTypeAdapterFactory(C10128c cVar) {
        this.f7846a = cVar;
    }

    /* renamed from: a */
    public TypeAdapter<?> m30956a(C10128c cVar, Gson gson, C10173a<?> aVar, AbstractC10119b bVar) {
        TypeAdapter<?> typeAdapter;
        Object construct = cVar.m13332a(C10173a.m13279a((Class) bVar.value())).construct();
        if (construct instanceof TypeAdapter) {
            typeAdapter = (TypeAdapter) construct;
        } else if (construct instanceof AbstractC10117u) {
            typeAdapter = ((AbstractC10117u) construct).create(gson, aVar);
        } else {
            boolean z = construct instanceof AbstractC10112r;
            if (z || (construct instanceof AbstractC10103i)) {
                AbstractC10103i iVar = null;
                AbstractC10112r rVar = z ? (AbstractC10112r) construct : null;
                if (construct instanceof AbstractC10103i) {
                    iVar = (AbstractC10103i) construct;
                }
                typeAdapter = new TreeTypeAdapter<>(rVar, iVar, gson, aVar, null);
            } else {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + construct.getClass().getName() + " as a @JsonAdapter for " + aVar.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
        }
        TypeAdapter<?> typeAdapter2 = typeAdapter;
        if (typeAdapter != null) {
            typeAdapter2 = typeAdapter;
            if (bVar.nullSafe()) {
                typeAdapter2 = typeAdapter.nullSafe();
            }
        }
        return typeAdapter2;
    }

    @Override // p081h.p203i.p384e.AbstractC10117u
    public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
        AbstractC10119b bVar = (AbstractC10119b) aVar.m13280a().getAnnotation(AbstractC10119b.class);
        if (bVar == null) {
            return null;
        }
        return (TypeAdapter<T>) m30956a(this.f7846a, gson, aVar, bVar);
    }
}
