package androidx.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* renamed from: androidx.multidex.b */
/* loaded from: classes-dex2jar.jar:androidx/multidex/b.class */
final class C0408b {

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* renamed from: a */
    static long m12868a(RandomAccessFile randomAccessFile, C0409a aVar) {
        CRC32 crc32 = new CRC32();
        long j = aVar.f2152b;
        randomAccessFile.seek(aVar.f2151a);
        int min = (int) Math.min(16384L, j);
        byte[] bArr = new byte[16384];
        while (true) {
            int read = randomAccessFile.read(bArr, 0, min);
            if (read == -1) {
                break;
            }
            crc32.update(bArr, 0, read);
            j -= read;
            if (j == 0) {
                break;
            }
            min = (int) Math.min(16384L, j);
        }
        return crc32.getValue();
    }

    /* renamed from: b */
    static C0409a m12867b(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length() - 22;
        long j = 0;
        if (length >= 0) {
            j = length - 65536;
            if (j < 0) {
            }
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    C0409a aVar = new C0409a();
                    aVar.f2152b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    aVar.f2151a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return aVar;
                }
                length--;
            } while (length >= j);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
