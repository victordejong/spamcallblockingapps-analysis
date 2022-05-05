package okhttp3.internal.cache2;

import java.nio.channels.FileChannel;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/FileOperator.class */
final class FileOperator {
    private final FileChannel fileChannel;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void read(long r8, okio.Buffer r10, long r11) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0013
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0013:
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0036
            r0 = r7
            java.nio.channels.FileChannel r0 = r0.fileChannel
            r1 = r8
            r2 = r13
            r3 = r10
            long r0 = r0.transferTo(r1, r2, r3)
            r11 = r0
            r0 = r8
            r1 = r11
            long r0 = r0 + r1
            r8 = r0
            r0 = r13
            r1 = r11
            long r0 = r0 - r1
            r13 = r0
            goto L_0x0013
        L_0x0036:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.FileOperator.read(long, okio.Buffer, long):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(long r8, okio.Buffer r10, long r11) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x003d
            r0 = r8
            r13 = r0
            r0 = r11
            r8 = r0
            r0 = r11
            r1 = r10
            long r1 = r1.size()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001a
            goto L_0x003d
        L_0x001a:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003c
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
            goto L_0x001a
        L_0x003c:
            return
        L_0x003d:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.FileOperator.write(long, okio.Buffer, long):void");
    }
}
