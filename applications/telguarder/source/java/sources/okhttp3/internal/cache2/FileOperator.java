package okhttp3.internal.cache2;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bJ\u001e\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m400d2 = {"Lokhttp3/internal/cache2/FileOperator;", "", "fileChannel", "Ljava/nio/channels/FileChannel;", "(Ljava/nio/channels/FileChannel;)V", "read", "", POBConstants.KEY_POSITION, "", "sink", "Lokio/Buffer;", "byteCount", "write", "source", "okhttp"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/internal/cache2/FileOperator.class */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public final void read(long j, Buffer sink, long j2) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        ?? r8 = j;
        ?? r11 = j2;
        if (i >= 0) {
            while (r11 > 0) {
                long transferTo = this.fileChannel.transferTo(r8, r11, sink);
                r8 += transferTo;
                r11 -= transferTo;
            }
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.nio.channels.FileChannel] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    public final void write(long j, Buffer source, long j2) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (j2 < 0 || j2 > source.size()) {
            throw new IndexOutOfBoundsException();
        }
        char c = j;
        char c2 = j2;
        while (true) {
            char c3 = c2;
            if (c3 <= 0) {
                return;
            }
            long transferFrom = this.fileChannel.transferFrom(source, c, c3);
            c += transferFrom;
            c2 = c3 - transferFrom;
        }
    }
}
