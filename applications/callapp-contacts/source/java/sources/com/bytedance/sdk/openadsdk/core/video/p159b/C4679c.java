package com.bytedance.sdk.openadsdk.core.video.p159b;

import com.bytedance.sdk.openadsdk.p145b.C4350c;
import com.bytedance.sdk.openadsdk.utils.C5467k;
import java.io.File;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/b/c.class */
public class C4679c extends C4350c {
    public C4679c(int i, int i2) {
        super(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.C4350c, com.bytedance.sdk.openadsdk.p145b.AbstractC4347b
    /* renamed from: a */
    public void mo34552a(List<File> list) {
        int size = list.size();
        if (!mo35740a(0L, size)) {
            for (File file : list) {
                C5467k.m32137c(file);
                int i = size - 1;
                size = i;
                if (mo35739a(file, 0L, i)) {
                    return;
                }
            }
        }
    }
}
