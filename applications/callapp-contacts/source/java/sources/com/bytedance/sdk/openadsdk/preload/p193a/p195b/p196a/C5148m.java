package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5136i;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import java.io.IOException;
import java.lang.reflect.Type;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/m.class */
public final class C5148m<T> extends AbstractC5274v<T> {

    /* renamed from: a */
    private final C5250f f18448a;

    /* renamed from: b */
    private final AbstractC5274v<T> f18449b;

    /* renamed from: c */
    private final Type f18450c;

    public C5148m(C5250f c5250f, AbstractC5274v<T> abstractC5274v, Type type) {
        this.f18448a = c5250f;
        this.f18449b = abstractC5274v;
        this.f18450c = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.reflect.Type m32948a(java.lang.reflect.Type r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L21
            r0 = r4
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L1c
            r0 = r4
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L1c
            r0 = r4
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L21
        L1c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r6 = r0
        L21:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5148m.m32948a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: a */
    public final void mo32518a(C5247c c5247c, T t) throws IOException {
        AbstractC5274v<T> abstractC5274v = this.f18449b;
        Type m32948a = m32948a(this.f18450c, t);
        if (m32948a != this.f18450c) {
            AbstractC5274v<T> m32735a = this.f18448a.m32735a((C5236a) C5236a.m32806a(m32948a));
            abstractC5274v = m32735a;
            if (m32735a instanceof C5136i.C5138a) {
                AbstractC5274v<T> abstractC5274v2 = this.f18449b;
                abstractC5274v = m32735a;
                if (!(abstractC5274v2 instanceof C5136i.C5138a)) {
                    abstractC5274v = abstractC5274v2;
                }
            }
        }
        abstractC5274v.mo32518a(c5247c, t);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
    /* renamed from: b */
    public final T mo32517b(C5244a c5244a) throws IOException {
        return this.f18449b.mo32517b(c5244a);
    }
}
