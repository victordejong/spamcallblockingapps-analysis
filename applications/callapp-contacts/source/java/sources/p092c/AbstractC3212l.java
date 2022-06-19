package p092c;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b&\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\r\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u0007J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0013\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0011"}, m4298d2 = {"Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "(Lokio/Source;)V", "()Lokio/Source;", EventConstants.CLOSE, "", "-deprecated_delegate", "read", "", "sink", "Lokio/Buffer;", "byteCount", "timeout", "Lokio/Timeout;", "toString", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.l */
/* loaded from: classes-dex2jar.jar:c/l.class */
public abstract class AbstractC3212l implements AbstractC3190ad {
    private final AbstractC3190ad delegate;

    public AbstractC3212l(AbstractC3190ad delegate) {
        C18524p.m3840d(delegate, "delegate");
        this.delegate = delegate;
    }

    /* renamed from: -deprecated_delegate */
    public final AbstractC3190ad m47155deprecated_delegate() {
        return this.delegate;
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    public final AbstractC3190ad delegate() {
        return this.delegate;
    }

    @Override // p092c.AbstractC3190ad
    public long read(C3202f sink, long j) throws IOException {
        C18524p.m3840d(sink, "sink");
        return this.delegate.read(sink, j);
    }

    @Override // p092c.AbstractC3190ad
    public C3191ae timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
