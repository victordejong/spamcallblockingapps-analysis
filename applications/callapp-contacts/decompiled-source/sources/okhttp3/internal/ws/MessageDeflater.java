package okhttp3.internal.ws;

import c.ab;
import c.f;
import c.i;
import c.j;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0006J\u0014\u0010\u000f\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "noContextTakeover", "", "(Z)V", "deflatedBytes", "Lokio/Buffer;", "deflater", "Ljava/util/zip/Deflater;", "deflaterSink", "Lokio/DeflaterSink;", EventConstants.CLOSE, "", "deflate", "buffer", "endsWith", "suffix", "Lokio/ByteString;", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/ws/MessageDeflater.class */
public final class MessageDeflater implements Closeable {
    private final f deflatedBytes;
    private final Deflater deflater;
    private final j deflaterSink;
    private final boolean noContextTakeover;

    public MessageDeflater(boolean z) {
        this.noContextTakeover = z;
        f fVar = new f();
        this.deflatedBytes = fVar;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new j((ab) fVar, deflater);
    }

    private final boolean endsWith(f fVar, i iVar) {
        return fVar.a(fVar.f6289b - iVar.f(), iVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.deflaterSink.close();
    }

    public final void deflate(f buffer) throws IOException {
        i iVar;
        f.a a2;
        f.a aVar;
        p.d(buffer, "buffer");
        if (this.deflatedBytes.f6289b == 0) {
            if (this.noContextTakeover) {
                this.deflater.reset();
            }
            this.deflaterSink.write(buffer, buffer.f6289b);
            this.deflaterSink.flush();
            f fVar = this.deflatedBytes;
            iVar = MessageDeflaterKt.EMPTY_DEFLATE_BLOCK;
            if (endsWith(fVar, iVar)) {
                long j = this.deflatedBytes.f6289b;
                a2 = this.deflatedBytes.a(new f.a());
                try {
                    a2.b(j - 4);
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else {
                this.deflatedBytes.c(0);
            }
            f fVar2 = this.deflatedBytes;
            buffer.write(fVar2, fVar2.f6289b);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
