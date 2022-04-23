package com.pgl.a.b;

import java.io.Closeable;
import java.io.IOException;
import java.util.zip.ZipFile;
/* loaded from: classes4-dex2jar.jar:com/pgl/a/b/b.class */
public final class b {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException e) {
            }
        }
    }
}
