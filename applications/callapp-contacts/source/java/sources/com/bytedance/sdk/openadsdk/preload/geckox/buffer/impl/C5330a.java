package com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl;

import android.content.Context;
import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.buffer.impl.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/impl/a.class */
public class C5330a {
    /* renamed from: a */
    public static AbstractC5326a m32535a(Context context, File file, long j) throws IOException {
        AbstractC5326a m32534b = m32534b(context, file, j);
        C5381b.m32429a("gecko-debug-tag", "buffer type:" + m32534b.getClass());
        return m32534b;
    }

    /* renamed from: b */
    private static AbstractC5326a m32534b(Context context, File file, long j) throws IOException {
        if (j <= 0) {
            try {
                return new C5331b(file);
            } catch (Exception e) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e.getMessage(), e);
            }
        }
        try {
            return new MMapBuffer(j, file);
        } catch (Exception e2) {
            C5381b.m32430a("gecko-debug-tag", "mmap failed:", e2);
            try {
                return new C5332c(j, file);
            } catch (Exception e3) {
                throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e3.getMessage(), e3);
            }
        }
    }
}
