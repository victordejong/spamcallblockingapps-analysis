package p092c;

import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b&\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\r\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\u0018\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0013\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0012"}, m4298d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "(Lokio/Sink;)V", "()Lokio/Sink;", EventConstants.CLOSE, "", "-deprecated_delegate", "flush", "timeout", "Lokio/Timeout;", "toString", "", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.k */
/* loaded from: classes-dex2jar.jar:c/k.class */
public abstract class AbstractC3211k implements AbstractC3188ab {
    private final AbstractC3188ab delegate;

    public AbstractC3211k(AbstractC3188ab delegate) {
        C18524p.m3840d(delegate, "delegate");
        this.delegate = delegate;
    }

    /* renamed from: -deprecated_delegate */
    public final AbstractC3188ab m47154deprecated_delegate() {
        return this.delegate;
    }

    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final AbstractC3188ab delegate() {
        return this.delegate;
    }

    @Override // p092c.AbstractC3188ab, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // p092c.AbstractC3188ab
    public C3191ae timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // p092c.AbstractC3188ab
    public void write(C3202f source, long j) throws IOException {
        C18524p.m3840d(source, "source");
        this.delegate.write(source, j);
    }
}
