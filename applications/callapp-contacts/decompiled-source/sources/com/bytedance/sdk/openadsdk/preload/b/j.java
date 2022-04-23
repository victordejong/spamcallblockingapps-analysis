package com.bytedance.sdk.openadsdk.preload.b;

import com.bytedance.sdk.openadsdk.preload.b.i;
import com.bytedance.sdk.openadsdk.preload.b.l;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/b/j.class */
public abstract class j<IN, OUT> extends l<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private String f10117d;

    protected abstract String a(b<OUT> bVar, IN in);

    protected abstract String a(b<OUT> bVar, IN in, Throwable th, String str);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.openadsdk.preload.b.d
    public final Object a_(b<OUT> bVar, IN in) throws Throwable {
        this.f10117d = a(new m(bVar), in);
        l.a aVar = a().get(this.f10117d);
        while (true) {
            l.a aVar2 = aVar;
            if (aVar2 != null) {
                List<h> list = aVar2.f10120a;
                try {
                    Object a2 = c.a(list, ((i) bVar).f10113a, this).a((b) in);
                    return !a(list) ? a2 : bVar.a((b<OUT>) a2);
                } catch (i.a e) {
                    this.f10117d = a(new m(bVar), in, e.getCause(), this.f10117d);
                    aVar = a().get(this.f10117d);
                } catch (Throwable th) {
                    this.f10117d = a(new m(bVar), in, th, this.f10117d);
                    aVar = a().get(this.f10117d);
                }
            } else {
                throw new IllegalArgumentException("can not found branch，branch name is：" + this.f10117d);
            }
        }
    }
}
