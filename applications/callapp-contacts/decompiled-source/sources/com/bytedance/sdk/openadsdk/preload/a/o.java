package com.bytedance.sdk.openadsdk.preload.a;

import com.bytedance.sdk.openadsdk.preload.a.b.h;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/o.class */
public final class o extends l {

    /* renamed from: a  reason: collision with root package name */
    private final h<String, l> f10090a = new h<>();

    public final void a(String str, l lVar) {
        h<String, l> hVar = this.f10090a;
        l lVar2 = lVar;
        if (lVar == null) {
            lVar2 = n.f10089a;
        }
        hVar.put(str, lVar2);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof o) && ((o) obj).f10090a.equals(this.f10090a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f10090a.hashCode();
    }

    public final Set<Map.Entry<String, l>> n() {
        return this.f10090a.entrySet();
    }
}
