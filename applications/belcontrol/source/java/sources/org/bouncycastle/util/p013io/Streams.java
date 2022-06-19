package org.bouncycastle.util.p013io;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: org.bouncycastle.util.io.Streams */
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/io/Streams.class */
public final class Streams {
    private static int BUFFER_SIZE = 512;

    public static void drain(InputStream inputStream) {
        int i = BUFFER_SIZE;
        do {
        } while (inputStream.read(new byte[i], 0, i) >= 0);
    }

    public static void pipeAll(InputStream inputStream, OutputStream outputStream) {
        int i = BUFFER_SIZE;
        byte[] bArr = new byte[i];
        while (true) {
            int read = inputStream.read(bArr, 0, i);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public static long pipeAllLimited(InputStream inputStream, long j, OutputStream outputStream) {
        int i = BUFFER_SIZE;
        byte[] bArr = new byte[i];
        char c = 0;
        while (true) {
            int read = inputStream.read(bArr, 0, i);
            if (read >= 0) {
                c += read;
                if (c > j) {
                    throw new StreamOverflowException("Data Overflow");
                }
                outputStream.write(bArr, 0, read);
            } else {
                return c;
            }
        }
    }

    public static byte[] readAll(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAll(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] readAllLimited(InputStream inputStream, int i) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        pipeAllLimited(inputStream, i, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static int readFully(InputStream inputStream, byte[] bArr) {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3;
        int read;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (read = inputStream.read(bArr, i + i3, i2 - i3)) < 0) {
                break;
            }
            i4 = i3 + read;
        }
        return i3;
    }
}
