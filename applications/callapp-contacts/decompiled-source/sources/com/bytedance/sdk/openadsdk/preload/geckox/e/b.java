package com.bytedance.sdk.openadsdk.preload.geckox.e;

import com.bytedance.sdk.openadsdk.preload.b.b.a;
import com.bytedance.sdk.openadsdk.preload.b.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/e/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<? extends d<?, ?>>, com.bytedance.sdk.openadsdk.preload.b.b.b> f10196a = new HashMap();

    public a a(Class<? extends d<?, ?>> cls) {
        com.bytedance.sdk.openadsdk.preload.b.b.b bVar;
        synchronized (this.f10196a) {
            bVar = this.f10196a.get(cls);
        }
        return bVar;
    }

    public void a(Class<? extends d<?, ?>> cls, a aVar) {
        synchronized (this.f10196a) {
            com.bytedance.sdk.openadsdk.preload.b.b.b bVar = this.f10196a.get(cls);
            com.bytedance.sdk.openadsdk.preload.b.b.b bVar2 = bVar;
            if (bVar == null) {
                bVar2 = new com.bytedance.sdk.openadsdk.preload.b.b.b(new a[0]);
                this.f10196a.put(cls, bVar2);
            }
            bVar2.a(aVar);
        }
    }
}
