package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5261k;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5269s;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5113b;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5196c;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/d.class */
public final class C5126d implements AbstractC5276w {

    /* renamed from: a */
    private final C5196c f18393a;

    public C5126d(C5196c c5196c) {
        this.f18393a = c5196c;
    }

    /* renamed from: a */
    public final AbstractC5274v<?> m32976a(C5196c c5196c, C5250f c5250f, C5236a<?> c5236a, AbstractC5113b abstractC5113b) {
        C5144l c5144l;
        Object mo32819a = c5196c.m32856a(C5236a.m32804b(abstractC5113b.m32995a())).mo32819a();
        if (mo32819a instanceof AbstractC5274v) {
            c5144l = (AbstractC5274v) mo32819a;
        } else if (mo32819a instanceof AbstractC5276w) {
            c5144l = ((AbstractC5276w) mo32819a).mo32675a(c5250f, c5236a);
        } else {
            boolean z = mo32819a instanceof AbstractC5269s;
            if (!z && !(mo32819a instanceof AbstractC5261k)) {
                throw new IllegalArgumentException("Invalid attempt to bind an instance of " + mo32819a.getClass().getName() + " as a @JsonAdapter for " + c5236a.toString() + ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
            }
            AbstractC5261k abstractC5261k = null;
            AbstractC5269s abstractC5269s = z ? (AbstractC5269s) mo32819a : null;
            if (mo32819a instanceof AbstractC5261k) {
                abstractC5261k = (AbstractC5261k) mo32819a;
            }
            c5144l = new C5144l(abstractC5269s, abstractC5261k, c5250f, c5236a, null);
        }
        AbstractC5274v<?> abstractC5274v = c5144l;
        if (c5144l != null) {
            abstractC5274v = c5144l;
            if (abstractC5113b.m32994b()) {
                abstractC5274v = c5144l.m32677a();
            }
        }
        return abstractC5274v;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
    /* renamed from: a */
    public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
        AbstractC5113b abstractC5113b = (AbstractC5113b) c5236a.m32808a().getAnnotation(AbstractC5113b.class);
        if (abstractC5113b == null) {
            return null;
        }
        return (AbstractC5274v<T>) m32976a(this.f18393a, c5250f, c5236a, abstractC5113b);
    }
}
