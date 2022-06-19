package com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a;

import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.f.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a/b.class */
public class C5373b extends AbstractC5372a {
    public C5373b(File file) {
        super(file);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.AbstractC5372a
    /* renamed from: a */
    protected InputStream mo32445a(File file, String str) throws IOException {
        C5381b.m32429a("gecko-debug-tag", "MyArchiveFileLoader, file:", new File(str).getCanonicalPath());
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.AbstractC5372a
    /* renamed from: b */
    protected boolean mo32444b(File file, String str) throws IOException {
        new File(str).getCanonicalPath();
        return false;
    }
}
