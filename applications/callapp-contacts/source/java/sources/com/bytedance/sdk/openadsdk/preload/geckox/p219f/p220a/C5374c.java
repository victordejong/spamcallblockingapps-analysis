package com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a;

import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.f.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a/c.class */
public class C5374c extends AbstractC5372a {
    public C5374c(File file) {
        super(file);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.AbstractC5372a
    /* renamed from: a */
    protected InputStream mo32445a(File file, String str) throws IOException {
        File file2 = new File(file, "res" + File.separator + str);
        if (file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
            C5381b.m32429a("gecko-debug-tag", "NormalFileLoader, file:", file2.getAbsolutePath());
            return new FileInputStream(file2.getCanonicalFile());
        }
        throw new IOException("file not found");
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.AbstractC5372a
    /* renamed from: b */
    protected boolean mo32444b(File file, String str) throws IOException {
        return new File(file, "res" + File.separator + str).exists();
    }
}
