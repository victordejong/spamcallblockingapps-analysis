package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import android.content.Context;
import com.bytedance.sdk.openadsdk.preload.geckox.h.b;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a.class */
public class a {
    public static com.bytedance.sdk.openadsdk.preload.geckox.buffer.a a(Context context, File file, long j) throws IOException {
        com.bytedance.sdk.openadsdk.preload.geckox.buffer.a b2 = b(context, file, j);
        b.a("gecko-debug-tag", "buffer type:" + b2.getClass());
        return b2;
    }

    private static com.bytedance.sdk.openadsdk.preload.geckox.buffer.a b(Context context, File file, long j) throws IOException {
        if (j <= 0) {
            try {
                return new b(file);
            } catch (Exception e) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e.getMessage(), e);
            }
        } else {
            try {
                return new MMapBuffer(j, file);
            } catch (Exception e2) {
                b.a("gecko-debug-tag", "mmap failed:", e2);
                try {
                    return new c(j, file);
                } catch (Exception e3) {
                    throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e3.getMessage(), e3);
                }
            }
        }
    }
}
