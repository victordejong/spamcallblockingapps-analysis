package androidx.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* renamed from: androidx.multidex.b */
/* loaded from: classes-dex2jar.jar:androidx/multidex/b.class */
final class C0408b {

    /* renamed from: androidx.multidex.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/b$a.class */
    public static class C0409a {

        /* renamed from: a */
        long f2151a;

        /* renamed from: b */
        long f2152b;

        C0409a() {
        }
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: a */
    static long m12868a(RandomAccessFile randomAccessFile, C0409a c0409a) {
        CRC32 crc32 = new CRC32();
        char c = c0409a.f2152b;
        randomAccessFile.seek(c0409a.f2151a);
        int min = (int) Math.min(16384L, (long) c);
        byte[] bArr = new byte[16384];
        while (true) {
            int read = randomAccessFile.read(bArr, 0, min);
            if (read == -1) {
                break;
            }
            crc32.update(bArr, 0, read);
            c -= read;
            if (c == 0) {
                break;
            }
            min = (int) Math.min(16384L, (long) c);
        }
        return crc32.getValue();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* renamed from: b */
    static C0409a m12867b(RandomAccessFile randomAccessFile) {
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
                C0409a c0409a = new C0409a();
                c0409a.f2152b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                c0409a.f2151a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return c0409a;
            }
            length--;
        } while (length >= c);
        throw new ZipException("End Of Central Directory signature not found");
    }

    /* renamed from: c */
    public static long m12866c(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return m12868a(randomAccessFile, m12867b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
