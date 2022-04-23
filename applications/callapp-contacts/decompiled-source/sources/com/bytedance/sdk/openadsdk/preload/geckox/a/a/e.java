package com.bytedance.sdk.openadsdk.preload.geckox.a.a;

import com.bytedance.sdk.openadsdk.preload.geckox.a.c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.d;
import java.io.File;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/a/a/e.class */
class e extends b {
    @Override // com.bytedance.sdk.openadsdk.preload.geckox.a.a.b
    public void a() {
        for (String str : this.f) {
            List<File> b2 = d.b(new File(this.e, str));
            if (b2 != null && b2.size() > this.f10150d.b()) {
                for (File file : b2.subList(0, b2.size() - this.f10150d.b())) {
                    boolean b3 = c.b(file.getAbsolutePath());
                    if (this.f10150d.c() != null) {
                        this.f10150d.c().a(file.getName(), b3);
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.a.a.b
    public void a(a aVar, File file, List<String> list) {
        super.a(aVar, file, list);
    }
}
