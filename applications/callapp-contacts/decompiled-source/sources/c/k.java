package c;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b&\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\r\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0013\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0012"}, d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "(Lokio/Sink;)V", "()Lokio/Sink;", EventConstants.CLOSE, "", "-deprecated_delegate", "flush", "timeout", "Lokio/Timeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/k.class */
public abstract class k implements ab {
    private final ab delegate;

    public k(ab delegate) {
        p.d(delegate, "delegate");
        this.delegate = delegate;
    }

    /* renamed from: -deprecated_delegate  reason: not valid java name */
    public final ab m540deprecated_delegate() {
        return this.delegate;
    }

    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final ab delegate() {
        return this.delegate;
    }

    @Override // c.ab, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // c.ab
    public ae timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // c.ab
    public void write(f source, long j) throws IOException {
        p.d(source, "source");
        this.delegate.write(source, j);
    }
}
