package android.support.multidex;

import android.support.p001v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
/* loaded from: classes-dex2jar.jar:android/support/multidex/ZipUtil.class */
final class ZipUtil {
    private static final int BUFFER_SIZE = 16384;
    private static final int ENDHDR = 22;
    private static final int ENDSIG = 101010256;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/multidex/ZipUtil$CentralDirectory.class */
    public static class CentralDirectory {
        long offset;
        long size;

        CentralDirectory() {
        }
    }

    ZipUtil() {
    }

    static long computeCrcOfCentralDir(RandomAccessFile randomAccessFile, CentralDirectory centralDirectory) throws IOException {
        CRC32 crc32 = new CRC32();
        long j = centralDirectory.size;
        randomAccessFile.seek(centralDirectory.offset);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PREPARE, j));
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j -= read;
            if (j == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min((long) PlaybackStateCompat.ACTION_PREPARE, j));
        }
        return crc32.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.support.multidex.ZipUtil.CentralDirectory findCentralDirectory(java.io.RandomAccessFile r6) throws java.io.IOException, java.util.zip.ZipException {
        /*
            r0 = r6
            long r0 = r0.length()
            r1 = 22
            long r0 = r0 - r1
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0039
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "File too short to be a zip file: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r6
            long r1 = r1.length()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.util.zip.ZipException r0 = new java.util.zip.ZipException
            r1 = r0
            r2 = r11
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0039:
            r0 = r7
            r1 = 65536(0x10000, double:3.2379E-319)
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x004a
            goto L_0x004d
        L_0x004a:
            r0 = r12
            r9 = r0
        L_0x004d:
            r0 = 101010256(0x6054b50, float:2.506985E-35)
            int r0 = java.lang.Integer.reverseBytes(r0)
            r14 = r0
        L_0x0054:
            r0 = r6
            r1 = r7
            r0.seek(r1)
            r0 = r6
            int r0 = r0.readInt()
            r1 = r14
            if (r0 != r1) goto L_0x00a8
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            android.support.multidex.ZipUtil$CentralDirectory r0 = new android.support.multidex.ZipUtil$CentralDirectory
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r6
            int r1 = r1.readInt()
            int r1 = java.lang.Integer.reverseBytes(r1)
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r0.size = r1
            r0 = r11
            r1 = r6
            int r1 = r1.readInt()
            int r1 = java.lang.Integer.reverseBytes(r1)
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r0.offset = r1
            r0 = r11
            return r0
        L_0x00a8:
            r0 = r7
            r1 = 1
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r7 = r0
            r0 = r12
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0054
            java.util.zip.ZipException r0 = new java.util.zip.ZipException
            r1 = r0
            java.lang.String r2 = "End Of Central Directory signature not found"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.multidex.ZipUtil.findCentralDirectory(java.io.RandomAccessFile):android.support.multidex.ZipUtil$CentralDirectory");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getZipCrc(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return computeCrcOfCentralDir(randomAccessFile, findCentralDirectory(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
