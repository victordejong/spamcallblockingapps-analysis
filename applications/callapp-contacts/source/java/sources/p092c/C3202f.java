package p092c;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
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
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18500ag;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p532h.C18405d;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.connection.RealConnection;
import p092c.p093a.C3184a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020��H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020��H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020��J$\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0018\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\fJ \u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020��H\u0016J\b\u0010!\u001a\u00020��H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\fH\u0087\u0002¢\u0006\u0002\b+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\fH\u0016J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\b\u0010@\u001a\u00020\u0019H\u0016J\b\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020\f2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010M\u001a\u00020)H\u0016J\b\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010P\u001a\u00020\fH\u0016J\u000e\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\fJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010U\u001a\u00020\fH\u0016J\b\u0010V\u001a\u00020/H\u0016J\b\u0010W\u001a\u00020/H\u0016J\b\u0010X\u001a\u00020\fH\u0016J\b\u0010Y\u001a\u00020\fH\u0016J\b\u0010Z\u001a\u00020[H\u0016J\b\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\fH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\b\u0010q\u001a\u00020rH\u0016J\b\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H��¢\u0006\u0002\bvJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010{\u001a\u00020\f2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020��2\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0010\u0010\u007f\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020��2\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\n8��@��X\u0081\u000e¢\u0006\u0002\n��R&\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0091\u0001"}, m4298d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "()V", "buffer", "getBuffer", "()Lokio/Buffer;", "head", "Lokio/Segment;", "<set-?>", "", "size", "()J", "setSize$okio", "(J)V", AdType.CLEAR, "", "clone", EventConstants.CLOSE, "completeSegmentByteCount", "copy", "copyTo", "out", "Ljava/io/OutputStream;", VastIconXmlManager.OFFSET, "byteCount", "digest", "Lokio/ByteString;", "algorithm", "", "emit", "emitCompleteSegments", "equals", "", "other", "", "exhausted", "flush", "get", "", "pos", "getByte", "index", "-deprecated_getByte", "hashCode", "", "hmac", "key", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", C15291b.f55271a, "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "md5", "outputStream", "peek", "rangeEquals", "bytesOffset", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readAndWriteUnsafe", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFrom", "input", "forever", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "charset", "Ljava/nio/charset/Charset;", "readUnsafe", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", "sha1", "sha256", "sha512", "-deprecated_size", EventConstants.SKIP, "snapshot", "timeout", "Lokio/Timeout;", "toString", "writableSegment", "minimumCapacity", "writableSegment$okio", "write", Payload.SOURCE, "byteString", "Lokio/Source;", "writeAll", "writeByte", "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "beginIndex", "endIndex", "writeTo", "writeUtf8", "writeUtf8CodePoint", "codePoint", "UnsafeCursor", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.f */
/* loaded from: classes-dex2jar.jar:c/f.class */
public final class C3202f implements AbstractC3206g, AbstractC3207h, Cloneable, ByteChannel {

    /* renamed from: a */
    public C3229y f11571a;

    /* renamed from: b */
    public long f11572b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "()V", "buffer", "Lokio/Buffer;", "data", "", "end", "", VastIconXmlManager.OFFSET, "", "readWrite", "", "segment", "Lokio/Segment;", EventConstants.START, EventConstants.CLOSE, "", "expandBuffer", "minByteCount", "next", "resizeBuffer", "newSize", "seek", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.f$a */
    /* loaded from: classes-dex2jar.jar:c/f$a.class */
    public static final class C3203a implements Closeable {

        /* renamed from: a */
        public C3202f f11573a;

        /* renamed from: b */
        public boolean f11574b;

        /* renamed from: d */
        public byte[] f11576d;

        /* renamed from: g */
        private C3229y f11579g;

        /* renamed from: c */
        public long f11575c = -1;

        /* renamed from: e */
        public int f11577e = -1;

        /* renamed from: f */
        public int f11578f = -1;

        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
        /* JADX WARN: Type inference failed for: r0v99, types: [long] */
        /* renamed from: a */
        public final int m39189a(long j) {
            C3229y c3229y;
            char c;
            C3202f c3202f = this.f11573a;
            if (c3202f != null) {
                int i = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
                if (i < 0 || j > c3202f.f11572b) {
                    C18500ag c18500ag = C18500ag.f63594a;
                    String format = String.format("offset=%s > size=%s", Arrays.copyOf(new Object[]{Long.valueOf(j), Long.valueOf(c3202f.f11572b)}, 2));
                    C18524p.m3843b(format, "java.lang.String.format(format, *args)");
                    throw new ArrayIndexOutOfBoundsException(format);
                } else if (i == 0 || j == c3202f.f11572b) {
                    this.f11579g = null;
                    this.f11575c = j;
                    this.f11576d = null;
                    this.f11577e = -1;
                    this.f11578f = -1;
                    return -1;
                } else {
                    ?? r0 = c3202f.f11572b;
                    C3229y c3229y2 = c3202f.f11571a;
                    C3229y c3229y3 = c3202f.f11571a;
                    C3229y c3229y4 = this.f11579g;
                    char c2 = 0;
                    char c3 = r0;
                    C3229y c3229y5 = c3229y2;
                    C3229y c3229y6 = c3229y3;
                    if (c3229y4 != null) {
                        long j2 = this.f11575c;
                        int i2 = this.f11577e;
                        C18524p.m3851a(c3229y4);
                        c2 = j2 - (i2 - c3229y4.f11635b);
                        if (c2 > j) {
                            c3229y6 = this.f11579g;
                            c3 = c2;
                            c2 = 0;
                            c3229y5 = c3229y2;
                        } else {
                            c3229y5 = this.f11579g;
                            c3229y6 = c3229y3;
                            c3 = r0;
                        }
                    }
                    char c4 = c3;
                    if (c3 - j > j - c2) {
                        C3229y c3229y7 = c3229y5;
                        while (true) {
                            C3229y c3229y8 = c3229y7;
                            C18524p.m3851a(c3229y8);
                            c = c2;
                            c3229y = c3229y8;
                            if (j < (c3229y8.f11636c - c3229y8.f11635b) + c2) {
                                break;
                            }
                            c2 += c3229y8.f11636c - c3229y8.f11635b;
                            c3229y7 = c3229y8.f11639f;
                        }
                    } else {
                        while (c4 > j) {
                            C18524p.m3851a(c3229y6);
                            c3229y6 = c3229y6.f11640g;
                            C18524p.m3851a(c3229y6);
                            c4 -= c3229y6.f11636c - c3229y6.f11635b;
                        }
                        c = c4;
                        c3229y = c3229y6;
                    }
                    C3229y c3229y9 = c3229y;
                    if (this.f11574b) {
                        C18524p.m3851a(c3229y);
                        c3229y9 = c3229y;
                        if (c3229y.f11637d) {
                            C3229y m39101b = c3229y.m39101b();
                            if (c3202f.f11571a == c3229y) {
                                c3202f.f11571a = m39101b;
                            }
                            c3229y9 = c3229y.m39103a(m39101b);
                            C3229y c3229y10 = c3229y9.f11640g;
                            C18524p.m3851a(c3229y10);
                            c3229y10.m39100c();
                        }
                    }
                    this.f11579g = c3229y9;
                    this.f11575c = j;
                    C18524p.m3851a(c3229y9);
                    this.f11576d = c3229y9.f11634a;
                    this.f11577e = c3229y9.f11635b + ((int) (j - c));
                    int i3 = c3229y9.f11636c;
                    this.f11578f = i3;
                    return i3 - this.f11577e;
                }
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        /* JADX WARN: Type inference failed for: r0v64, types: [long] */
        /* renamed from: b */
        public final long m39188b(long j) {
            C3202f c3202f = this.f11573a;
            if (c3202f != null) {
                if (!this.f11574b) {
                    throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
                }
                ?? r0 = c3202f.f11572b;
                int i = (j > r0 ? 1 : (j == r0 ? 0 : -1));
                if (i <= 0) {
                    if (!(j >= 0)) {
                        throw new IllegalArgumentException("newSize < 0: ".concat(String.valueOf(j)).toString());
                    }
                    char c = r0;
                    char c2 = j;
                    while (true) {
                        ?? r02 = c - c2;
                        if (r02 <= 0) {
                            break;
                        }
                        C3229y c3229y = c3202f.f11571a;
                        C18524p.m3851a(c3229y);
                        C3229y c3229y2 = c3229y.f11640g;
                        C18524p.m3851a(c3229y2);
                        ?? r03 = c3229y2.f11636c - c3229y2.f11635b;
                        if (r03 > r02) {
                            c3229y2.f11636c -= (int) r02;
                            break;
                        }
                        c3202f.f11571a = c3229y2.m39100c();
                        C3231z.m39098a(c3229y2);
                        c = r02;
                        c2 = r03;
                    }
                    this.f11579g = null;
                    this.f11575c = j;
                    this.f11576d = null;
                    this.f11577e = -1;
                    this.f11578f = -1;
                } else if (i > 0) {
                    char c3 = j - r0;
                    boolean z = true;
                    while (true) {
                        boolean z2 = z;
                        if (c3 <= 0) {
                            break;
                        }
                        C3229y m39200h = c3202f.m39200h(1);
                        int min = (int) Math.min((long) c3, PropertyFlags.UNSIGNED - m39200h.f11636c);
                        m39200h.f11636c += min;
                        c3 -= min;
                        boolean z3 = z2;
                        if (z2) {
                            this.f11579g = m39200h;
                            this.f11575c = r0;
                            this.f11576d = m39200h.f11634a;
                            this.f11577e = m39200h.f11636c - min;
                            this.f11578f = m39200h.f11636c;
                            z3 = false;
                        }
                        z = z3;
                    }
                }
                c3202f.f11572b = j;
                return r0;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f11573a != null) {
                this.f11573a = null;
                this.f11579g = null;
                this.f11575c = -1L;
                this.f11576d = null;
                this.f11577e = -1;
                this.f11578f = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m4298d2 = {"okio/Buffer$inputStream$1", "Ljava/io/InputStream;", "available", "", EventConstants.CLOSE, "", "read", "sink", "", VastIconXmlManager.OFFSET, "byteCount", "toString", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.f$b */
    /* loaded from: classes-dex2jar.jar:c/f$b.class */
    public static final class C3204b extends InputStream {
        C3204b() {
            C3202f.this = r4;
        }

        @Override // java.io.InputStream
        public final int available() {
            return (int) Math.min(C3202f.this.f11572b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.InputStream
        public final int read() {
            if (C3202f.this.f11572b > 0) {
                return C3202f.this.mo39113i() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final int read(byte[] sink, int i, int i2) {
            C18524p.m3840d(sink, "sink");
            return C3202f.this.m39211a(sink, i, i2);
        }

        public final String toString() {
            return C3202f.this + ".inputStream()";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��)\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016J \u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000bH\u0016¨\u0006\u000e"}, m4298d2 = {"okio/Buffer$outputStream$1", "Ljava/io/OutputStream;", EventConstants.CLOSE, "", "flush", "toString", "", "write", "data", "", VastIconXmlManager.OFFSET, "", "byteCount", C15291b.f55271a, "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.f$c */
    /* loaded from: classes-dex2jar.jar:c/f$c.class */
    public static final class C3205c extends OutputStream {
        public C3205c() {
            C3202f.this = r4;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
        }

        public final String toString() {
            return C3202f.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            C3202f.this.mo39141c(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] data, int i, int i2) {
            C18524p.m3840d(data, "data");
            C3202f.this.mo39139c(data, i, i2);
        }
    }

    /* renamed from: a */
    private String m39219a(long j, Charset charset) throws EOFException {
        C18524p.m3840d(charset, "charset");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0 && j <= 2147483647L) {
            if (this.f11572b < j) {
                throw new EOFException();
            }
            if (i == 0) {
                return "";
            }
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            if (c3229y.f11635b + j > c3229y.f11636c) {
                return new String(mo39115g(j), charset);
            }
            byte[] bArr = c3229y.f11634a;
            int i2 = c3229y.f11635b;
            int i3 = (int) j;
            String str = new String(bArr, i2, i3, charset);
            c3229y.f11635b += i3;
            this.f11572b -= j;
            if (c3229y.f11635b == c3229y.f11636c) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            }
            return str;
        }
        throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
    }

    /* renamed from: a */
    private boolean m39220a(long j, C3208i bytes, int i) {
        C18524p.m3840d(bytes, "bytes");
        if (j < 0 || i < 0 || this.f11572b - j < i || bytes.mo39173f() - 0 < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (m39207c(i2 + j) != bytes.mo39178b(i2 + 0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96 */
    /* renamed from: d */
    private long m39204d(C3208i targetBytes) {
        int i;
        C3229y c3229y;
        char c;
        int i2;
        C18524p.m3840d(targetBytes, "targetBytes");
        C3229y c3229y2 = this.f11571a;
        if (c3229y2 == null) {
            return -1L;
        }
        char c2 = this.f11572b;
        char c3 = 0;
        if (c2 - 0 < 0) {
            while (c2 > 0) {
                c3229y2 = c3229y2.f11640g;
                C18524p.m3851a(c3229y2);
                c2 -= c3229y2.f11636c - c3229y2.f11635b;
            }
            if (c3229y2 == null) {
                return -1L;
            }
            if (targetBytes.mo39173f() != 2) {
                byte[] mo39171h = targetBytes.mo39171h();
                while (c2 < this.f11572b) {
                    byte[] bArr = c3229y2.f11634a;
                    i = (int) ((c3229y2.f11635b + c3) - c2);
                    int i3 = c3229y2.f11636c;
                    while (i < i3) {
                        byte b = bArr[i];
                        for (byte b2 : mo39171h) {
                            if (b == b2) {
                                i2 = c3229y2.f11635b;
                                c = c2;
                            }
                        }
                        i++;
                    }
                    c3 = (c3229y2.f11636c - c3229y2.f11635b) + c2;
                    c3229y2 = c3229y2.f11639f;
                    C18524p.m3851a(c3229y2);
                    c2 = c3;
                }
                return -1L;
            }
            byte mo39178b = targetBytes.mo39178b(0);
            byte mo39178b2 = targetBytes.mo39178b(1);
            while (c2 < this.f11572b) {
                byte[] bArr2 = c3229y2.f11634a;
                int i4 = c3229y2.f11636c;
                for (int i5 = (int) ((c3229y2.f11635b + c3) - c2); i5 < i4; i5++) {
                    byte b3 = bArr2[i5];
                    c3229y = c3229y2;
                    c = c2;
                    i = i5;
                    if (b3 != mo39178b) {
                        if (b3 == mo39178b2) {
                            c3229y = c3229y2;
                            c = c2;
                            i = i5;
                        }
                    }
                    i2 = c3229y.f11635b;
                }
                c3 = (c3229y2.f11636c - c3229y2.f11635b) + c2;
                c3229y2 = c3229y2.f11639f;
                C18524p.m3851a(c3229y2);
                c2 = c3;
            }
            return -1L;
        }
        ?? r0 = 0;
        while (true) {
            c2 = r0;
            ?? r02 = (c3229y2.f11636c - c3229y2.f11635b) + c2;
            if (r02 > 0) {
                break;
            }
            c3229y2 = c3229y2.f11639f;
            C18524p.m3851a(c3229y2);
            r0 = r02;
        }
        if (c3229y2 == null) {
            return -1L;
        }
        if (targetBytes.mo39173f() != 2) {
            byte[] mo39171h2 = targetBytes.mo39171h();
            while (c2 < this.f11572b) {
                byte[] bArr3 = c3229y2.f11634a;
                i = (int) ((c3229y2.f11635b + c3) - c2);
                int i6 = c3229y2.f11636c;
                while (i < i6) {
                    byte b4 = bArr3[i];
                    for (byte b5 : mo39171h2) {
                        if (b4 == b5) {
                            i2 = c3229y2.f11635b;
                            c = c2;
                        }
                    }
                    i++;
                }
                c3 = (c3229y2.f11636c - c3229y2.f11635b) + c2;
                c3229y2 = c3229y2.f11639f;
                C18524p.m3851a(c3229y2);
                c2 = c3;
            }
            return -1L;
        }
        byte mo39178b3 = targetBytes.mo39178b(0);
        byte mo39178b4 = targetBytes.mo39178b(1);
        while (c2 < this.f11572b) {
            byte[] bArr4 = c3229y2.f11634a;
            int i7 = c3229y2.f11636c;
            for (int i8 = (int) ((c3229y2.f11635b + c3) - c2); i8 < i7; i8++) {
                byte b6 = bArr4[i8];
                c3229y = c3229y2;
                c = c2;
                i = i8;
                if (b6 != mo39178b3) {
                    if (b6 == mo39178b4) {
                        c3229y = c3229y2;
                        c = c2;
                        i = i8;
                    }
                }
                i2 = c3229y.f11635b;
            }
            c3 = (c3229y2.f11636c - c3229y2.f11635b) + c2;
            c3229y2 = c3229y2.f11639f;
            C18524p.m3851a(c3229y2);
            c2 = c3;
        }
        return -1L;
        return (i - i2) + c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    private C3208i m39199i(int i) {
        if (i == 0) {
            return C3208i.f11582c;
        }
        C3195c.m39226a(this.f11572b, 0L, i);
        C3229y c3229y = this.f11571a;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            C18524p.m3851a(c3229y);
            if (c3229y.f11636c == c3229y.f11635b) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += c3229y.f11636c - c3229y.f11635b;
            i3++;
            c3229y = c3229y.f11639f;
        }
        byte[] bArr = new byte[i3];
        int[] iArr = new int[i3 * 2];
        C3229y c3229y2 = this.f11571a;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            C18524p.m3851a(c3229y2);
            bArr[i4] = c3229y2.f11634a;
            i5 += c3229y2.f11636c - c3229y2.f11635b;
            iArr[i4] = Math.min(i5, i);
            iArr[((Object[]) bArr).length + i4] = c3229y2.f11635b;
            c3229y2.f11637d = true;
            i4++;
            c3229y2 = c3229y2.f11639f;
        }
        return new C3187aa((byte[][]) bArr, iArr);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final int mo39127a(C3219s options) {
        int m39240a;
        C18524p.m3840d(options, "options");
        m39240a = C3184a.m39240a(this, options, false);
        if (m39240a == -1) {
            return -1;
        }
        mo39114h(options.f11604b[m39240a].mo39173f());
        return m39240a;
    }

    /* renamed from: a */
    public final int m39211a(byte[] sink, int i, int i2) {
        C18524p.m3840d(sink, "sink");
        C3195c.m39226a(sink.length, i, i2);
        C3229y c3229y = this.f11571a;
        if (c3229y == null) {
            return -1;
        }
        int min = Math.min(i2, c3229y.f11636c - c3229y.f11635b);
        C18273i.m4223a(c3229y.f11634a, sink, i, c3229y.f11635b, c3229y.f11635b + min);
        c3229y.f11635b += min;
        this.f11572b -= min;
        if (c3229y.f11635b == c3229y.f11636c) {
            this.f11571a = c3229y.m39100c();
            C3231z.m39098a(c3229y);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123 */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r1v15, types: [long] */
    /* JADX WARN: Type inference failed for: r1v24, types: [long] */
    /* JADX WARN: Type inference failed for: r1v34, types: [long] */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* renamed from: a */
    public final long m39222a(byte b, long j, long j2) {
        C3229y c3229y;
        char c;
        if (!(0 <= j && j2 >= j)) {
            throw new IllegalArgumentException(("size=" + this.f11572b + " fromIndex=" + j + " toIndex=" + ((long) j2)).toString());
        }
        ?? r0 = this.f11572b;
        char c2 = j2;
        if (j2 > r0) {
            c2 = r0;
        }
        if (j == c2 || (c3229y = this.f11571a) == null) {
            return -1L;
        }
        boolean z = false;
        C3229y c3229y2 = c3229y;
        if (r0 - j >= j) {
            while (true) {
                ?? r02 = (c3229y2.f11636c - c3229y2.f11635b) + z;
                if (r02 > j) {
                    break;
                }
                c3229y2 = c3229y2.f11639f;
                C18524p.m3851a(c3229y2);
                z = r02;
            }
            C3229y c3229y3 = c3229y2;
            boolean z2 = j;
            if (c3229y2 == null) {
                return -1L;
            }
            while (z < c2) {
                byte[] bArr = c3229y3.f11634a;
                int min = (int) Math.min(c3229y3.f11636c, (c3229y3.f11635b + c2) - z);
                for (int i = (int) ((c3229y3.f11635b + z2) - z); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - c3229y3.f11635b) + z;
                    }
                }
                z += c3229y3.f11636c - c3229y3.f11635b;
                c3229y3 = c3229y3.f11639f;
                C18524p.m3851a(c3229y3);
                z2 = z;
            }
            return -1L;
        }
        C3229y c3229y4 = c3229y;
        char c3 = r0;
        while (true) {
            c = c3;
            if (c <= j) {
                break;
            }
            c3229y4 = c3229y4.f11640g;
            C18524p.m3851a(c3229y4);
            c3 = c - (c3229y4.f11636c - c3229y4.f11635b);
        }
        C3229y c3229y5 = c3229y4;
        char c4 = j;
        if (c3229y4 == null) {
            return -1L;
        }
        while (c < c2) {
            byte[] bArr2 = c3229y5.f11634a;
            int min2 = (int) Math.min(c3229y5.f11636c, (c3229y5.f11635b + c2) - c);
            for (int i2 = (int) ((c3229y5.f11635b + c4) - c); i2 < min2; i2++) {
                if (bArr2[i2] == b) {
                    return (i2 - c3229y5.f11635b) + c;
                }
            }
            c += c3229y5.f11636c - c3229y5.f11635b;
            c3229y5 = c3229y5.f11639f;
            C18524p.m3851a(c3229y5);
            c4 = c;
        }
        return -1L;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final long mo39129a(AbstractC3188ab sink) throws IOException {
        C18524p.m3840d(sink, "sink");
        long j = this.f11572b;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    @Override // p092c.AbstractC3206g
    /* renamed from: a */
    public final long mo39145a(AbstractC3190ad source) throws IOException {
        C18524p.m3840d(source, "source");
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long read = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read != -1) {
                r0 = c + read;
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public final C3203a m39218a(C3203a unsafeCursor) {
        C18524p.m3840d(unsafeCursor, "unsafeCursor");
        if (unsafeCursor.f11573a == null) {
            unsafeCursor.f11573a = this;
            unsafeCursor.f11574b = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3207h
    /* renamed from: a */
    public final C3202f mo39133a() {
        return this;
    }

    /* renamed from: a */
    public final C3202f m39221a(int i) {
        if (i < 128) {
            mo39141c(i);
        } else if (i < 2048) {
            C3229y m39200h = m39200h(2);
            m39200h.f11634a[m39200h.f11636c] = (byte) ((i >> 6) | 192);
            m39200h.f11634a[m39200h.f11636c + 1] = (byte) ((i & 63) | 128);
            m39200h.f11636c += 2;
            this.f11572b += 2;
        } else if (55296 <= i && 57343 >= i) {
            mo39141c(63);
        } else if (i < 65536) {
            C3229y m39200h2 = m39200h(3);
            m39200h2.f11634a[m39200h2.f11636c] = (byte) ((i >> 12) | 224);
            m39200h2.f11634a[m39200h2.f11636c + 1] = (byte) (((i >> 6) & 63) | 128);
            m39200h2.f11634a[m39200h2.f11636c + 2] = (byte) ((i & 63) | 128);
            m39200h2.f11636c += 3;
            this.f11572b += 3;
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x" + C3195c.m39227a(i));
        } else {
            C3229y m39200h3 = m39200h(4);
            m39200h3.f11634a[m39200h3.f11636c] = (byte) ((i >> 18) | 240);
            m39200h3.f11634a[m39200h3.f11636c + 1] = (byte) (((i >> 12) & 63) | 128);
            m39200h3.f11634a[m39200h3.f11636c + 2] = (byte) (((i >> 6) & 63) | 128);
            m39200h3.f11634a[m39200h3.f11636c + 3] = (byte) ((i & 63) | 128);
            m39200h3.f11636c += 4;
            this.f11572b += 4;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public final C3202f m39216a(C3202f out, long j, long j2) {
        C3229y c3229y;
        char c;
        char c2;
        C18524p.m3840d(out, "out");
        C3195c.m39226a(this.f11572b, j, j2);
        if (j2 != 0) {
            out.f11572b += j2;
            C3229y c3229y2 = this.f11571a;
            ?? r9 = j;
            while (true) {
                C3229y c3229y3 = c3229y2;
                C18524p.m3851a(c3229y3);
                c3229y = c3229y3;
                c = r9;
                c2 = j2;
                if (r9 >= c3229y3.f11636c - c3229y3.f11635b) {
                    r9 -= c3229y3.f11636c - c3229y3.f11635b;
                    c3229y2 = c3229y3.f11639f;
                }
            }
            while (c2 > 0) {
                C18524p.m3851a(c3229y);
                C3229y m39104a = c3229y.m39104a();
                m39104a.f11635b += c;
                m39104a.f11636c = Math.min(m39104a.f11635b + c2, m39104a.f11636c);
                C3229y c3229y4 = out.f11571a;
                if (c3229y4 == null) {
                    m39104a.f11640g = m39104a;
                    m39104a.f11639f = m39104a.f11640g;
                    out.f11571a = m39104a.f11639f;
                } else {
                    C18524p.m3851a(c3229y4);
                    C3229y c3229y5 = c3229y4.f11640g;
                    C18524p.m3851a(c3229y5);
                    c3229y5.m39103a(m39104a);
                }
                c2 -= m39104a.f11636c - m39104a.f11635b;
                c3229y = c3229y.f11639f;
                c = 0;
            }
        }
        return this;
    }

    /* renamed from: a */
    public final C3202f mo39144b(C3208i byteString) {
        C18524p.m3840d(byteString, "byteString");
        byteString.mo39184a(this, byteString.mo39173f());
        return this;
    }

    /* renamed from: a */
    public final C3202f mo39143b(String string) {
        C18524p.m3840d(string, "string");
        return m39213a(string, 0, string.length());
    }

    /* renamed from: a */
    public final C3202f m39213a(String string, int i, int i2) {
        char charAt;
        C18524p.m3840d(string, "string");
        if (i >= 0) {
            if (!(i2 >= i)) {
                throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
            }
            if (!(i2 <= string.length())) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
            }
            while (i < i2) {
                char charAt2 = string.charAt(i);
                if (charAt2 < 128) {
                    C3229y m39200h = m39200h(1);
                    byte[] bArr = m39200h.f11634a;
                    int i3 = m39200h.f11636c - i;
                    int min = Math.min(i2, PropertyFlags.UNSIGNED - i3);
                    int i4 = i + 1;
                    bArr[i + i3] = (byte) charAt2;
                    while (true) {
                        i = i4;
                        if (i >= min || (charAt = string.charAt(i)) >= 128) {
                            break;
                        }
                        i4 = i + 1;
                        bArr[i + i3] = (byte) charAt;
                    }
                    int i5 = (i3 + i) - m39200h.f11636c;
                    m39200h.f11636c += i5;
                    this.f11572b += i5;
                } else {
                    if (charAt2 < 2048) {
                        C3229y m39200h2 = m39200h(2);
                        m39200h2.f11634a[m39200h2.f11636c] = (byte) ((charAt2 >> 6) | 192);
                        m39200h2.f11634a[m39200h2.f11636c + 1] = (byte) ((charAt2 & '?') | 128);
                        m39200h2.f11636c += 2;
                        this.f11572b += 2;
                    } else if (charAt2 < 55296 || charAt2 > 57343) {
                        C3229y m39200h3 = m39200h(3);
                        m39200h3.f11634a[m39200h3.f11636c] = (byte) ((charAt2 >> '\f') | 224);
                        m39200h3.f11634a[m39200h3.f11636c + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                        m39200h3.f11634a[m39200h3.f11636c + 2] = (byte) ((charAt2 & '?') | 128);
                        m39200h3.f11636c += 3;
                        this.f11572b += 3;
                    } else {
                        int i6 = i + 1;
                        char charAt3 = i6 < i2 ? string.charAt(i6) : (char) 0;
                        if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                            mo39141c(63);
                            i = i6;
                        } else {
                            int i7 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            C3229y m39200h4 = m39200h(4);
                            m39200h4.f11634a[m39200h4.f11636c] = (byte) ((i7 >> 18) | 240);
                            m39200h4.f11634a[m39200h4.f11636c + 1] = (byte) (((i7 >> 12) & 63) | 128);
                            m39200h4.f11634a[m39200h4.f11636c + 2] = (byte) (((i7 >> 6) & 63) | 128);
                            m39200h4.f11634a[m39200h4.f11636c + 3] = (byte) ((i7 & 63) | 128);
                            m39200h4.f11636c += 4;
                            this.f11572b += 4;
                            i += 2;
                        }
                    }
                    i++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)).toString());
    }

    /* renamed from: a */
    public final C3202f m39212a(String string, int i, int i2, Charset charset) {
        C18524p.m3840d(string, "string");
        C18524p.m3840d(charset, "charset");
        if (i >= 0) {
            if (!(i2 >= i)) {
                throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
            }
            if (!(i2 <= string.length())) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
            } else if (C18524p.m3850a(charset, C18405d.f63516a)) {
                return m39213a(string, i, i2);
            } else {
                String substring = string.substring(i, i2);
                C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
                byte[] bytes = substring.getBytes(charset);
                C18524p.m3843b(bytes, "(this as java.lang.String).getBytes(charset)");
                return mo39139c(bytes, 0, bytes.length);
            }
        }
        throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)).toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final String mo39126a(Charset charset) {
        C18524p.m3840d(charset, "charset");
        return m39219a(this.f11572b, charset);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39131a(long j) throws EOFException {
        if (this.f11572b >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39128a(C3202f sink, long j) throws EOFException {
        C18524p.m3840d(sink, "sink");
        long j2 = this.f11572b;
        if (j2 >= j) {
            sink.write(this, j);
        } else {
            sink.write(this, j2);
            throw new EOFException();
        }
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39125a(byte[] sink) throws EOFException {
        C18524p.m3840d(sink, "sink");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < sink.length) {
                int m39211a = m39211a(sink, i2, sink.length - i2);
                if (m39211a == -1) {
                    throw new EOFException();
                }
                i = i2 + m39211a;
            } else {
                return;
            }
        }
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final boolean mo39130a(long j, C3208i bytes) {
        C18524p.m3840d(bytes, "bytes");
        return m39220a(j, bytes, bytes.mo39173f());
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3207h
    /* renamed from: b */
    public final C3202f mo39124b() {
        return this;
    }

    /* renamed from: b */
    public final C3202f mo39141c(int i) {
        C3229y m39200h = m39200h(1);
        byte[] bArr = m39200h.f11634a;
        int i2 = m39200h.f11636c;
        m39200h.f11636c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f11572b++;
        return this;
    }

    /* renamed from: b */
    public final C3202f mo39140c(byte[] source) {
        C18524p.m3840d(source, "source");
        return mo39139c(source, 0, source.length);
    }

    /* renamed from: b */
    public final C3202f mo39139c(byte[] source, int i, int i2) {
        C18524p.m3840d(source, "source");
        long j = i2;
        C3195c.m39226a(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            C3229y m39200h = m39200h(1);
            int min = Math.min(i3 - i, PropertyFlags.UNSIGNED - m39200h.f11636c);
            byte[] bArr = m39200h.f11634a;
            int i4 = m39200h.f11636c;
            int i5 = i + min;
            C18273i.m4223a(source, bArr, i4, i, i5);
            m39200h.f11636c += min;
            i = i5;
        }
        this.f11572b += j;
        return this;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: b */
    public final boolean mo39123b(long j) {
        return this.f11572b >= j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: c */
    public final byte m39207c(long j) {
        C3195c.m39226a(this.f11572b, j, 1L);
        C3229y c3229y = this.f11571a;
        if (c3229y == null) {
            C18524p.m3851a((Object) null);
            throw new NullPointerException();
        }
        char c = this.f11572b;
        if (c - j < j) {
            while (c > j) {
                c3229y = c3229y.f11640g;
                C18524p.m3851a(c3229y);
                c -= c3229y.f11636c - c3229y.f11635b;
            }
            C18524p.m3851a(c3229y);
            return c3229y.f11634a[(int) ((c3229y.f11635b + j) - c)];
        }
        ?? r0 = 0;
        while (true) {
            char c2 = r0;
            ?? r02 = (c3229y.f11636c - c3229y.f11635b) + c2;
            if (r02 > j) {
                C18524p.m3851a(c3229y);
                return c3229y.f11634a[(int) ((c3229y.f11635b + j) - c2)];
            }
            c3229y = c3229y.f11639f;
            C18524p.m3851a(c3229y);
            r0 = r02;
        }
    }

    /* renamed from: c */
    public final long m39206c(C3208i targetBytes) {
        C18524p.m3840d(targetBytes, "targetBytes");
        return m39204d(targetBytes);
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC3206g mo39142c() {
        return this;
    }

    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: d */
    public final C3202f mo39137e(int i) {
        C3229y m39200h = m39200h(2);
        byte[] bArr = m39200h.f11634a;
        int i2 = m39200h.f11636c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m39200h.f11636c = i3 + 1;
        this.f11572b += 2;
        return this;
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ AbstractC3206g mo39138d() {
        return this;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: d */
    public final C3208i mo39120d(long j) throws EOFException {
        if (j >= 0 && j <= 2147483647L) {
            if (this.f11572b < j) {
                throw new EOFException();
            }
            if (j < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
                return new C3208i(mo39115g(j));
            }
            C3208i m39199i = m39199i((int) j);
            mo39114h(j);
            return m39199i;
        }
        throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
    }

    /* renamed from: e */
    public final String m39203e(long j) throws EOFException {
        return m39219a(j, C18405d.f63516a);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: e */
    public final boolean mo39119e() {
        return this.f11572b == 0;
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C3202f)) {
                return false;
            }
            long j = this.f11572b;
            C3202f c3202f = (C3202f) obj;
            if (j != c3202f.f11572b) {
                return false;
            }
            if (j == 0) {
                return true;
            }
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            C3229y c3229y2 = c3202f.f11571a;
            C18524p.m3851a(c3229y2);
            int i = c3229y.f11635b;
            int i2 = c3229y2.f11635b;
            char c = 0;
            while (c < this.f11572b) {
                long min = Math.min(c3229y.f11636c - i, c3229y2.f11636c - i2);
                char c2 = 0;
                int i3 = i;
                while (c2 < min) {
                    if (c3229y.f11634a[i3] != c3229y2.f11634a[i2]) {
                        return false;
                    }
                    c2++;
                    i3++;
                    i2++;
                }
                C3229y c3229y3 = c3229y;
                i = i3;
                if (i3 == c3229y.f11636c) {
                    c3229y3 = c3229y.f11639f;
                    C18524p.m3851a(c3229y3);
                    i = c3229y3.f11635b;
                }
                C3229y c3229y4 = c3229y2;
                int i4 = i2;
                if (i2 == c3229y2.f11636c) {
                    c3229y4 = c3229y2.f11639f;
                    C18524p.m3851a(c3229y4);
                    i4 = c3229y4.f11635b;
                }
                c += min;
                c3229y2 = c3229y4;
                c3229y = c3229y3;
                i2 = i4;
            }
            return true;
        }
        return true;
    }

    /* renamed from: f */
    public final C3202f mo39136g(int i) {
        C3229y m39200h = m39200h(4);
        byte[] bArr = m39200h.f11634a;
        int i2 = m39200h.f11636c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m39200h.f11636c = i5 + 1;
        this.f11572b += 4;
        return this;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: f */
    public final AbstractC3207h mo39118f() {
        return C3218r.m39150a(new C3222u(this));
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    @Override // p092c.AbstractC3207h
    /* renamed from: f */
    public final String mo39117f(long j) throws EOFException {
        C3202f c3202f;
        if (j >= 0) {
            char c = 65535;
            if (j != Long.MAX_VALUE) {
                c = j + 1;
            }
            long m39222a = m39222a((byte) 10, 0L, c);
            if (m39222a != -1) {
                return C3184a.m39242a(this, m39222a);
            }
            if (c < this.f11572b && m39207c(c - 1) == 13 && m39207c((long) c) == 10) {
                return C3184a.m39242a(this, c);
            }
            m39216a(new C3202f(), 0L, Math.min(32L, this.f11572b));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f11572b, j) + " content=" + c3202f.mo39107q().mo39175d() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3188ab, java.io.Flushable
    public final void flush() {
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: g */
    public final InputStream mo39116g() {
        return new C3204b();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: g */
    public final byte[] mo39115g(long j) throws EOFException {
        if (j >= 0 && j <= 2147483647L) {
            if (this.f11572b < j) {
                throw new EOFException();
            }
            byte[] bArr = new byte[(int) j];
            mo39125a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount: ".concat(String.valueOf(j)).toString());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: h */
    public final long m39201h() {
        ?? r0 = this.f11572b;
        if (r0 == 0) {
            return 0L;
        }
        C3229y c3229y = this.f11571a;
        C18524p.m3851a(c3229y);
        C3229y c3229y2 = c3229y.f11640g;
        C18524p.m3851a(c3229y2);
        char c = r0;
        if (c3229y2.f11636c < 8192) {
            c = r0;
            if (c3229y2.f11638e) {
                c = r0 - (c3229y2.f11636c - c3229y2.f11635b);
            }
        }
        return c;
    }

    /* renamed from: h */
    public final C3229y m39200h(int i) {
        C3229y c3229y;
        if (i > 0 && i <= 8192) {
            C3229y c3229y2 = this.f11571a;
            if (c3229y2 == null) {
                c3229y = C3231z.m39099a();
                this.f11571a = c3229y;
                c3229y.f11640g = c3229y;
                c3229y.f11639f = c3229y;
            } else {
                C18524p.m3851a(c3229y2);
                c3229y = c3229y2.f11640g;
                C18524p.m3851a(c3229y);
                if (c3229y.f11636c + i > 8192 || !c3229y.f11638e) {
                    c3229y = c3229y.m39103a(C3231z.m39099a());
                }
            }
            return c3229y;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // p092c.AbstractC3207h
    /* renamed from: h */
    public final void mo39114h(long j) throws EOFException {
        while (j > 0) {
            C3229y c3229y = this.f11571a;
            if (c3229y == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, c3229y.f11636c - c3229y.f11635b);
            long j2 = min;
            this.f11572b -= j2;
            ?? r0 = j - j2;
            c3229y.f11635b += min;
            j = r0;
            if (c3229y.f11635b == c3229y.f11636c) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
                j = r0;
            }
        }
    }

    public final int hashCode() {
        int i;
        C3229y c3229y;
        C3229y c3229y2 = this.f11571a;
        if (c3229y2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = c3229y2.f11636c;
            i = i2;
            for (int i4 = c3229y2.f11635b; i4 < i3; i4++) {
                i = (i * 31) + c3229y2.f11634a[i4];
            }
            c3229y = c3229y2.f11639f;
            C18524p.m3851a(c3229y);
            c3229y2 = c3229y;
            i2 = i;
        } while (c3229y != this.f11571a);
        return i;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: i */
    public final byte mo39113i() throws EOFException {
        if (this.f11572b != 0) {
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            int i = c3229y.f11635b;
            int i2 = c3229y.f11636c;
            byte[] bArr = c3229y.f11634a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f11572b--;
            if (i3 == i2) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            } else {
                c3229y.f11635b = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    /* renamed from: i */
    public final C3202f m39198i(long j) {
        C3229y m39200h = m39200h(8);
        byte[] bArr = m39200h.f11634a;
        int i = m39200h.f11636c;
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
        m39200h.f11636c = i8 + 1;
        this.f11572b += 8;
        return this;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: j */
    public final C3202f mo39135k(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return mo39141c(48);
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                return mo39143b("-9223372036854775808");
            }
            z = true;
        }
        if (c >= 100000000) {
            i2 = c < 1000000000000L ? c < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
        } else if (c >= 10000) {
            i2 = c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8;
        } else if (c >= 100) {
            i2 = c < 1000 ? 3 : 4;
        } else if (c >= 10) {
            i2 = 2;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 + 1;
        }
        C3229y m39200h = m39200h(i3);
        byte[] bArr = m39200h.f11634a;
        int i4 = m39200h.f11636c + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = C3184a.m39243a()[(int) (c % '\n')];
            c /= '\n';
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        m39200h.f11636c += i3;
        this.f11572b += i3;
        return this;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: j */
    public final short mo39112j() throws EOFException {
        if (this.f11572b >= 2) {
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            int i = c3229y.f11635b;
            int i2 = c3229y.f11636c;
            if (i2 - i < 2) {
                return (short) (((mo39113i() & 255) << 8) | (mo39113i() & 255));
            }
            byte[] bArr = c3229y.f11634a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            this.f11572b -= 2;
            if (i4 == i2) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            } else {
                c3229y.f11635b = i4;
            }
            return (short) (((b & 255) << 8) | (b2 & 255));
        }
        throw new EOFException();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: k */
    public final int mo39111k() throws EOFException {
        if (this.f11572b >= 4) {
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            int i = c3229y.f11635b;
            int i2 = c3229y.f11636c;
            if (i2 - i < 4) {
                return ((mo39113i() & 255) << 24) | ((mo39113i() & 255) << 16) | ((mo39113i() & 255) << 8) | (mo39113i() & 255);
            }
            byte[] bArr = c3229y.f11634a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i5 + 1;
            byte b4 = bArr[i5];
            this.f11572b -= 4;
            if (i6 == i2) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            } else {
                c3229y.f11635b = i6;
            }
            return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
        }
        throw new EOFException();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: l */
    public final long mo39110l() throws EOFException {
        if (this.f11572b >= 8) {
            C3229y c3229y = this.f11571a;
            C18524p.m3851a(c3229y);
            int i = c3229y.f11635b;
            int i2 = c3229y.f11636c;
            if (i2 - i < 8) {
                return ((mo39111k() & 4294967295L) << 32) | (4294967295L & mo39111k());
            }
            byte[] bArr = c3229y.f11634a;
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
            this.f11572b -= 8;
            if (i10 == i2) {
                this.f11571a = c3229y.m39100c();
                C3231z.m39098a(c3229y);
            } else {
                c3229y.f11635b = i10;
            }
            return ((j4 & 255) << 32) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (j8 & 255);
        }
        throw new EOFException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: l */
    public final C3202f mo39134m(long j) {
        if (j == 0) {
            return mo39141c(48);
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
        C3229y m39200h = m39200h(i);
        byte[] bArr = m39200h.f11634a;
        int i2 = m39200h.f11636c;
        ?? r9 = j;
        for (int i3 = (m39200h.f11636c + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = C3184a.m39243a()[(int) (15 & r9)];
            r9 >>>= 4;
        }
        m39200h.f11636c += i;
        this.f11572b += i;
        return this;
    }

    /* renamed from: m */
    public final short m39195m() throws EOFException {
        int mo39112j = mo39112j() & 65535;
        return (short) (((mo39112j & 255) << 8) | ((65280 & mo39112j) >>> 8));
    }

    /* renamed from: n */
    public final int m39194n() throws EOFException {
        int mo39111k = mo39111k();
        return ((mo39111k & 255) << 24) | (((-16777216) & mo39111k) >>> 24) | ((16711680 & mo39111k) >>> 8) | ((65280 & mo39111k) << 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fa, code lost:
        if (r21 == 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00fd, code lost:
        r22 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0129, code lost:
        throw new java.lang.NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + p092c.C3195c.m39228a(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x012e, code lost:
        if (r18 != r0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0131, code lost:
        r6.f11571a = r0.m39100c();
        p092c.C3231z.m39098a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0142, code lost:
        r0.f11635b = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x014b, code lost:
        if (r22 != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014e, code lost:
        r11 = r9;
        r9 = r7;
        r13 = r21;
        r14 = r20;
        r15 = r22;
     */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    @Override // p092c.AbstractC3207h
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo39109o() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092c.C3202f.mo39109o():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e9, code lost:
        if (r17 == 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ec, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0118, code lost:
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + p092c.C3195c.m39228a(r0));
     */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    @Override // p092c.AbstractC3207h
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo39108p() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092c.C3202f.mo39108p():long");
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: q */
    public final C3208i mo39107q() {
        return mo39120d(this.f11572b);
    }

    /* renamed from: r */
    public final String m39193r() {
        return m39219a(this.f11572b, C18405d.f63516a);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) throws IOException {
        C18524p.m3840d(sink, "sink");
        C3229y c3229y = this.f11571a;
        if (c3229y == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), c3229y.f11636c - c3229y.f11635b);
        sink.put(c3229y.f11634a, c3229y.f11635b, min);
        c3229y.f11635b += min;
        this.f11572b -= min;
        if (c3229y.f11635b == c3229y.f11636c) {
            this.f11571a = c3229y.m39100c();
            C3231z.m39098a(c3229y);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p092c.AbstractC3190ad
    public final long read(C3202f sink, long j) {
        C18524p.m3840d(sink, "sink");
        if (j >= 0) {
            ?? r0 = this.f11572b;
            if (r0 == 0) {
                return -1L;
            }
            char c = j;
            if (j > r0) {
                c = r0;
            }
            sink.write(this, c);
            return c;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: s */
    public final String mo39106s() throws EOFException {
        return mo39117f(Long.MAX_VALUE);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: t */
    public final byte[] mo39105t() {
        return mo39115g(this.f11572b);
    }

    @Override // p092c.AbstractC3188ab
    public final C3191ae timeout() {
        return C3191ae.NONE;
    }

    public final String toString() {
        long j = this.f11572b;
        if (j <= 2147483647L) {
            return m39199i((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f11572b).toString());
    }

    /* renamed from: u */
    public final void m39192u() {
        mo39114h(this.f11572b);
    }

    /* renamed from: v */
    public final C3202f clone() {
        C3202f c3202f = new C3202f();
        if (this.f11572b == 0) {
            return c3202f;
        }
        C3229y c3229y = this.f11571a;
        C18524p.m3851a(c3229y);
        C3229y m39104a = c3229y.m39104a();
        c3202f.f11571a = m39104a;
        m39104a.f11640g = m39104a;
        m39104a.f11639f = m39104a.f11640g;
        C3229y c3229y2 = c3229y.f11639f;
        while (true) {
            C3229y c3229y3 = c3229y2;
            if (c3229y3 == c3229y) {
                c3202f.f11572b = this.f11572b;
                return c3202f;
            }
            C3229y c3229y4 = m39104a.f11640g;
            C18524p.m3851a(c3229y4);
            C18524p.m3851a(c3229y3);
            c3229y4.m39103a(c3229y3.m39104a());
            c3229y2 = c3229y3.f11639f;
        }
    }

    /* renamed from: w */
    public final C3202f m39190w() {
        return clone();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) throws IOException {
        C18524p.m3840d(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            C3229y m39200h = m39200h(1);
            int min = Math.min(i, PropertyFlags.UNSIGNED - m39200h.f11636c);
            source.get(m39200h.f11634a, m39200h.f11636c, min);
            i -= min;
            m39200h.f11636c += min;
        }
        this.f11572b += remaining;
        return remaining;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // p092c.AbstractC3188ab
    public final void write(C3202f source, long j) {
        C3229y c3229y;
        int i;
        C3229y c3229y2;
        C3229y c3229y3;
        C18524p.m3840d(source, "source");
        if (source != this) {
            C3195c.m39226a(source.f11572b, 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                C3229y c3229y4 = source.f11571a;
                C18524p.m3851a(c3229y4);
                int i2 = c3229y4.f11636c;
                C18524p.m3851a(source.f11571a);
                if (r9 < i2 - c3229y.f11635b) {
                    C3229y c3229y5 = this.f11571a;
                    if (c3229y5 != null) {
                        C18524p.m3851a(c3229y5);
                        c3229y2 = c3229y5.f11640g;
                    } else {
                        c3229y2 = null;
                    }
                    if (c3229y2 != null && c3229y2.f11638e) {
                        if ((c3229y2.f11636c + r9) - (c3229y2.f11637d ? 0 : c3229y2.f11635b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            C3229y c3229y6 = source.f11571a;
                            C18524p.m3851a(c3229y6);
                            c3229y6.m39102a(c3229y2, (int) r9);
                            source.f11572b -= r9;
                            this.f11572b += r9;
                            return;
                        }
                    }
                    C3229y c3229y7 = source.f11571a;
                    C18524p.m3851a(c3229y7);
                    int i3 = (int) r9;
                    if (!(i3 > 0 && i3 <= c3229y7.f11636c - c3229y7.f11635b)) {
                        throw new IllegalArgumentException("byteCount out of range".toString());
                    }
                    if (i3 >= 1024) {
                        c3229y3 = c3229y7.m39104a();
                    } else {
                        c3229y3 = C3231z.m39099a();
                        C18273i.m4223a(c3229y7.f11634a, c3229y3.f11634a, 0, c3229y7.f11635b, c3229y7.f11635b + i3);
                    }
                    c3229y3.f11636c = c3229y3.f11635b + i3;
                    c3229y7.f11635b += i3;
                    C3229y c3229y8 = c3229y7.f11640g;
                    C18524p.m3851a(c3229y8);
                    c3229y8.m39103a(c3229y3);
                    source.f11571a = c3229y3;
                }
                C3229y c3229y9 = source.f11571a;
                C18524p.m3851a(c3229y9);
                long j2 = c3229y9.f11636c - c3229y9.f11635b;
                source.f11571a = c3229y9.m39100c();
                C3229y c3229y10 = this.f11571a;
                if (c3229y10 == null) {
                    this.f11571a = c3229y9;
                    c3229y9.f11640g = c3229y9;
                    c3229y9.f11639f = c3229y9.f11640g;
                } else {
                    C18524p.m3851a(c3229y10);
                    C3229y c3229y11 = c3229y10.f11640g;
                    C18524p.m3851a(c3229y11);
                    C3229y m39103a = c3229y11.m39103a(c3229y9);
                    if (!(m39103a.f11640g != m39103a)) {
                        throw new IllegalStateException("cannot compact".toString());
                    }
                    C3229y c3229y12 = m39103a.f11640g;
                    C18524p.m3851a(c3229y12);
                    if (c3229y12.f11638e) {
                        int i4 = m39103a.f11636c - m39103a.f11635b;
                        C3229y c3229y13 = m39103a.f11640g;
                        C18524p.m3851a(c3229y13);
                        int i5 = c3229y13.f11636c;
                        C3229y c3229y14 = m39103a.f11640g;
                        C18524p.m3851a(c3229y14);
                        if (c3229y14.f11637d) {
                            i = 0;
                        } else {
                            C3229y c3229y15 = m39103a.f11640g;
                            C18524p.m3851a(c3229y15);
                            i = c3229y15.f11635b;
                        }
                        if (i4 <= (PropertyFlags.UNSIGNED - i5) + i) {
                            C3229y c3229y16 = m39103a.f11640g;
                            C18524p.m3851a(c3229y16);
                            m39103a.m39102a(c3229y16, i4);
                            m39103a.m39100c();
                            C3231z.m39098a(m39103a);
                        }
                    }
                }
                source.f11572b -= j2;
                this.f11572b += j2;
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
