package org.spongycastle.openpgp;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.bcpg.S2K;
import org.spongycastle.util.p039io.Streams;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/SXprUtils.class */
class SXprUtils {
    SXprUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static S2K parseS2K(InputStream inputStream) throws IOException {
        skipOpenParenthesis(inputStream);
        readString(inputStream, inputStream.read());
        byte[] readBytes = readBytes(inputStream, inputStream.read());
        final long parseLong = Long.parseLong(readString(inputStream, inputStream.read()));
        skipCloseParenthesis(inputStream);
        return new S2K(2, readBytes, (int) parseLong) { // from class: org.spongycastle.openpgp.SXprUtils.1
            @Override // org.spongycastle.bcpg.S2K
            public long getIterationCount() {
                return parseLong;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readBytes(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[readLength(inputStream, i)];
        Streams.readFully(inputStream, bArr);
        return bArr;
    }

    private static int readLength(InputStream inputStream, int i) throws IOException {
        int i2 = i - 48;
        while (true) {
            int read = inputStream.read();
            if (read < 0 || read == 58) {
                break;
            }
            i2 = ((i2 * 10) + read) - 48;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String readString(InputStream inputStream, int i) throws IOException {
        char[] cArr = new char[readLength(inputStream, i)];
        for (int i2 = 0; i2 != cArr.length; i2++) {
            cArr[i2] = (char) inputStream.read();
        }
        return new String(cArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void skipCloseParenthesis(InputStream inputStream) throws IOException {
        if (inputStream.read() != 41) {
            throw new IOException("unknown character encountered");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void skipOpenParenthesis(InputStream inputStream) throws IOException {
        if (inputStream.read() != 40) {
            throw new IOException("unknown character encountered");
        }
    }
}
