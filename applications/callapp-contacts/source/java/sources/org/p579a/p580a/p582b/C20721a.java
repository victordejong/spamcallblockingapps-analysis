package org.p579a.p580a.p582b;

import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: org.a.a.b.a */
/* loaded from: classes5-dex2jar.jar:org/a/a/b/a.class */
public final class C20721a {
    /* renamed from: a */
    public static int m605a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        int i = 0;
        while (true) {
            int i2 = i;
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
                i = i2 + read;
            } else {
                return i2;
            }
        }
    }

    /* renamed from: a */
    public static void m606a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
