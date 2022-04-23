package com.google.gson.internal.bind;

import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/i.class */
public final class i<T> extends j<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f f32733a;

    /* renamed from: b  reason: collision with root package name */
    private final j<T> f32734b;

    /* renamed from: c  reason: collision with root package name */
    private final Type f32735c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(f fVar, j<T> jVar, Type type) {
        this.f32733a = fVar;
        this.f32734b = jVar;
        this.f32735c = type;
    }

    @Override // com.google.gson.j
    public final T read(JsonReader jsonReader) throws IOException {
        return this.f32734b.read(jsonReader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if ((r0 instanceof java.lang.Class) != false) goto L_0x002e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.reflect.Type] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.gson.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void write(com.google.gson.stream.JsonWriter r5, T r6) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r4
            com.google.gson.j<T> r0 = r0.f32734b
            r7 = r0
            r0 = r4
            java.lang.reflect.Type r0 = r0.f32735c
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0034
            r0 = r8
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x002e
            r0 = r8
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x002e
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0034
        L_0x002e:
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r9 = r0
        L_0x0034:
            r0 = r9
            r1 = r4
            java.lang.reflect.Type r1 = r1.f32735c
            if (r0 == r1) goto L_0x006a
            r0 = r4
            com.google.gson.f r0 = r0.f32733a
            r1 = r9
            com.google.gson.a.a r1 = com.google.gson.a.a.get(r1)
            com.google.gson.j r0 = r0.a(r1)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0 instanceof com.google.gson.internal.bind.f.a
            if (r0 == 0) goto L_0x006a
            r0 = r4
            com.google.gson.j<T> r0 = r0.f32734b
            r8 = r0
            r0 = r9
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof com.google.gson.internal.bind.f.a
            if (r0 != 0) goto L_0x006a
            r0 = r8
            r7 = r0
        L_0x006a:
            r0 = r7
            r1 = r5
            r2 = r6
            r0.write(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.i.write(com.google.gson.stream.JsonWriter, java.lang.Object):void");
    }
}
