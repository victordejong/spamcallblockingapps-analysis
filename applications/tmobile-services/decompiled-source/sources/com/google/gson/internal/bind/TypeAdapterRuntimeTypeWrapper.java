package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.class */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {

    /* renamed from: a */
    private final Gson f12116a;

    /* renamed from: b */
    private final TypeAdapter<T> f12117b;

    /* renamed from: c */
    private final Type f12118c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.f12116a = gson;
        this.f12117b = typeAdapter;
        this.f12118c = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.reflect.Type m8239e(java.lang.reflect.Type r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0021
            r0 = r4
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x001c
            r0 = r4
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x001c
            r0 = r4
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0021
        L_0x001c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r6 = r0
        L_0x0021:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapterRuntimeTypeWrapper.m8239e(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b */
    public T mo8175b(JsonReader jsonReader) throws IOException {
        return this.f12117b.mo8175b(jsonReader);
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: d */
    public void mo8174d(JsonWriter jsonWriter, T t) throws IOException {
        TypeAdapter<T> typeAdapter = this.f12117b;
        Type e = m8239e(this.f12118c, t);
        if (e != this.f12118c) {
            typeAdapter = this.f12116a.m8424k(TypeToken.m8161b(e));
            if (typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = this.f12117b;
                if (!(typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                    typeAdapter = typeAdapter2;
                }
            }
        }
        typeAdapter.mo8174d(jsonWriter, t);
    }
}
