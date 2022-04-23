package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/b.class */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Long, b> f10236a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, a> f10237b = new HashMap();

    b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(long j) {
        b bVar;
        Map<Long, b> map = f10236a;
        synchronized (map) {
            b bVar2 = map.get(Long.valueOf(j));
            bVar = bVar2;
            if (bVar2 == null) {
                bVar = new b();
                map.put(Long.valueOf(j), bVar);
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a a(String str) {
        a aVar;
        synchronized (this.f10237b) {
            a aVar2 = this.f10237b.get(str);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = new a();
                this.f10237b.put(str, aVar);
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<a> a() {
        ArrayList arrayList;
        synchronized (this.f10237b) {
            arrayList = new ArrayList(this.f10237b.values());
        }
        return arrayList;
    }
}
