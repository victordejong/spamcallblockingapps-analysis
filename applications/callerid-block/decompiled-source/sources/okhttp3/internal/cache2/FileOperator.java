package okhttp3.internal.cache2;

import java.nio.channels.FileChannel;
import okio.Buffer;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/FileOperator.class */
final class FileOperator {
    private final FileChannel fileChannel;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    public void read(long j, Buffer buffer, long j2) {
        if (j2 >= 0) {
            while (j2 > 0) {
                long transferTo = this.fileChannel.transferTo(j, j2, buffer);
                j += transferTo;
                j2 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(long r8, okio.Buffer r10, long r11) {
        /*
            r7 = this;
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x003a
            r0 = r11
            r1 = r10
            long r1 = r1.size()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x003a
            r0 = r8
            r13 = r0
            r0 = r11
            r8 = r0
        L_0x0017:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0039
            r0 = r7
            java.nio.channels.FileChannel r0 = r0.fileChannel
            r1 = r10
            r2 = r13
            r3 = r8
            long r0 = r0.transferFrom(r1, r2, r3)
            r11 = r0
            r0 = r13
            r1 = r11
            long r0 = r0 + r1
            r13 = r0
            r0 = r8
            r1 = r11
            long r0 = r0 - r1
            r8 = r0
            goto L_0x0017
        L_0x0039:
            return
        L_0x003a:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            r10 = r0
            goto L_0x0047
        L_0x0045:
            r0 = r10
            throw r0
        L_0x0047:
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.FileOperator.write(long, okio.Buffer, long):void");
    }
}
