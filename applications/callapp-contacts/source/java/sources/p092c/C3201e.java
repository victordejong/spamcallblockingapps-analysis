package p092c;

import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m4298d2 = {"Lokio/BlackholeSink;", "Lokio/Sink;", "()V", EventConstants.CLOSE, "", "flush", "timeout", "Lokio/Timeout;", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.e */
/* loaded from: classes-dex2jar.jar:c/e.class */
public final class C3201e implements AbstractC3188ab {
    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p092c.AbstractC3188ab, java.io.Flushable
    public final void flush() {
    }

    @Override // p092c.AbstractC3188ab
    public final C3191ae timeout() {
        return C3191ae.NONE;
    }

    @Override // p092c.AbstractC3188ab
    public final void write(C3202f source, long j) {
        C18524p.m3840d(source, "source");
        source.mo39114h(j);
    }
}
