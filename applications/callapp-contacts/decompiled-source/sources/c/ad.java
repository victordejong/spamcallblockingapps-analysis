package c;

import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H&J\b\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lokio/Source;", "Ljava/io/Closeable;", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/ad.class */
public interface ad extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(f fVar, long j) throws IOException;

    ae timeout();
}
