package okhttp3.internal.cache2;

import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bJ%\u0010\n\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\n\u0010\bR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/cache2/FileOperator;", "", "pos", "Lokio/Buffer;", "sink", "byteCount", "", "read", "(JLokio/Buffer;J)V", "source", "write", "Ljava/nio/channels/FileChannel;", "fileChannel", "Ljava/nio/channels/FileChannel;", "<init>", "(Ljava/nio/channels/FileChannel;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/cache2/FileOperator.class */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(@NotNull FileChannel fileChannel) {
        Intrinsics.m1830e(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j, @NotNull Buffer sink, long j2) {
        Intrinsics.m1830e(sink, "sink");
        if (j2 >= 0) {
            while (j2 > 0) {
                long transferTo = this.fileChannel.transferTo(j, j2, sink);
                j += transferTo;
                j2 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void write(long r8, @org.jetbrains.annotations.NotNull okio.Buffer r10, long r11) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r10
            java.lang.String r1 = "source"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0044
            r0 = r11
            r1 = r10
            long r1 = r1.m188v0()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0044
            r0 = r8
            r13 = r0
            r0 = r11
            r8 = r0
            r0 = r13
            r11 = r0
        L_0x0021:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0043
            r0 = r7
            java.nio.channels.FileChannel r0 = r0.fileChannel
            r1 = r10
            r2 = r11
            r3 = r8
            long r0 = r0.transferFrom(r1, r2, r3)
            r13 = r0
            r0 = r11
            r1 = r13
            long r0 = r0 + r1
            r11 = r0
            r0 = r8
            r1 = r13
            long r0 = r0 - r1
            r8 = r0
            goto L_0x0021
        L_0x0043:
            return
        L_0x0044:
            java.lang.IndexOutOfBoundsException r0 = new java.lang.IndexOutOfBoundsException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.FileOperator.write(long, okio.Buffer, long):void");
    }
}
