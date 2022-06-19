package com.google.gson.internal.bind;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import java.lang.reflect.Type;
/* renamed from: com.google.gson.internal.bind.i */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/i.class */
public final class C16009i<T> extends AbstractC16088j<T> {

    /* renamed from: a */
    private final C15965f f56700a;

    /* renamed from: b */
    private final AbstractC16088j<T> f56701b;

    /* renamed from: c */
    private final Type f56702c;

    public C16009i(C15965f c15965f, AbstractC16088j<T> abstractC16088j, Type type) {
        this.f56700a = c15965f;
        this.f56701b = abstractC16088j;
        this.f56702c = type;
    }

    @Override // com.google.gson.AbstractC16088j
    public final T read(JsonReader jsonReader) throws IOException {
        return this.f56701b.read(jsonReader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if ((r0 instanceof java.lang.Class) != false) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.reflect.Type] */
    @Override // com.google.gson.AbstractC16088j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void write(com.google.gson.stream.JsonWriter r5, T r6) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r4
            com.google.gson.j<T> r0 = r0.f56701b
            r7 = r0
            r0 = r4
            java.lang.reflect.Type r0 = r0.f56702c
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r8
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L2e
            r0 = r8
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L2e
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L34
        L2e:
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r9 = r0
        L34:
            r0 = r9
            r1 = r4
            java.lang.reflect.Type r1 = r1.f56702c
            if (r0 == r1) goto L6a
            r0 = r4
            com.google.gson.f r0 = r0.f56700a
            r1 = r9
            com.google.gson.a.a r1 = com.google.gson.p399a.C15950a.get(r1)
            com.google.gson.j r0 = r0.m7977a(r1)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0 instanceof com.google.gson.internal.bind.C16001f.C16003a
            if (r0 == 0) goto L6a
            r0 = r4
            com.google.gson.j<T> r0 = r0.f56701b
            r8 = r0
            r0 = r9
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof com.google.gson.internal.bind.C16001f.C16003a
            if (r0 != 0) goto L6a
            r0 = r8
            r7 = r0
        L6a:
            r0 = r7
            r1 = r5
            r2 = r6
            r0.write(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.C16009i.write(com.google.gson.stream.JsonWriter, java.lang.Object):void");
    }
}
