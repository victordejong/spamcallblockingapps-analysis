package p189o4;

import android.support.p012v4.media.C0082b;
import com.google.android.play.core.internal.zzck;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: o4.m */
/* loaded from: classes-dex2jar.jar:o4/m.class */
public final class C3876m {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v93 */
    /* renamed from: a */
    public static long m1742a(AbstractC3877n abstractC3877n, InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new zzck(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read != 4) {
            throw new zzck(C0082b.m8758d(30, "Unexpected version=", read));
        }
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long j2 = j - c;
            try {
                int read2 = dataInputStream.read();
                if (read2 == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (read2 == 0) {
                    return c;
                }
                switch (read2) {
                    case 247:
                        read2 = dataInputStream.readUnsignedShort();
                        m1740c(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 248:
                        read2 = dataInputStream.readInt();
                        m1740c(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                    case 249:
                        long readUnsignedShort = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m1741b(bArr, abstractC3877n, outputStream, readUnsignedShort, read2, j2);
                        break;
                    case 250:
                        long readUnsignedShort2 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readUnsignedShort();
                        m1741b(bArr, abstractC3877n, outputStream, readUnsignedShort2, read2, j2);
                        break;
                    case 251:
                        long readUnsignedShort3 = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.readInt();
                        m1741b(bArr, abstractC3877n, outputStream, readUnsignedShort3, read2, j2);
                        break;
                    case 252:
                        long readInt2 = dataInputStream.readInt();
                        read2 = dataInputStream.read();
                        if (read2 == -1) {
                            throw new IOException("Unexpected end of patch");
                        }
                        m1741b(bArr, abstractC3877n, outputStream, readInt2, read2, j2);
                        break;
                    case 253:
                        long readInt3 = dataInputStream.readInt();
                        read2 = dataInputStream.readUnsignedShort();
                        m1741b(bArr, abstractC3877n, outputStream, readInt3, read2, j2);
                        break;
                    case 254:
                        long readInt4 = dataInputStream.readInt();
                        read2 = dataInputStream.readInt();
                        m1741b(bArr, abstractC3877n, outputStream, readInt4, read2, j2);
                        break;
                    case 255:
                        long readLong = dataInputStream.readLong();
                        read2 = dataInputStream.readInt();
                        m1741b(bArr, abstractC3877n, outputStream, readLong, read2, j2);
                        break;
                    default:
                        m1740c(bArr, dataInputStream, outputStream, read2, j2);
                        break;
                }
                r0 = c + read2;
            } finally {
                outputStream.flush();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007c, code lost:
        r9.write(r7, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0085, code lost:
        r12 = r12 - r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1741b(byte[] r7, p189o4.AbstractC3877n r8, java.io.OutputStream r9, long r10, int r12, long r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p189o4.C3876m.m1741b(byte[], o4.n, java.io.OutputStream, long, int, long):void");
    }

    /* renamed from: c */
    public static void m1740c(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i, long j) throws IOException {
        if (i >= 0) {
            if (i > j) {
                throw new IOException("Output length overrun");
            }
            while (i > 0) {
                try {
                    int min = Math.min(i, 16384);
                    dataInputStream.readFully(bArr, 0, min);
                    outputStream.write(bArr, 0, min);
                    i -= min;
                } catch (EOFException e) {
                    throw new IOException("patch underrun");
                }
            }
            return;
        }
        throw new IOException("copyLength negative");
    }
}
