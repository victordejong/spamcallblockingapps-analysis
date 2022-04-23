package c;

import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lokio/BlackholeSink;", "Lokio/Sink;", "()V", EventConstants.CLOSE, "", "flush", "timeout", "Lokio/Timeout;", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/e.class */
public final class e implements ab {
    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // c.ab, java.io.Flushable
    public final void flush() {
    }

    @Override // c.ab
    public final ae timeout() {
        return ae.NONE;
    }

    @Override // c.ab
    public final void write(f source, long j) {
        p.d(source, "source");
        source.h(j);
    }
}
