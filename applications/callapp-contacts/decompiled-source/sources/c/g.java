package c;

import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.b;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H'J\b\u0010\u0007\u001a\u00020��H&J\b\u0010\b\u001a\u00020��H&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u000fH&J \u0010\r\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0010\u0010\r\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\u0014H&J \u0010\r\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H&J\u0018\u0010\r\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0016H&J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\u0015H&J\u0010\u0010\u0018\u001a\u00020��2\u0006\u0010\u0019\u001a\u00020\u0011H&J\u0010\u0010\u001a\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\u001c\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\u001d\u001a\u00020��2\u0006\u0010\u001e\u001a\u00020\u0011H&J\u0010\u0010\u001f\u001a\u00020��2\u0006\u0010\u001e\u001a\u00020\u0011H&J\u0010\u0010 \u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010!\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0016H&J\u0010\u0010\"\u001a\u00020��2\u0006\u0010#\u001a\u00020\u0011H&J\u0010\u0010$\u001a\u00020��2\u0006\u0010#\u001a\u00020\u0011H&J\u0018\u0010%\u001a\u00020��2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H&J(\u0010%\u001a\u00020��2\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u00112\u0006\u0010(\u001a\u00020)H&J\u0010\u0010,\u001a\u00020��2\u0006\u0010&\u001a\u00020'H&J \u0010,\u001a\u00020��2\u0006\u0010&\u001a\u00020'2\u0006\u0010*\u001a\u00020\u00112\u0006\u0010+\u001a\u00020\u0011H&J\u0010\u0010-\u001a\u00020��2\u0006\u0010.\u001a\u00020\u0011H&R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006/"}, d2 = {"Lokio/BufferedSink;", "Lokio/Sink;", "Ljava/nio/channels/WritableByteChannel;", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "emit", "emitCompleteSegments", "flush", "", "outputStream", "Ljava/io/OutputStream;", "write", Payload.SOURCE, "", VastIconXmlManager.OFFSET, "", "byteCount", "byteString", "Lokio/ByteString;", "Lokio/Source;", "", "writeAll", "writeByte", b.f31754a, "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "", "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/g.class */
public interface g extends ab, WritableByteChannel {
    long a(ad adVar) throws IOException;

    f a();

    f b();

    g b(i iVar) throws IOException;

    g b(String str) throws IOException;

    g c() throws IOException;

    g c(int i) throws IOException;

    g c(byte[] bArr) throws IOException;

    g c(byte[] bArr, int i, int i2) throws IOException;

    g d() throws IOException;

    g e(int i) throws IOException;

    @Override // c.ab, java.io.Flushable
    void flush() throws IOException;

    g g(int i) throws IOException;

    g k(long j) throws IOException;

    g m(long j) throws IOException;
}
