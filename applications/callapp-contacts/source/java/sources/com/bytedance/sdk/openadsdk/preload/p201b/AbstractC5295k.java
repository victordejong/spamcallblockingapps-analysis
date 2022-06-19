package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.C5292i;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/k.class */
public abstract class AbstractC5295k<IN, OUT> extends AbstractC5283d<IN, OUT> {

    /* renamed from: d */
    private IN f18733d;

    /* renamed from: a */
    private Object m32640a(AbstractC5279b<OUT> abstractC5279b, IN in, Throwable th) throws Throwable {
        while (mo32472a(th)) {
            try {
                return abstractC5279b.mo32631a((AbstractC5279b<OUT>) mo32471b());
            } catch (C5292i.C5293a e) {
                th = e.getCause();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    /* renamed from: a */
    protected abstract boolean mo32472a(Throwable th);

    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a_ */
    public final Object mo32469a_(AbstractC5279b<OUT> abstractC5279b, IN in) throws Throwable {
        this.f18733d = in;
        try {
            return abstractC5279b.mo32631a((AbstractC5279b<OUT>) mo32471b());
        } catch (C5292i.C5293a e) {
            return m32640a(abstractC5279b, in, e.getCause());
        } catch (Throwable th) {
            return m32640a(abstractC5279b, in, th);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [IN, OUT] */
    /* renamed from: b */
    protected OUT mo32471b() {
        return this.f18733d;
    }

    /* renamed from: g */
    public final IN m32639g() {
        return this.f18733d;
    }
}
