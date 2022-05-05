package com.firstorion.libcyd;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/IOUtil.class */
final class IOUtil {
    private IOUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void copyStreams(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }
}
