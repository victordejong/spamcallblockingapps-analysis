package com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.f.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a/a.class */
public abstract class AbstractC5372a {

    /* renamed from: a */
    private File f18864a;

    public AbstractC5372a(File file) {
        this.f18864a = file;
    }

    /* renamed from: a */
    protected abstract InputStream mo32445a(File file, String str) throws IOException;

    /* renamed from: a */
    public final InputStream m32447a(String str) throws IOException {
        return mo32445a(this.f18864a, str);
    }

    /* renamed from: b */
    protected abstract boolean mo32444b(File file, String str) throws IOException;

    /* renamed from: b */
    public final boolean m32446b(String str) throws IOException {
        return mo32444b(this.f18864a, str);
    }
}
