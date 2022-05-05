package p081h.p160h.p179e.p180a.p188o.p189g;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.h.e.a.o.g.f */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/f.class */
public class C6417f {
    /* renamed from: a */
    public static int m22699a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8];
        if (inputStream.read(bArr) >= 8) {
            int i = ((((((((((((((bArr[7] & Byte.MAX_VALUE) * 256) + (bArr[6] & 255)) * 256) + (bArr[5] & 255)) * 256) + (bArr[4] & 255)) * 256) + (bArr[3] & 255)) * 256) + (bArr[2] & 255)) * 256) + (bArr[1] & 255)) * 256) + (bArr[0] & 255);
            if (i >= 0) {
                int i2 = i;
                if ((bArr[7] & 128) != 0) {
                    i2 = -i;
                }
                return i2;
            }
            throw new IOException("Integer overflow: 64-bit offsets not supported.");
        }
        throw new IOException("Could not read offset.");
    }
}
