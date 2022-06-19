package androidx.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* renamed from: androidx.multidex.b */
/* loaded from: classes-dex2jar.jar:androidx/multidex/b.class */
final class C0893b {

    /* renamed from: androidx.multidex.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/b$a.class */
    public static class C0894a {

        /* renamed from: a */
        long f3904a;

        /* renamed from: b */
        long f3905b;

        C0894a() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: a */
    static long m32194a(RandomAccessFile randomAccessFile, C0894a c0894a) {
        CRC32 crc32 = new CRC32();
        char c = c0894a.f3905b;
        randomAccessFile.seek(c0894a.f3904a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, (long) c));
        while (true) {
            int i = read;
            if (i == -1) {
                break;
            }
            crc32.update(bArr, 0, i);
            c -= i;
            if (c == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, (long) c));
        }
        return crc32.getValue();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* renamed from: b */
    static C0894a m32193b(RandomAccessFile randomAccessFile) {
        char length = randomAccessFile.length() - 22;
        if (length < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        char c = length - 0;
        if (c < 0) {
            c = 0;
        }
        int reverseBytes = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(length);
            if (randomAccessFile.readInt() == reverseBytes) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                C0894a c0894a = new C0894a();
                c0894a.f3905b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                c0894a.f3904a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return c0894a;
            }
            length--;
        } while (length >= c);
        throw new ZipException("End Of Central Directory signature not found");
    }

    /* renamed from: c */
    public static long m32192c(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return m32194a(randomAccessFile, m32193b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
