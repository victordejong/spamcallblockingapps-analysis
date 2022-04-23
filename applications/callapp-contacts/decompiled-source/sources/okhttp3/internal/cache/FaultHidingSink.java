package okhttp3.internal.cache;

import c.ab;
import c.f;
import c.k;
import com.appsflyer.internal.referrer.Payload;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\b\u0010\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0007H\u0016J\b\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/cache/FaultHidingSink;", "Lokio/ForwardingSink;", "delegate", "Lokio/Sink;", "onException", "Lkotlin/Function1;", "Ljava/io/IOException;", "", "(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V", "hasErrors", "", "getOnException", "()Lkotlin/jvm/functions/Function1;", EventConstants.CLOSE, "flush", "write", Payload.SOURCE, "Lokio/Buffer;", "byteCount", "", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/FaultHidingSink.class */
public class FaultHidingSink extends k {
    private boolean hasErrors;
    private final Function1<IOException, v> onException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(ab delegate, Function1<? super IOException, v> onException) {
        super(delegate);
        p.d(delegate, "delegate");
        p.d(onException, "onException");
        this.onException = onException;
    }

    @Override // c.k, c.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.hasErrors) {
            try {
                super.close();
            } catch (IOException e) {
                this.hasErrors = true;
                this.onException.invoke(e);
            }
        }
    }

    @Override // c.k, c.ab, java.io.Flushable
    public void flush() {
        if (!this.hasErrors) {
            try {
                super.flush();
            } catch (IOException e) {
                this.hasErrors = true;
                this.onException.invoke(e);
            }
        }
    }

    public final Function1<IOException, v> getOnException() {
        return this.onException;
    }

    @Override // c.k, c.ab
    public void write(f source, long j) {
        p.d(source, "source");
        if (this.hasErrors) {
            source.h(j);
            return;
        }
        try {
            super.write(source, j);
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }
}
