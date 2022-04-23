package com.bytedance.sdk.openadsdk.preload.geckox.f.a;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private File f10201a;

    public a(File file) {
        this.f10201a = file;
    }

    protected abstract InputStream a(File file, String str) throws IOException;

    public final InputStream a(String str) throws IOException {
        return a(this.f10201a, str);
    }

    protected abstract boolean b(File file, String str) throws IOException;

    public final boolean b(String str) throws IOException {
        return b(this.f10201a, str);
    }
}
