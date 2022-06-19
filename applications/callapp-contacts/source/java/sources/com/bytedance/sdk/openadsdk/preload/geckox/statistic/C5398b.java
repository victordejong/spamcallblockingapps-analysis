package com.bytedance.sdk.openadsdk.preload.geckox.statistic;

import com.bytedance.sdk.openadsdk.preload.geckox.statistic.model.C5414a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.statistic.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/statistic/b.class */
class C5398b {

    /* renamed from: a */
    private static final Map<Long, C5398b> f18902a = new HashMap();

    /* renamed from: b */
    private final Map<String, C5414a> f18903b = new HashMap();

    C5398b() {
    }

    /* renamed from: a */
    public static C5398b m32401a(long j) {
        C5398b c5398b;
        Map<Long, C5398b> map = f18902a;
        synchronized (map) {
            C5398b c5398b2 = map.get(Long.valueOf(j));
            c5398b = c5398b2;
            if (c5398b2 == null) {
                c5398b = new C5398b();
                map.put(Long.valueOf(j), c5398b);
            }
        }
        return c5398b;
    }

    /* renamed from: a */
    public C5414a m32400a(String str) {
        C5414a c5414a;
        synchronized (this.f18903b) {
            C5414a c5414a2 = this.f18903b.get(str);
            c5414a = c5414a2;
            if (c5414a2 == null) {
                c5414a = new C5414a();
                this.f18903b.put(str, c5414a);
            }
        }
        return c5414a;
    }

    /* renamed from: a */
    public List<C5414a> m32402a() {
        ArrayList arrayList;
        synchronized (this.f18903b) {
            arrayList = new ArrayList(this.f18903b.values());
        }
        return arrayList;
    }
}
