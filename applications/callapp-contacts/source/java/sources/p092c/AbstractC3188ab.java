package p092c;

import com.appsflyer.internal.referrer.Payload;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import kotlin.Metadata;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\bf\u0018��2\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0004H&J\b\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, m4298d2 = {"Lokio/Sink;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", EventConstants.CLOSE, "", "flush", "timeout", "Lokio/Timeout;", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.ab */
/* loaded from: classes-dex2jar.jar:c/ab.class */
public interface AbstractC3188ab extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    @Override // java.io.Flushable
    void flush() throws IOException;

    C3191ae timeout();

    void write(C3202f c3202f, long j) throws IOException;
}
