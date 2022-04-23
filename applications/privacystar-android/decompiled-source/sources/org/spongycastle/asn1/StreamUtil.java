package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/StreamUtil.class */
class StreamUtil {
    private static final long MAX_MEMORY = Runtime.getRuntime().maxMemory();

    StreamUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateBodyLength(int i) {
        int i2 = 1;
        int i3 = 1;
        if (i > 127) {
            int i4 = 1;
            while (true) {
                i >>>= 8;
                if (i == 0) {
                    break;
                }
                i4++;
            }
            int i5 = (i4 - 1) * 8;
            while (true) {
                i2 = i3;
                if (i5 < 0) {
                    break;
                }
                i3++;
                i5 -= 8;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateTagLength(int i) throws IOException {
        int i2;
        int i3;
        int i4 = 1;
        if (i >= 31) {
            if (i < 128) {
                i4 = 2;
            } else {
                byte[] bArr = new byte[5];
                int length = bArr.length - 1;
                bArr[length] = (byte) (i & 127);
                do {
                    i2 = i >> 7;
                    i3 = length - 1;
                    bArr[i3] = (byte) ((i2 & 127) | 128);
                    length = i3;
                    i = i2;
                } while (i2 > 127);
                i4 = 1 + (bArr.length - i3);
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int findLimit(InputStream inputStream) {
        if (inputStream instanceof LimitedInputStream) {
            return ((LimitedInputStream) inputStream).getRemaining();
        }
        if (inputStream instanceof ASN1InputStream) {
            return ((ASN1InputStream) inputStream).getLimit();
        }
        if (inputStream instanceof ByteArrayInputStream) {
            return ((ByteArrayInputStream) inputStream).available();
        }
        if (inputStream instanceof FileInputStream) {
            try {
                FileChannel channel = ((FileInputStream) inputStream).getChannel();
                long size = channel != null ? channel.size() : 2147483647L;
                if (size < 2147483647L) {
                    return (int) size;
                }
            } catch (IOException e) {
            }
        }
        if (MAX_MEMORY > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) MAX_MEMORY;
    }
}
