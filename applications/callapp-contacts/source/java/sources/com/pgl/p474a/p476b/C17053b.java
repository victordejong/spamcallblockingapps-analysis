package com.pgl.p474a.p476b;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.ZipFile;
/* renamed from: com.pgl.a.b.b */
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/b.class */
public final class C17053b {
    /* renamed from: a */
    public static void m5953a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e) {
        }
    }

    /* renamed from: a */
    public static void m5952a(ZipFile zipFile) {
        if (zipFile == null) {
            return;
        }
        try {
            zipFile.close();
        } catch (IOException e) {
        }
    }
}
