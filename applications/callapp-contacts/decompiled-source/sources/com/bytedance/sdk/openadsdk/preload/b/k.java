package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.preload.b.i;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/k.class */
public abstract class k<IN, OUT> extends d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private IN f10118d;

    private Object a(b<OUT> bVar, IN in, Throwable th) throws Throwable {
        while (a(th)) {
            try {
                return bVar.a((b<OUT>) b());
            } catch (i.a e) {
                th = e.getCause();
            } catch (Throwable th2) {
                th = th2;
            }
        }
        throw th;
    }

    protected abstract boolean a(Throwable th);

    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public final Object a_(b<OUT> bVar, IN in) throws Throwable {
        this.f10118d = in;
        try {
            return bVar.a((b<OUT>) b());
        } catch (i.a e) {
            return a(bVar, in, e.getCause());
        } catch (Throwable th) {
            return a(bVar, in, th);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [IN, OUT] */
    protected OUT b() {
        return this.f10118d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final IN g() {
        return this.f10118d;
    }
}
