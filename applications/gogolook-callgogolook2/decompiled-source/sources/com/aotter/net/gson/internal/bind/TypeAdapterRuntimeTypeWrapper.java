package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.internal.bind.ReflectiveTypeAdapterFactory;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonWriter;
import java.lang.reflect.Type;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.class */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {
    public final Gson context;
    public final TypeAdapter<T> delegate;
    public final Type type;

    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.context = gson;
        this.delegate = typeAdapter;
        this.type = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.reflect.Type getRuntimeTypeIfMoreSpecific(java.lang.reflect.Type r4, java.lang.Object r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.gson.internal.bind.TypeAdapterRuntimeTypeWrapper.getRuntimeTypeIfMoreSpecific(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // com.aotter.net.gson.TypeAdapter
    public T read(JsonReader jsonReader) {
        return this.delegate.read(jsonReader);
    }

    @Override // com.aotter.net.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, T t) {
        TypeAdapter<T> typeAdapter = this.delegate;
        Type runtimeTypeIfMoreSpecific = getRuntimeTypeIfMoreSpecific(this.type, t);
        if (runtimeTypeIfMoreSpecific != this.type) {
            typeAdapter = this.context.getAdapter(TypeToken.get(runtimeTypeIfMoreSpecific));
            if (typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = this.delegate;
                if (!(typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                    typeAdapter = typeAdapter2;
                }
            }
        }
        typeAdapter.write(jsonWriter, t);
    }
}
