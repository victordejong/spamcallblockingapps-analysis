package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5296l;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/a.class */
public abstract class AbstractC5277a<IN, OUT> extends AbstractC5296l<IN, OUT> {
    /* renamed from: a */
    protected abstract String mo32512a(AbstractC5279b<OUT> abstractC5279b, IN in);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a_ */
    public final Object mo32469a_(AbstractC5279b<OUT> abstractC5279b, IN in) throws Throwable {
        String mo32512a = mo32512a(new C5299m(abstractC5279b), in);
        AbstractC5296l.C5297a c5297a = m32638a().get(mo32512a);
        if (c5297a != null) {
            List<C5289h> list = c5297a.f18735a;
            Object mo32631a = C5282c.m32664a(list, ((C5292i) abstractC5279b).f18728a, this).mo32631a((AbstractC5279b) in);
            return !m32637a(list) ? mo32631a : abstractC5279b.mo32631a((AbstractC5279b<OUT>) mo32631a);
        }
        throw new IllegalArgumentException("can not found branch, branch name is：".concat(String.valueOf(mo32512a)));
    }
}
