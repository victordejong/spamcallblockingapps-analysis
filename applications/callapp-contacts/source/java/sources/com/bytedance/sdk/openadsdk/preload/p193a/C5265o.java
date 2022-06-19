package com.bytedance.sdk.openadsdk.preload.p193a;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5216h;
import java.util.Map;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/o.class */
public final class C5265o extends AbstractC5262l {

    /* renamed from: a */
    private final C5216h<String, AbstractC5262l> f18700a = new C5216h<>();

    /* renamed from: a */
    public final void m32690a(String str, AbstractC5262l abstractC5262l) {
        C5216h<String, AbstractC5262l> c5216h = this.f18700a;
        C5264n c5264n = abstractC5262l;
        if (abstractC5262l == null) {
            c5264n = C5264n.f18699a;
        }
        c5216h.put(str, c5264n);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C5265o) && ((C5265o) obj).f18700a.equals(this.f18700a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f18700a.hashCode();
    }

    /* renamed from: n */
    public final Set<Map.Entry<String, AbstractC5262l>> m32689n() {
        return this.f18700a.entrySet();
    }
}
