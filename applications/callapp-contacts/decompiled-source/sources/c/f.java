package c;

import android.support.v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.model.PropertyFlags;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.h.d;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020��H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020��H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020��J$\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0018\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\fJ \u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020��H\u0016J\b\u0010!\u001a\u00020��H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\fH\u0087\u0002¢\u0006\u0002\b+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\fH\u0016J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\b\u0010@\u001a\u00020\u0019H\u0016J\b\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020\f2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010M\u001a\u00020)H\u0016J\b\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010P\u001a\u00020\fH\u0016J\u000e\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\fJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010U\u001a\u00020\fH\u0016J\b\u0010V\u001a\u00020/H\u0016J\b\u0010W\u001a\u00020/H\u0016J\b\u0010X\u001a\u00020\fH\u0016J\b\u0010Y\u001a\u00020\fH\u0016J\b\u0010Z\u001a\u00020[H\u0016J\b\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\fH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\b\u0010q\u001a\u00020rH\u0016J\b\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H��¢\u0006\u0002\bvJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010{\u001a\u00020\f2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020��2\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0010\u0010\u007f\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020��2\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\n8��@��X\u0081\u000e¢\u0006\u0002\n��R&\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0091\u0001"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "()V", "buffer", "getBuffer", "()Lokio/Buffer;", "head", "Lokio/Segment;", "<set-?>", "", "size", "()J", "setSize$okio", "(J)V", AdType.CLEAR, "", "clone", EventConstants.CLOSE, "completeSegmentByteCount", "copy", "copyTo", "out", "Ljava/io/OutputStream;", VastIconXmlManager.OFFSET, "byteCount", "digest", "Lokio/ByteString;", "algorithm", "", "emit", "emitCompleteSegments", "equals", "", "other", "", "exhausted", "flush", "get", "", "pos", "getByte", "index", "-deprecated_getByte", "hashCode", "", "hmac", "key", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", com.google.api.client.googleapis.notifications.b.f31754a, "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "md5", "outputStream", "peek", "rangeEquals", "bytesOffset", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readAndWriteUnsafe", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFrom", "input", "forever", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "charset", "Ljava/nio/charset/Charset;", "readUnsafe", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", "sha1", "sha256", "sha512", "-deprecated_size", EventConstants.SKIP, "snapshot", "timeout", "Lokio/Timeout;", "toString", "writableSegment", "minimumCapacity", "writableSegment$okio", "write", Payload.SOURCE, "byteString", "Lokio/Source;", "writeAll", "writeByte", "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "beginIndex", "endIndex", "writeTo", "writeUtf8", "writeUtf8CodePoint", "codePoint", "UnsafeCursor", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/f.class */
public final class f implements g, h, Cloneable, ByteChannel {

    /* renamed from: a  reason: collision with root package name */
    public y f6288a;

    /* renamed from: b  reason: collision with root package name */
    public long f6289b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "()V", "buffer", "Lokio/Buffer;", "data", "", "end", "", VastIconXmlManager.OFFSET, "", "readWrite", "", "segment", "Lokio/Segment;", EventConstants.START, EventConstants.CLOSE, "", "expandBuffer", "minByteCount", "next", "resizeBuffer", "newSize", "seek", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/f$a.class */
    public static final class a implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        public f f6290a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f6291b;

        /* renamed from: d  reason: collision with root package name */
        public byte[] f6293d;
        private y g;

        /* renamed from: c  reason: collision with root package name */
        public long f6292c = -1;
        public int e = -1;
        public int f = -1;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2, types: [long] */
        /* JADX WARN: Type inference failed for: r14v4 */
        /* JADX WARN: Type inference failed for: r19v2, types: [long] */
        /* JADX WARN: Type inference failed for: r19v5, types: [long] */
        /* JADX WARN: Type inference failed for: r19v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int a(long r8) {
            /*
                Method dump skipped, instructions count: 538
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: c.f.a.a(long):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* JADX WARN: Unknown variable types count: 3 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long b(long r7) {
            /*
                Method dump skipped, instructions count: 368
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: c.f.a.b(long):long");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f6290a != null) {
                this.f6290a = null;
                this.g = null;
                this.f6292c = -1L;
                this.f6293d = null;
                this.e = -1;
                this.f = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"okio/Buffer$inputStream$1", "Ljava/io/InputStream;", "available", "", EventConstants.CLOSE, "", "read", "sink", "", VastIconXmlManager.OFFSET, "byteCount", "toString", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/f$b.class */
    public static final class b extends InputStream {
        b() {
        }

        @Override // java.io.InputStream
        public final int available() {
            return (int) Math.min(f.this.f6289b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.InputStream
        public final int read() {
            if (f.this.f6289b > 0) {
                return f.this.i() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(byte[] sink, int i, int i2) {
            p.d(sink, "sink");
            return f.this.a(sink, i, i2);
        }

        public final String toString() {
            return f.this + ".inputStream()";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��)\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH\u0016¨\u0006\u000e"}, d2 = {"okio/Buffer$outputStream$1", "Ljava/io/OutputStream;", EventConstants.CLOSE, "", "flush", "toString", "", "write", "data", "", VastIconXmlManager.OFFSET, "", "byteCount", com.google.api.client.googleapis.notifications.b.f31754a, "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/f$c.class */
    public static final class c extends OutputStream {
        public c() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
        }

        public final String toString() {
            return f.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            f.this.c(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] data, int i, int i2) {
            p.d(data, "data");
            f.this.c(data, i, i2);
        }
    }

    private String a(long j, Charset charset) throws EOFException {
        p.d(charset, "charset");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
        } else if (this.f6289b < j) {
            throw new EOFException();
        } else if (i == 0) {
            return "";
        } else {
            y yVar = this.f6288a;
            p.a(yVar);
            if (yVar.f6340b + j > yVar.f6341c) {
                return new String(g(j), charset);
            }
            byte[] bArr = yVar.f6339a;
            int i2 = yVar.f6340b;
            int i3 = (int) j;
            String str = new String(bArr, i2, i3, charset);
            yVar.f6340b += i3;
            this.f6289b -= j;
            if (yVar.f6340b == yVar.f6341c) {
                this.f6288a = yVar.c();
                z.a(yVar);
            }
            return str;
        }
    }

    private boolean a(long j, i bytes, int i) {
        p.d(bytes, "bytes");
        if (j < 0 || i < 0 || this.f6289b - j < i || bytes.f() - 0 < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (c(i2 + j) != bytes.b(i2 + 0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* JADX WARN: Type inference failed for: r10v11, types: [long] */
    /* JADX WARN: Type inference failed for: r10v13, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v10, types: [long] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long d(c.i r6) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.d(c.i):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private i i(int i) {
        if (i == 0) {
            return i.f6296c;
        }
        c.c.a(this.f6289b, 0L, i);
        y yVar = this.f6288a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            p.a(yVar);
            if (yVar.f6341c != yVar.f6340b) {
                i3 += yVar.f6341c - yVar.f6340b;
                i4++;
                yVar = yVar.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        y yVar2 = this.f6288a;
        int i5 = 0;
        while (i2 < i) {
            p.a(yVar2);
            bArr[i5] = yVar2.f6339a;
            i2 += yVar2.f6341c - yVar2.f6340b;
            iArr[i5] = Math.min(i2, i);
            iArr[((Object[]) bArr).length + i5] = yVar2.f6340b;
            yVar2.f6342d = true;
            i5++;
            yVar2 = yVar2.f;
        }
        return new aa((byte[][]) bArr, iArr);
    }

    @Override // c.h
    public final int a(s options) {
        p.d(options, "options");
        int a2 = c.a.a.a(this, options);
        if (a2 == -1) {
            return -1;
        }
        h(options.f6316b[a2].f());
        return a2;
    }

    public final int a(byte[] sink, int i, int i2) {
        p.d(sink, "sink");
        c.c.a(sink.length, i, i2);
        y yVar = this.f6288a;
        if (yVar == null) {
            return -1;
        }
        int min = Math.min(i2, yVar.f6341c - yVar.f6340b);
        i.a(yVar.f6339a, sink, i, yVar.f6340b, yVar.f6340b + min);
        yVar.f6340b += min;
        this.f6289b -= min;
        if (yVar.f6340b == yVar.f6341c) {
            this.f6288a = yVar.c();
            z.a(yVar);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6, types: [long] */
    /* JADX WARN: Type inference failed for: r11v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(byte r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.a(byte, long, long):long");
    }

    @Override // c.h
    public final long a(ab sink) throws IOException {
        p.d(sink, "sink");
        long j = this.f6289b;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    @Override // c.g
    public final long a(ad source) throws IOException {
        p.d(source, "source");
        long j = 0;
        while (true) {
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }

    public final a a(a unsafeCursor) {
        p.d(unsafeCursor, "unsafeCursor");
        if (unsafeCursor.f6290a == null) {
            unsafeCursor.f6290a = this;
            unsafeCursor.f6291b = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @Override // c.g, c.h
    public final f a() {
        return this;
    }

    public final f a(int i) {
        if (i < 128) {
            c(i);
        } else if (i < 2048) {
            y h = h(2);
            h.f6339a[h.f6341c] = (byte) ((i >> 6) | 192);
            h.f6339a[h.f6341c + 1] = (byte) ((i & 63) | 128);
            h.f6341c += 2;
            this.f6289b += 2;
        } else if (55296 <= i && 57343 >= i) {
            c(63);
        } else if (i < 65536) {
            y h2 = h(3);
            h2.f6339a[h2.f6341c] = (byte) ((i >> 12) | 224);
            h2.f6339a[h2.f6341c + 1] = (byte) (((i >> 6) & 63) | 128);
            h2.f6339a[h2.f6341c + 2] = (byte) ((i & 63) | 128);
            h2.f6341c += 3;
            this.f6289b += 3;
        } else if (i <= 1114111) {
            y h3 = h(4);
            h3.f6339a[h3.f6341c] = (byte) ((i >> 18) | 240);
            h3.f6339a[h3.f6341c + 1] = (byte) (((i >> 12) & 63) | 128);
            h3.f6339a[h3.f6341c + 2] = (byte) (((i >> 6) & 63) | 128);
            h3.f6339a[h3.f6341c + 3] = (byte) ((i & 63) | 128);
            h3.f6341c += 4;
            this.f6289b += 4;
        } else {
            throw new IllegalArgumentException("Unexpected code point: 0x" + c.c.a(i));
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c.f a(c.f r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.a(c.f, long, long):c.f");
    }

    /* renamed from: a */
    public final f b(i byteString) {
        p.d(byteString, "byteString");
        byteString.a(this, byteString.f());
        return this;
    }

    /* renamed from: a */
    public final f b(String string) {
        p.d(string, "string");
        return a(string, 0, string.length());
    }

    public final f a(String string, int i, int i2) {
        char charAt;
        p.d(string, "string");
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= string.length()) {
                    while (i < i2) {
                        char charAt2 = string.charAt(i);
                        if (charAt2 < 128) {
                            y h = h(1);
                            byte[] bArr = h.f6339a;
                            int i3 = h.f6341c - i;
                            int min = Math.min(i2, PropertyFlags.UNSIGNED - i3);
                            i++;
                            bArr[i + i3] = (byte) charAt2;
                            while (i < min && (charAt = string.charAt(i)) < 128) {
                                i++;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i4 = (i3 + i) - h.f6341c;
                            h.f6341c += i4;
                            this.f6289b += i4;
                        } else {
                            if (charAt2 < 2048) {
                                y h2 = h(2);
                                h2.f6339a[h2.f6341c] = (byte) ((charAt2 >> 6) | 192);
                                h2.f6339a[h2.f6341c + 1] = (byte) ((charAt2 & '?') | 128);
                                h2.f6341c += 2;
                                this.f6289b += 2;
                            } else if (charAt2 < 55296 || charAt2 > 57343) {
                                y h3 = h(3);
                                h3.f6339a[h3.f6341c] = (byte) ((charAt2 >> '\f') | 224);
                                h3.f6339a[h3.f6341c + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                h3.f6339a[h3.f6341c + 2] = (byte) ((charAt2 & '?') | 128);
                                h3.f6341c += 3;
                                this.f6289b += 3;
                            } else {
                                int i5 = i + 1;
                                char charAt3 = i5 < i2 ? string.charAt(i5) : (char) 0;
                                if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                                    c(63);
                                    i = i5;
                                } else {
                                    int i6 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                    y h4 = h(4);
                                    h4.f6339a[h4.f6341c] = (byte) ((i6 >> 18) | 240);
                                    h4.f6339a[h4.f6341c + 1] = (byte) (((i6 >> 12) & 63) | 128);
                                    h4.f6339a[h4.f6341c + 2] = (byte) (((i6 >> 6) & 63) | 128);
                                    h4.f6339a[h4.f6341c + 3] = (byte) ((i6 & 63) | 128);
                                    h4.f6341c += 4;
                                    this.f6289b += 4;
                                    i += 2;
                                }
                            }
                            i++;
                        }
                    }
                    return this;
                }
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
            }
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)).toString());
    }

    public final f a(String string, int i, int i2, Charset charset) {
        p.d(string, "string");
        p.d(charset, "charset");
        boolean z = true;
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 > string.length()) {
                    z = false;
                }
                if (!z) {
                    throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
                } else if (p.a(charset, d.f36719a)) {
                    return a(string, i, i2);
                } else {
                    String substring = string.substring(i, i2);
                    p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
                    byte[] bytes = substring.getBytes(charset);
                    p.b(bytes, "(this as java.lang.String).getBytes(charset)");
                    return c(bytes, 0, bytes.length);
                }
            } else {
                throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)).toString());
        }
    }

    @Override // c.h
    public final String a(Charset charset) {
        p.d(charset, "charset");
        return a(this.f6289b, charset);
    }

    @Override // c.h
    public final void a(long j) throws EOFException {
        if (this.f6289b < j) {
            throw new EOFException();
        }
    }

    @Override // c.h
    public final void a(f sink, long j) throws EOFException {
        p.d(sink, "sink");
        long j2 = this.f6289b;
        if (j2 >= j) {
            sink.write(this, j);
        } else {
            sink.write(this, j2);
            throw new EOFException();
        }
    }

    @Override // c.h
    public final void a(byte[] sink) throws EOFException {
        p.d(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int a2 = a(sink, i, sink.length - i);
            if (a2 != -1) {
                i += a2;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // c.h
    public final boolean a(long j, i bytes) {
        p.d(bytes, "bytes");
        return a(j, bytes, bytes.f());
    }

    @Override // c.g, c.h
    public final f b() {
        return this;
    }

    /* renamed from: b */
    public final f c(int i) {
        y h = h(1);
        byte[] bArr = h.f6339a;
        int i2 = h.f6341c;
        h.f6341c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f6289b++;
        return this;
    }

    /* renamed from: b */
    public final f c(byte[] source) {
        p.d(source, "source");
        return c(source, 0, source.length);
    }

    /* renamed from: b */
    public final f c(byte[] source, int i, int i2) {
        p.d(source, "source");
        long j = i2;
        c.c.a(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            y h = h(1);
            int min = Math.min(i3 - i, PropertyFlags.UNSIGNED - h.f6341c);
            byte[] bArr = h.f6339a;
            int i4 = h.f6341c;
            int i5 = i + min;
            i.a(source, bArr, i4, i, i5);
            h.f6341c += min;
            i = i5;
        }
        this.f6289b += j;
        return this;
    }

    @Override // c.h
    public final boolean b(long j) {
        return this.f6289b >= j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte c(long r8) {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f6289b
            r1 = r8
            r2 = 1
            c.c.a(r0, r1, r2)
            r0 = r7
            c.y r0 = r0.f6288a
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x001e
            r0 = 0
            kotlin.jvm.internal.p.a(r0)
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x001e:
            r0 = r7
            long r0 = r0.f6289b
            r11 = r0
            r0 = r11
            r1 = r8
            long r0 = r0 - r1
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0064
        L_0x002d:
            r0 = r11
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004f
            r0 = r10
            c.y r0 = r0.g
            r10 = r0
            r0 = r10
            kotlin.jvm.internal.p.a(r0)
            r0 = r11
            r1 = r10
            int r1 = r1.f6341c
            r2 = r10
            int r2 = r2.f6340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r11 = r0
            goto L_0x002d
        L_0x004f:
            r0 = r10
            kotlin.jvm.internal.p.a(r0)
            r0 = r10
            byte[] r0 = r0.f6339a
            r1 = r10
            int r1 = r1.f6340b
            long r1 = (long) r1
            r2 = r8
            long r1 = r1 + r2
            r2 = r11
            long r1 = r1 - r2
            int r1 = (int) r1
            r0 = r0[r1]
            return r0
        L_0x0064:
            r0 = 0
            r11 = r0
        L_0x0067:
            r0 = r10
            int r0 = r0.f6341c
            r1 = r10
            int r1 = r1.f6340b
            int r0 = r0 - r1
            long r0 = (long) r0
            r1 = r11
            long r0 = r0 + r1
            r13 = r0
            r0 = r13
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x008d
            r0 = r10
            c.y r0 = r0.f
            r10 = r0
            r0 = r10
            kotlin.jvm.internal.p.a(r0)
            r0 = r13
            r11 = r0
            goto L_0x0067
        L_0x008d:
            r0 = r10
            kotlin.jvm.internal.p.a(r0)
            r0 = r10
            byte[] r0 = r0.f6339a
            r1 = r10
            int r1 = r1.f6340b
            long r1 = (long) r1
            r2 = r8
            long r1 = r1 + r2
            r2 = r11
            long r1 = r1 - r2
            int r1 = (int) r1
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.c(long):byte");
    }

    public final long c(i targetBytes) {
        p.d(targetBytes, "targetBytes");
        return d(targetBytes);
    }

    @Override // c.g
    public final /* bridge */ /* synthetic */ g c() {
        return this;
    }

    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: d */
    public final f e(int i) {
        y h = h(2);
        byte[] bArr = h.f6339a;
        int i2 = h.f6341c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        h.f6341c = i3 + 1;
        this.f6289b += 2;
        return this;
    }

    @Override // c.g
    public final /* bridge */ /* synthetic */ g d() {
        return this;
    }

    @Override // c.h
    public final i d(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
        } else if (this.f6289b < j) {
            throw new EOFException();
        } else if (j < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new i(g(j));
        } else {
            i i = i((int) j);
            h(j);
            return i;
        }
    }

    public final String e(long j) throws EOFException {
        return a(j, d.f36719a);
    }

    @Override // c.h
    public final boolean e() {
        return this.f6289b == 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        long j = this.f6289b;
        f fVar = (f) obj;
        if (j != fVar.f6289b) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        y yVar = this.f6288a;
        p.a(yVar);
        y yVar2 = fVar.f6288a;
        p.a(yVar2);
        int i = yVar.f6340b;
        int i2 = yVar2.f6340b;
        long j2 = 0;
        while (j2 < this.f6289b) {
            long min = Math.min(yVar.f6341c - i, yVar2.f6341c - i2);
            long j3 = 0;
            int i3 = i;
            while (j3 < min) {
                if (yVar.f6339a[i3] != yVar2.f6339a[i2]) {
                    return false;
                }
                j3++;
                i3++;
                i2++;
            }
            yVar = yVar;
            i = i3;
            if (i3 == yVar.f6341c) {
                yVar = yVar.f;
                p.a(yVar);
                i = yVar.f6340b;
            }
            yVar2 = yVar2;
            i2 = i2;
            if (i2 == yVar2.f6341c) {
                yVar2 = yVar2.f;
                p.a(yVar2);
                i2 = yVar2.f6340b;
            }
            j2 += min;
        }
        return true;
    }

    /* renamed from: f */
    public final f g(int i) {
        y h = h(4);
        byte[] bArr = h.f6339a;
        int i2 = h.f6341c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        h.f6341c = i5 + 1;
        this.f6289b += 4;
        return this;
    }

    @Override // c.h
    public final h f() {
        return r.a(new u(this));
    }

    @Override // c.h
    public final String f(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return c.a.a.a(this, a2);
            }
            if (j2 < this.f6289b && c(j2 - 1) == 13 && c(j2) == 10) {
                return c.a.a.a(this, j2);
            }
            f fVar = new f();
            a(fVar, 0L, Math.min(32L, this.f6289b));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f6289b, j) + " content=" + fVar.q().d() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // c.g, c.ab, java.io.Flushable
    public final void flush() {
    }

    @Override // c.h
    public final InputStream g() {
        return new b();
    }

    @Override // c.h
    public final byte[] g(long j) throws EOFException {
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
        } else if (this.f6289b >= j) {
            byte[] bArr = new byte[(int) j];
            a(bArr);
            return bArr;
        } else {
            throw new EOFException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long h() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f6289b
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            c.y r0 = r0.f6288a
            r8 = r0
            r0 = r8
            kotlin.jvm.internal.p.a(r0)
            r0 = r8
            c.y r0 = r0.g
            r8 = r0
            r0 = r8
            kotlin.jvm.internal.p.a(r0)
            r0 = r6
            r9 = r0
            r0 = r8
            int r0 = r0.f6341c
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x0044
            r0 = r6
            r9 = r0
            r0 = r8
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r8
            int r1 = r1.f6341c
            r2 = r8
            int r2 = r2.f6340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r9 = r0
        L_0x0044:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.h():long");
    }

    public final y h(int i) {
        y yVar;
        if (i > 0 && i <= 8192) {
            y yVar2 = this.f6288a;
            if (yVar2 == null) {
                yVar = z.a();
                this.f6288a = yVar;
                yVar.g = yVar;
                yVar.f = yVar;
            } else {
                p.a(yVar2);
                yVar = yVar2.g;
                p.a(yVar);
                if (yVar.f6341c + i > 8192 || !yVar.e) {
                    yVar = yVar.a(z.a());
                }
            }
            return yVar;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // c.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0070
            r0 = r6
            c.y r0 = r0.f6288a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0065
            r0 = r7
            r1 = r9
            int r1 = r1.f6341c
            r2 = r9
            int r2 = r2.f6340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r6
            long r0 = r0.f6289b
            r11 = r0
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = r6
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            r0.f6289b = r1
            r0 = r7
            r1 = r13
            long r0 = r0 - r1
            r11 = r0
            r0 = r9
            r1 = r9
            int r1 = r1.f6340b
            r2 = r10
            int r1 = r1 + r2
            r0.f6340b = r1
            r0 = r11
            r7 = r0
            r0 = r9
            int r0 = r0.f6340b
            r1 = r9
            int r1 = r1.f6341c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            r1 = r9
            c.y r1 = r1.c()
            r0.f6288a = r1
            r0 = r9
            c.z.a(r0)
            r0 = r11
            r7 = r0
            goto L_0x0000
        L_0x0065:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0070:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.h(long):void");
    }

    public final int hashCode() {
        y yVar;
        y yVar2 = this.f6288a;
        if (yVar2 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = yVar2.f6341c;
            for (int i3 = yVar2.f6340b; i3 < i2; i3++) {
                i = (i * 31) + yVar2.f6339a[i3];
            }
            yVar = yVar2.f;
            p.a(yVar);
            yVar2 = yVar;
            i = i;
        } while (yVar != this.f6288a);
        return i;
    }

    @Override // c.h
    public final byte i() throws EOFException {
        if (this.f6289b != 0) {
            y yVar = this.f6288a;
            p.a(yVar);
            int i = yVar.f6340b;
            int i2 = yVar.f6341c;
            byte[] bArr = yVar.f6339a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            this.f6289b--;
            if (i3 == i2) {
                this.f6288a = yVar.c();
                z.a(yVar);
            } else {
                yVar.f6340b = i3;
            }
            return b2;
        }
        throw new EOFException();
    }

    public final f i(long j) {
        y h = h(8);
        byte[] bArr = h.f6339a;
        int i = h.f6341c;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        h.f6341c = i8 + 1;
        this.f6289b += 8;
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c.f k(long r7) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.k(long):c.f");
    }

    @Override // c.h
    public final short j() throws EOFException {
        if (this.f6289b >= 2) {
            y yVar = this.f6288a;
            p.a(yVar);
            int i = yVar.f6340b;
            int i2 = yVar.f6341c;
            if (i2 - i < 2) {
                return (short) (((i() & 255) << 8) | (i() & 255));
            }
            byte[] bArr = yVar.f6339a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            this.f6289b -= 2;
            if (i4 == i2) {
                this.f6288a = yVar.c();
                z.a(yVar);
            } else {
                yVar.f6340b = i4;
            }
            return (short) (((b2 & 255) << 8) | (b3 & 255));
        }
        throw new EOFException();
    }

    @Override // c.h
    public final int k() throws EOFException {
        if (this.f6289b >= 4) {
            y yVar = this.f6288a;
            p.a(yVar);
            int i = yVar.f6340b;
            int i2 = yVar.f6341c;
            if (i2 - i < 4) {
                return ((i() & 255) << 24) | ((i() & 255) << 16) | ((i() & 255) << 8) | (i() & 255);
            }
            byte[] bArr = yVar.f6339a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            int i5 = i4 + 1;
            byte b4 = bArr[i4];
            int i6 = i5 + 1;
            byte b5 = bArr[i5];
            this.f6289b -= 4;
            if (i6 == i2) {
                this.f6288a = yVar.c();
                z.a(yVar);
            } else {
                yVar.f6340b = i6;
            }
            return ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
        }
        throw new EOFException();
    }

    @Override // c.h
    public final long l() throws EOFException {
        if (this.f6289b >= 8) {
            y yVar = this.f6288a;
            p.a(yVar);
            int i = yVar.f6340b;
            int i2 = yVar.f6341c;
            if (i2 - i < 8) {
                return ((k() & 4294967295L) << 32) | (4294967295L & k());
            }
            byte[] bArr = yVar.f6339a;
            int i3 = i + 1;
            long j = bArr[i];
            int i4 = i3 + 1;
            long j2 = bArr[i3];
            int i5 = i4 + 1;
            long j3 = bArr[i4];
            int i6 = i5 + 1;
            long j4 = bArr[i5];
            int i7 = i6 + 1;
            long j5 = bArr[i6];
            int i8 = i7 + 1;
            long j6 = bArr[i7];
            int i9 = i8 + 1;
            long j7 = bArr[i8];
            int i10 = i9 + 1;
            long j8 = bArr[i9];
            this.f6289b -= 8;
            if (i10 == i2) {
                this.f6288a = yVar.c();
                z.a(yVar);
            } else {
                yVar.f6340b = i10;
            }
            return ((j4 & 255) << 32) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (j8 & 255);
        }
        throw new EOFException();
    }

    /* renamed from: l */
    public final f m(long j) {
        if (j == 0) {
            return c(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        y h = h(i);
        byte[] bArr = h.f6339a;
        int i2 = h.f6341c;
        for (int i3 = (h.f6341c + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = c.a.a.a()[(int) (15 & j)];
            j >>>= 4;
        }
        h.f6341c += i;
        this.f6289b += i;
        return this;
    }

    public final short m() throws EOFException {
        int j = j() & 65535;
        return (short) (((j & 255) << 8) | ((65280 & j) >>> 8));
    }

    public final int n() throws EOFException {
        int k = k();
        return ((k & 255) << 24) | (((-16777216) & k) >>> 24) | ((16711680 & k) >>> 8) | ((65280 & k) << 8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0166 A[EDGE_INSN: B:52:0x0166->B:43:0x0166 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // c.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long o() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.o():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014e A[EDGE_INSN: B:49:0x014e->B:42:0x014e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v39, types: [c.f] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // c.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long p() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.p():long");
    }

    @Override // c.h
    public final i q() {
        return d(this.f6289b);
    }

    public final String r() {
        return a(this.f6289b, d.f36719a);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) throws IOException {
        p.d(sink, "sink");
        y yVar = this.f6288a;
        if (yVar == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), yVar.f6341c - yVar.f6340b);
        sink.put(yVar.f6339a, yVar.f6340b, min);
        yVar.f6340b += min;
        this.f6289b -= min;
        if (yVar.f6340b == yVar.f6341c) {
            this.f6288a = yVar.c();
            z.a(yVar);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // c.ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(c.f r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "sink"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0013
            r0 = 1
            r10 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r10 = r0
        L_0x0016:
            r0 = r10
            if (r0 == 0) goto L_0x0044
            r0 = r6
            long r0 = r0.f6289b
            r11 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002c
            r0 = -1
            return r0
        L_0x002c:
            r0 = r8
            r13 = r0
            r0 = r8
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003a
            r0 = r11
            r13 = r0
        L_0x003a:
            r0 = r7
            r1 = r6
            r2 = r13
            r0.write(r1, r2)
            r0 = r13
            return r0
        L_0x0044:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "byteCount < 0: "
            r3 = r8
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.f.read(c.f, long):long");
    }

    @Override // c.h
    public final String s() throws EOFException {
        return f(Long.MAX_VALUE);
    }

    @Override // c.h
    public final byte[] t() {
        return g(this.f6289b);
    }

    @Override // c.ab
    public final ae timeout() {
        return ae.NONE;
    }

    public final String toString() {
        long j = this.f6289b;
        if (j <= 2147483647L) {
            return i((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f6289b).toString());
    }

    public final void u() {
        h(this.f6289b);
    }

    /* renamed from: v */
    public final f clone() {
        f fVar = new f();
        if (this.f6289b == 0) {
            return fVar;
        }
        y yVar = this.f6288a;
        p.a(yVar);
        y a2 = yVar.a();
        fVar.f6288a = a2;
        a2.g = a2;
        a2.f = a2.g;
        for (y yVar2 = yVar.f; yVar2 != yVar; yVar2 = yVar2.f) {
            y yVar3 = a2.g;
            p.a(yVar3);
            p.a(yVar2);
            yVar3.a(yVar2.a());
        }
        fVar.f6289b = this.f6289b;
        return fVar;
    }

    public final f w() {
        return clone();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) throws IOException {
        p.d(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            y h = h(1);
            int min = Math.min(i, PropertyFlags.UNSIGNED - h.f6341c);
            source.get(h.f6339a, h.f6341c, min);
            i -= min;
            h.f6341c += min;
        }
        this.f6289b += remaining;
        return remaining;
    }

    @Override // c.ab
    public final void write(f source, long j) {
        y yVar;
        int i;
        y yVar2;
        y yVar3;
        p.d(source, "source");
        if (source != this) {
            c.c.a(source.f6289b, 0L, j);
            while (j > 0) {
                y yVar4 = source.f6288a;
                p.a(yVar4);
                int i2 = yVar4.f6341c;
                p.a(source.f6288a);
                if (j < i2 - yVar.f6340b) {
                    y yVar5 = this.f6288a;
                    if (yVar5 != null) {
                        p.a(yVar5);
                        yVar2 = yVar5.g;
                    } else {
                        yVar2 = null;
                    }
                    if (yVar2 != null && yVar2.e) {
                        if ((yVar2.f6341c + j) - (yVar2.f6342d ? 0 : yVar2.f6340b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            y yVar6 = source.f6288a;
                            p.a(yVar6);
                            yVar6.a(yVar2, (int) j);
                            source.f6289b -= j;
                            this.f6289b += j;
                            return;
                        }
                    }
                    y yVar7 = source.f6288a;
                    p.a(yVar7);
                    int i3 = (int) j;
                    if (i3 > 0 && i3 <= yVar7.f6341c - yVar7.f6340b) {
                        if (i3 >= 1024) {
                            yVar3 = yVar7.a();
                        } else {
                            yVar3 = z.a();
                            i.a(yVar7.f6339a, yVar3.f6339a, yVar7.f6340b, yVar7.f6340b + i3);
                        }
                        yVar3.f6341c = yVar3.f6340b + i3;
                        yVar7.f6340b += i3;
                        y yVar8 = yVar7.g;
                        p.a(yVar8);
                        yVar8.a(yVar3);
                        source.f6288a = yVar3;
                    } else {
                        throw new IllegalArgumentException("byteCount out of range".toString());
                    }
                }
                y yVar9 = source.f6288a;
                p.a(yVar9);
                long j2 = yVar9.f6341c - yVar9.f6340b;
                source.f6288a = yVar9.c();
                y yVar10 = this.f6288a;
                if (yVar10 == null) {
                    this.f6288a = yVar9;
                    yVar9.g = yVar9;
                    yVar9.f = yVar9.g;
                } else {
                    p.a(yVar10);
                    y yVar11 = yVar10.g;
                    p.a(yVar11);
                    y a2 = yVar11.a(yVar9);
                    if (a2.g != a2) {
                        y yVar12 = a2.g;
                        p.a(yVar12);
                        if (yVar12.e) {
                            int i4 = a2.f6341c - a2.f6340b;
                            y yVar13 = a2.g;
                            p.a(yVar13);
                            int i5 = yVar13.f6341c;
                            y yVar14 = a2.g;
                            p.a(yVar14);
                            if (yVar14.f6342d) {
                                i = 0;
                            } else {
                                y yVar15 = a2.g;
                                p.a(yVar15);
                                i = yVar15.f6340b;
                            }
                            if (i4 <= (PropertyFlags.UNSIGNED - i5) + i) {
                                y yVar16 = a2.g;
                                p.a(yVar16);
                                a2.a(yVar16, i4);
                                a2.c();
                                z.a(a2);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cannot compact".toString());
                    }
                }
                source.f6289b -= j2;
                this.f6289b += j2;
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
