package com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a;

import com.bytedance.sdk.openadsdk.preload.geckox.p206a.C5316c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import java.io.File;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.a.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a/e.class */
class C5313e extends AbstractC5310b {
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.AbstractC5310b
    /* renamed from: a */
    public void mo32595a() {
        for (String str : this.f18772f) {
            List<File> m32356b = C5419d.m32356b(new File(this.f18771e, str));
            if (m32356b != null && m32356b.size() > this.f18770d.m32605b()) {
                for (File file : m32356b.subList(0, m32356b.size() - this.f18770d.m32605b())) {
                    boolean m32588b = C5316c.m32588b(file.getAbsolutePath());
                    if (this.f18770d.m32604c() != null) {
                        this.f18770d.m32604c().m32597a(file.getName(), m32588b);
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p206a.p207a.AbstractC5310b
    /* renamed from: a */
    public void mo32596a(C5307a c5307a, File file, List<String> list) {
        super.mo32596a(c5307a, file, list);
    }
}
