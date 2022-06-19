package com.bytedance.sdk.openadsdk.preload.p201b;

import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5296l;
import com.bytedance.sdk.openadsdk.preload.p201b.C5292i;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.b.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/j.class */
public abstract class AbstractC5294j<IN, OUT> extends AbstractC5296l<IN, OUT> {

    /* renamed from: d */
    private String f18732d;

    /* renamed from: a */
    protected abstract String mo32500a(AbstractC5279b<OUT> abstractC5279b, IN in);

    /* renamed from: a */
    protected abstract String mo32499a(AbstractC5279b<OUT> abstractC5279b, IN in, Throwable th, String str);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d
    /* renamed from: a_ */
    public final Object mo32469a_(AbstractC5279b<OUT> abstractC5279b, IN in) throws Throwable {
        this.f18732d = mo32500a(new C5299m(abstractC5279b), in);
        AbstractC5296l.C5297a c5297a = m32638a().get(this.f18732d);
        while (true) {
            AbstractC5296l.C5297a c5297a2 = c5297a;
            if (c5297a2 == null) {
                throw new IllegalArgumentException("can not found branch，branch name is：" + this.f18732d);
            }
            List<C5289h> list = c5297a2.f18735a;
            try {
                Object mo32631a = C5282c.m32664a(list, ((C5292i) abstractC5279b).f18728a, this).mo32631a((AbstractC5279b) in);
                return !m32637a(list) ? mo32631a : abstractC5279b.mo32631a((AbstractC5279b<OUT>) mo32631a);
            } catch (C5292i.C5293a e) {
                this.f18732d = mo32499a(new C5299m(abstractC5279b), in, e.getCause(), this.f18732d);
                c5297a = m32638a().get(this.f18732d);
            } catch (Throwable th) {
                this.f18732d = mo32499a(new C5299m(abstractC5279b), in, th, this.f18732d);
                c5297a = m32638a().get(this.f18732d);
            }
        }
    }
}
