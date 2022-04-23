package com.bytedance.sdk.openadsdk.preload.a.b.a;

import com.bytedance.sdk.openadsdk.preload.a.b.a.i;
import com.bytedance.sdk.openadsdk.preload.a.c.a;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.f;
import com.bytedance.sdk.openadsdk.preload.a.v;
import java.io.IOException;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/m.class */
public final class m<T> extends v<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f f9959a;

    /* renamed from: b  reason: collision with root package name */
    private final v<T> f9960b;

    /* renamed from: c  reason: collision with root package name */
    private final Type f9961c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(f fVar, v<T> vVar, Type type) {
        this.f9959a = fVar;
        this.f9960b = vVar;
        this.f9961c = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.reflect.Type a(java.lang.reflect.Type r4, java.lang.Object r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.b.a.m.a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final void a(c cVar, T t) throws IOException {
        v<T> vVar = this.f9960b;
        Type a2 = a(this.f9961c, t);
        if (a2 != this.f9961c) {
            v<T> a3 = this.f9959a.a((a) a.a(a2));
            vVar = a3;
            if (a3 instanceof i.a) {
                v<T> vVar2 = this.f9960b;
                vVar = a3;
                if (!(vVar2 instanceof i.a)) {
                    vVar = vVar2;
                }
            }
        }
        vVar.a(cVar, t);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.v
    public final T b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        return this.f9960b.b(aVar);
    }
}
