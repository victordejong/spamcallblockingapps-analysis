package okhttp3.internal.cache2;

import java.nio.channels.FileChannel;
import okio.Buffer;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/FileOperator.class */
final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        this.fileChannel = fileChannel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public void read(long j, Buffer buffer, long j2) {
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        ?? r8 = j;
        ?? r11 = j2;
        if (i >= 0) {
            while (r11 > 0) {
                long transferTo = this.fileChannel.transferTo(r8, r11, buffer);
                r8 += transferTo;
                r11 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    public void write(long j, Buffer buffer, long j2) {
        if (j2 < 0 || j2 > buffer.size()) {
            throw new IndexOutOfBoundsException();
        }
        char c = j2;
        char c2 = j;
        while (c > 0) {
            long transferFrom = this.fileChannel.transferFrom(buffer, c2, c);
            c2 += transferFrom;
            c -= transferFrom;
        }
    }
}
