package com.bytedance.sdk.openadsdk.core.video.b;

import com.bytedance.sdk.openadsdk.utils.k;
import java.io.File;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/c.class */
public class c extends com.bytedance.sdk.openadsdk.b.c {
    public c(int i, int i2) {
        super(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.b.c, com.bytedance.sdk.openadsdk.b.b
    public void a(List<File> list) {
        int size = list.size();
        if (!a(0L, size)) {
            for (File file : list) {
                k.c(file);
                int i = size - 1;
                size = i;
                if (a(file, 0L, i)) {
                    return;
                }
            }
        }
    }
}
