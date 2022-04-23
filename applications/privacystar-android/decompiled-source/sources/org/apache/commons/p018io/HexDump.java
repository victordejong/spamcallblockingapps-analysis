package org.apache.commons.p018io;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
/* renamed from: org.apache.commons.io.HexDump */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/HexDump.class */
public class HexDump {
    public static final String EOL = System.getProperty("line.separator");
    private static final char[] _hexcodes = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final int[] _shifts = {28, 24, 20, 16, 12, 8, 4, 0};

    private static StringBuilder dump(StringBuilder sb, byte b) {
        for (int i = 0; i < 2; i++) {
            sb.append(_hexcodes[(b >> _shifts[i + 6]) & 15]);
        }
        return sb;
    }

    private static StringBuilder dump(StringBuilder sb, long j) {
        for (int i = 0; i < 8; i++) {
            sb.append(_hexcodes[((int) (j >> _shifts[i])) & 15]);
        }
        return sb;
    }

    public static void dump(byte[] bArr, long j, OutputStream outputStream, int i) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (i < 0 || i >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException("illegal index: " + i + " into array of length " + bArr.length);
        } else if (outputStream == null) {
            throw new IllegalArgumentException("cannot write to nullstream");
        } else {
            long j2 = j + i;
            StringBuilder sb = new StringBuilder(74);
            while (i < bArr.length) {
                int length = bArr.length - i;
                int i2 = length;
                if (length > 16) {
                    i2 = 16;
                }
                dump(sb, j2).append(' ');
                for (int i3 = 0; i3 < 16; i3++) {
                    if (i3 < i2) {
                        dump(sb, bArr[i3 + i]);
                    } else {
                        sb.append("  ");
                    }
                    sb.append(' ');
                }
                for (int i4 = 0; i4 < i2; i4++) {
                    int i5 = i4 + i;
                    if (bArr[i5] < 32 || bArr[i5] >= Byte.MAX_VALUE) {
                        sb.append('.');
                    } else {
                        sb.append((char) bArr[i5]);
                    }
                }
                sb.append(EOL);
                outputStream.write(sb.toString().getBytes(Charset.defaultCharset()));
                outputStream.flush();
                sb.setLength(0);
                j2 += i2;
                i += 16;
            }
        }
    }
}
