package okio;

import androidx.work.WorkRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import okhttp3.internal.connection.RealConnection;
import okio.internal.BufferKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020��H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020��H\u0016J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\fJ\u0006\u0010\u0016\u001a\u00020��J$\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0018\u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\fJ \u0010\u0017\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020��2\b\b\u0002\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u0010 \u001a\u00020��H\u0016J\b\u0010!\u001a\u00020��H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\b\u0010&\u001a\u00020#H\u0016J\b\u0010'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\fH\u0087\u0002¢\u0006\u0002\b+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\fH\u0007¢\u0006\u0002\b-J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\fH\u0016J \u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\f2\u0006\u00108\u001a\u00020\fH\u0016J\u0010\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\u0010\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\f2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\fH\u0016J\b\u0010<\u001a\u00020=H\u0016J\b\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\b\u0010@\u001a\u00020\u0019H\u0016J\b\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\f2\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010H\u001a\u00020\f2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010M\u001a\u00020)H\u0016J\b\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010P\u001a\u00020\fH\u0016J\u000e\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020��2\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\fJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010U\u001a\u00020\fH\u0016J\b\u0010V\u001a\u00020/H\u0016J\b\u0010W\u001a\u00020/H\u0016J\b\u0010X\u001a\u00020\fH\u0016J\b\u0010Y\u001a\u00020\fH\u0016J\b\u0010Z\u001a\u00020[H\u0016J\b\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020KH\u0007J\b\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\b\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\fH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0002\bnJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\b\u0010q\u001a\u00020rH\u0016J\b\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H��¢\u0006\u0002\bvJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020��2\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020��2\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\fH\u0016J\u0010\u0010{\u001a\u00020\f2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020��2\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0010\u0010\u007f\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020��2\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020��2\u0006\u0010~\u001a\u00020\fH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020��2\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020��2\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\fH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020��2\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020��2\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u0004\u0018\u00010\n8��@��X\u0081\u000e¢\u0006\u0002\n��R&\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8G@@X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0091\u0001"}, m400d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", "", "Ljava/nio/channels/ByteChannel;", "()V", "buffer", "getBuffer", "()Lokio/Buffer;", "head", "Lokio/Segment;", "<set-?>", "", "size", "()J", "setSize$okio", "(J)V", "clear", "", "clone", "close", "completeSegmentByteCount", "copy", "copyTo", "out", "Ljava/io/OutputStream;", "offset", "byteCount", "digest", "Lokio/ByteString;", "algorithm", "", "emit", "emitCompleteSegments", "equals", "", "other", "", "exhausted", "flush", "get", "", POBConstants.KEY_POSITION, "getByte", FirebaseAnalytics.Param.INDEX, "-deprecated_getByte", "hashCode", "", "hmac", SDKConstants.PARAM_KEY, "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", "b", "fromIndex", "toIndex", "bytes", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "md5", "outputStream", "peek", "rangeEquals", "bytesOffset", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readAndWriteUnsafe", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFrom", "input", "forever", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "charset", "Ljava/nio/charset/Charset;", "readUnsafe", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, "require", "select", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lokio/Options;", "sha1", "sha256", "sha512", "-deprecated_size", "skip", "snapshot", "timeout", "Lokio/Timeout;", "toString", "writableSegment", "minimumCapacity", "writableSegment$okio", "write", "source", "byteString", "Lokio/Source;", "writeAll", "writeByte", "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "beginIndex", "endIndex", "writeTo", "writeUtf8", "writeUtf8CodePoint", "codePoint", "UnsafeCursor", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/Buffer.class */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    public Segment head;
    private long size;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��R\u0012\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��¨\u0006\u0018"}, m400d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "()V", "buffer", "Lokio/Buffer;", "data", "", "end", "", "offset", "", "readWrite", "", "segment", "Lokio/Segment;", "start", "close", "", "expandBuffer", "minByteCount", "next", "resizeBuffer", "newSize", "seek", "okio"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okio/Buffer$UnsafeCursor.class */
    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                this.segment = null;
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        public final long expandBuffer(int i) {
            if (!(i > 0)) {
                throw new IllegalArgumentException(("minByteCount <= 0: " + i).toString());
            }
            if (!(i <= 8192)) {
                throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
            }
            long size = buffer.size();
            Segment writableSegment$okio = buffer.writableSegment$okio(i);
            int i2 = 8192 - writableSegment$okio.limit;
            writableSegment$okio.limit = 8192;
            long j = i2;
            buffer.setSize$okio(size + j);
            this.segment = writableSegment$okio;
            this.offset = size;
            this.data = writableSegment$okio.data;
            this.start = 8192 - i2;
            this.end = 8192;
            return j;
        }

        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        public final int next() {
            long j = this.offset;
            Buffer buffer = this.buffer;
            Intrinsics.checkNotNull(buffer);
            if (j != buffer.size()) {
                long j2 = this.offset;
                return seek(j2 == -1 ? (char) 0 : j2 + (this.end - this.start));
            }
            throw new IllegalStateException("no more bytes".toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [long] */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v30, types: [long] */
        /* JADX WARN: Type inference failed for: r0v52, types: [long] */
        /* JADX WARN: Type inference failed for: r0v69, types: [long] */
        public final long resizeBuffer(long j) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (!this.readWrite) {
                    throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
                }
                ?? size = buffer.size();
                int i = (j > size ? 1 : (j == size ? 0 : -1));
                if (i <= 0) {
                    if (!(j >= 0)) {
                        throw new IllegalArgumentException(("newSize < 0: " + j).toString());
                    }
                    char c = size;
                    char c2 = j;
                    while (true) {
                        ?? r0 = c - c2;
                        if (r0 <= 0) {
                            break;
                        }
                        Segment segment = buffer.head;
                        Intrinsics.checkNotNull(segment);
                        Segment segment2 = segment.prev;
                        Intrinsics.checkNotNull(segment2);
                        ?? r02 = segment2.limit - segment2.pos;
                        if (r02 > r0) {
                            segment2.limit -= (int) r0;
                            break;
                        }
                        buffer.head = segment2.pop();
                        SegmentPool.recycle(segment2);
                        c = r0;
                        c2 = r02;
                    }
                    this.segment = null;
                    this.offset = j;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                } else if (i > 0) {
                    char c3 = j - size;
                    boolean z = true;
                    while (true) {
                        boolean z2 = z;
                        if (c3 <= 0) {
                            break;
                        }
                        Segment writableSegment$okio = buffer.writableSegment$okio(1);
                        int min = (int) Math.min((long) c3, 8192 - writableSegment$okio.limit);
                        writableSegment$okio.limit += min;
                        c3 -= min;
                        boolean z3 = z2;
                        if (z2) {
                            this.segment = writableSegment$okio;
                            this.offset = size;
                            this.data = writableSegment$okio.data;
                            this.start = writableSegment$okio.limit - min;
                            this.end = writableSegment$okio.limit;
                            z3 = false;
                        }
                        z = z3;
                    }
                }
                buffer.setSize$okio(j);
                return size;
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }

        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v81, types: [long] */
        /* JADX WARN: Type inference failed for: r0v90, types: [long] */
        /* JADX WARN: Type inference failed for: r0v99, types: [long] */
        public final int seek(long j) {
            Segment segment;
            char c;
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (j < -1 || j > buffer.size()) {
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    String format = String.format("offset=%s > size=%s", Arrays.copyOf(new Object[]{Long.valueOf(j), Long.valueOf(buffer.size())}, 2));
                    Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
                    throw new ArrayIndexOutOfBoundsException(format);
                } else if (j == -1 || j == buffer.size()) {
                    this.segment = null;
                    this.offset = j;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                } else {
                    ?? size = buffer.size();
                    Segment segment2 = buffer.head;
                    Segment segment3 = buffer.head;
                    Segment segment4 = this.segment;
                    char c2 = 0;
                    char c3 = size;
                    Segment segment5 = segment2;
                    Segment segment6 = segment3;
                    if (segment4 != null) {
                        long j2 = this.offset;
                        int i = this.start;
                        Intrinsics.checkNotNull(segment4);
                        c2 = j2 - (i - segment4.pos);
                        if (c2 > j) {
                            segment6 = this.segment;
                            c3 = c2;
                            c2 = 0;
                            segment5 = segment2;
                        } else {
                            segment5 = this.segment;
                            segment6 = segment3;
                            c3 = size;
                        }
                    }
                    char c4 = c3;
                    if (c3 - j > j - c2) {
                        Segment segment7 = segment5;
                        while (true) {
                            Segment segment8 = segment7;
                            Intrinsics.checkNotNull(segment8);
                            c = c2;
                            segment = segment8;
                            if (j < (segment8.limit - segment8.pos) + c2) {
                                break;
                            }
                            c2 += segment8.limit - segment8.pos;
                            segment7 = segment8.next;
                        }
                    } else {
                        while (c4 > j) {
                            Intrinsics.checkNotNull(segment6);
                            segment6 = segment6.prev;
                            Intrinsics.checkNotNull(segment6);
                            c4 -= segment6.limit - segment6.pos;
                        }
                        c = c4;
                        segment = segment6;
                    }
                    Segment segment9 = segment;
                    if (this.readWrite) {
                        Intrinsics.checkNotNull(segment);
                        segment9 = segment;
                        if (segment.shared) {
                            Segment unsharedCopy = segment.unsharedCopy();
                            if (buffer.head == segment) {
                                buffer.head = unsharedCopy;
                            }
                            segment9 = segment.push(unsharedCopy);
                            Segment segment10 = segment9.prev;
                            Intrinsics.checkNotNull(segment10);
                            segment10.pop();
                        }
                    }
                    this.segment = segment9;
                    this.offset = j;
                    Intrinsics.checkNotNull(segment9);
                    this.data = segment9.data;
                    this.start = segment9.pos + ((int) (j - c));
                    int i2 = segment9.limit;
                    this.end = i2;
                    return i2 - this.start;
                }
            }
            throw new IllegalStateException("not attached to a buffer".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j, long j2, int i, Object obj) throws IOException {
        ?? r9 = j;
        if ((i & 2) != 0) {
            r9 = 0;
        }
        ?? r11 = j2;
        if ((i & 4) != 0) {
            r11 = ((Buffer) buffer).size - r9;
        }
        return buffer.copyTo(outputStream, r9, r11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, int i, Object obj) {
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = 0;
        }
        return buffer.copyTo(buffer2, r7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j, long j2, int i, Object obj) {
        ?? r9 = j;
        if ((i & 2) != 0) {
            r9 = 0;
        }
        return buffer.copyTo(buffer2, r9, j2);
    }

    private final ByteString digest(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            messageDigest.update(segment.data, segment.pos, segment.limit - segment.pos);
            Segment segment2 = segment.next;
            Intrinsics.checkNotNull(segment2);
            while (segment2 != segment) {
                messageDigest.update(segment2.data, segment2.pos, segment2.limit - segment2.pos);
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
            }
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digest, "messageDigest.digest()");
        return new ByteString(digest);
    }

    private final ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                mac.update(segment.data, segment.pos, segment.limit - segment.pos);
                Segment segment2 = segment.next;
                Intrinsics.checkNotNull(segment2);
                while (segment2 != segment) {
                    mac.update(segment2.data, segment2.pos, segment2.limit - segment2.pos);
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                }
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal()");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = new UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r8 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void readFrom(java.io.InputStream r7, long r8, boolean r10) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto Lf
            r0 = r10
            if (r0 == 0) goto Le
            goto Lf
        Le:
            return
        Lf:
            r0 = r6
            r1 = 1
            okio.Segment r0 = r0.writableSegment$okio(r1)
            r11 = r0
            r0 = r8
            r1 = 8192(0x2000, float:1.14794E-41)
            r2 = r11
            int r2 = r2.limit
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r12 = r0
            r0 = r7
            r1 = r11
            byte[] r1 = r1.data
            r2 = r11
            int r2 = r2.limit
            r3 = r12
            int r0 = r0.read(r1, r2, r3)
            r12 = r0
            r0 = r12
            r1 = -1
            if (r0 != r1) goto L6b
            r0 = r11
            int r0 = r0.pos
            r1 = r11
            int r1 = r1.limit
            if (r0 != r1) goto L5a
            r0 = r6
            r1 = r11
            okio.Segment r1 = r1.pop()
            r0.head = r1
            r0 = r11
            okio.SegmentPool.recycle(r0)
        L5a:
            r0 = r10
            if (r0 == 0) goto L60
            return
        L60:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L6b:
            r0 = r11
            r1 = r11
            int r1 = r1.limit
            r2 = r12
            int r1 = r1 + r2
            r0.limit = r1
            r0 = r6
            long r0 = r0.size
            r13 = r0
            r0 = r12
            long r0 = (long) r0
            r15 = r0
            r0 = r6
            r1 = r13
            r2 = r15
            long r1 = r1 + r2
            r0.size = r1
            r0 = r8
            r1 = r15
            long r0 = r0 - r1
            r8 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readFrom(java.io.InputStream, long, boolean):void");
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i, Object obj) {
        if ((i & 1) != 0) {
            unsafeCursor = new UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j, int i, Object obj) throws IOException {
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ((Buffer) buffer).size;
        }
        return buffer.writeTo(outputStream, r7);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    /* renamed from: -deprecated_getByte */
    public final byte m5827deprecated_getByte(long j) {
        return getByte(j);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    /* renamed from: -deprecated_size */
    public final long m5828deprecated_size() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    public final void clear() {
        skip(size());
    }

    public Buffer clone() {
        return copy();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    public final long completeSegmentByteCount() {
        ?? size = size();
        char c = 0;
        if (size != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.prev;
            Intrinsics.checkNotNull(segment2);
            c = size;
            if (segment2.limit < 8192) {
                c = size;
                if (segment2.owner) {
                    c = size - (segment2.limit - segment2.pos);
                }
            }
        }
        return c;
    }

    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            buffer.head = sharedCopy;
            sharedCopy.prev = sharedCopy;
            sharedCopy.next = sharedCopy.prev;
            Segment segment2 = segment.next;
            while (true) {
                Segment segment3 = segment2;
                if (segment3 == segment) {
                    break;
                }
                Segment segment4 = sharedCopy.prev;
                Intrinsics.checkNotNull(segment4);
                Intrinsics.checkNotNull(segment3);
                segment4.push(segment3.sharedCopy());
                segment2 = segment3.next;
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    public final Buffer copyTo(OutputStream outputStream) throws IOException {
        return copyTo$default(this, outputStream, 0L, 0L, 6, (Object) null);
    }

    public final Buffer copyTo(OutputStream outputStream, long j) throws IOException {
        return copyTo$default(this, outputStream, j, 0L, 4, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public final Buffer copyTo(OutputStream out, long j, long j2) throws IOException {
        Segment segment;
        boolean z;
        char c;
        Intrinsics.checkNotNullParameter(out, "out");
        _Util.checkOffsetAndCount(this.size, j, j2);
        if (j2 == 0) {
            return this;
        }
        Segment segment2 = this.head;
        ?? r9 = j;
        while (true) {
            Segment segment3 = segment2;
            Intrinsics.checkNotNull(segment3);
            segment = segment3;
            z = r9;
            c = j2;
            if (r9 >= segment3.limit - segment3.pos) {
                r9 -= segment3.limit - segment3.pos;
                segment2 = segment3.next;
            }
        }
        while (c > 0) {
            Intrinsics.checkNotNull(segment);
            int i = (int) (segment.pos + (z ? 1L : 0L));
            int min = (int) Math.min(segment.limit - i, (long) c);
            out.write(segment.data, i, min);
            c -= min;
            segment = segment.next;
            z = false;
        }
        return this;
    }

    public final Buffer copyTo(Buffer out, long j) {
        Intrinsics.checkNotNullParameter(out, "out");
        return copyTo(out, j, this.size - j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public final Buffer copyTo(Buffer out, long j, long j2) {
        Segment segment;
        char c;
        char c2;
        Intrinsics.checkNotNullParameter(out, "out");
        _Util.checkOffsetAndCount(size(), j, j2);
        if (j2 != 0) {
            out.setSize$okio(out.size() + j2);
            Segment segment2 = this.head;
            ?? r9 = j;
            while (true) {
                Segment segment3 = segment2;
                Intrinsics.checkNotNull(segment3);
                segment = segment3;
                c = r9;
                c2 = j2;
                if (r9 >= segment3.limit - segment3.pos) {
                    r9 -= segment3.limit - segment3.pos;
                    segment2 = segment3.next;
                }
            }
            while (c2 > 0) {
                Intrinsics.checkNotNull(segment);
                Segment sharedCopy = segment.sharedCopy();
                sharedCopy.pos += c;
                sharedCopy.limit = Math.min(sharedCopy.pos + c2, sharedCopy.limit);
                Segment segment4 = out.head;
                if (segment4 == null) {
                    sharedCopy.prev = sharedCopy;
                    sharedCopy.next = sharedCopy.prev;
                    out.head = sharedCopy.next;
                } else {
                    Intrinsics.checkNotNull(segment4);
                    Segment segment5 = segment4.prev;
                    Intrinsics.checkNotNull(segment5);
                    segment5.push(sharedCopy);
                }
                c2 -= sharedCopy.limit - sharedCopy.pos;
                segment = segment.next;
                c = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    public boolean equals(Object obj) {
        boolean z = false;
        if (this != obj) {
            if (obj instanceof Buffer) {
                Buffer buffer = (Buffer) obj;
                if (size() == buffer.size()) {
                    if (size() != 0) {
                        Segment segment = this.head;
                        Intrinsics.checkNotNull(segment);
                        Segment segment2 = buffer.head;
                        Intrinsics.checkNotNull(segment2);
                        int i = segment.pos;
                        int i2 = segment2.pos;
                        char c = 0;
                        loop0: while (c < size()) {
                            long min = Math.min(segment.limit - i, segment2.limit - i2);
                            char c2 = 0;
                            int i3 = i;
                            while (c2 < min) {
                                if (segment.data[i3] != segment2.data[i2]) {
                                    break loop0;
                                }
                                c2++;
                                i3++;
                                i2++;
                            }
                            Segment segment3 = segment;
                            i = i3;
                            if (i3 == segment.limit) {
                                segment3 = segment.next;
                                Intrinsics.checkNotNull(segment3);
                                i = segment3.pos;
                            }
                            Segment segment4 = segment2;
                            int i4 = i2;
                            if (i2 == segment2.limit) {
                                segment4 = segment2.next;
                                Intrinsics.checkNotNull(segment4);
                                i4 = segment4.pos;
                            }
                            c += min;
                            segment2 = segment4;
                            segment = segment3;
                            i2 = i4;
                        }
                    }
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer getBuffer() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v51 */
    public final byte getByte(long j) {
        byte b;
        char c;
        char c2;
        _Util.checkOffsetAndCount(size(), j, 1L);
        Segment segment = this.head;
        if (segment == null) {
            Segment segment2 = null;
            Intrinsics.checkNotNull(segment2);
            b = segment2.data[(int) (segment2.pos + j + 1)];
        } else if (size() - j < j) {
            ?? r0 = size();
            while (true) {
                c2 = r0;
                if (c2 <= j) {
                    break;
                }
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                r0 = c2 - (segment.limit - segment.pos);
            }
            Intrinsics.checkNotNull(segment);
            b = segment.data[(int) ((segment.pos + j) - c2)];
        } else {
            ?? r02 = 0;
            while (true) {
                c = r02;
                ?? r03 = (segment.limit - segment.pos) + c;
                if (r03 > j) {
                    break;
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                r02 = r03;
            }
            Intrinsics.checkNotNull(segment);
            b = segment.data[(int) ((segment.pos + j) - c)];
        }
        return b;
    }

    public int hashCode() {
        int i;
        Segment segment;
        Segment segment2 = this.head;
        if (segment2 != null) {
            int i2 = 1;
            do {
                int i3 = segment2.limit;
                i = i2;
                for (int i4 = segment2.pos; i4 < i3; i4++) {
                    i = (i * 31) + segment2.data[i4];
                }
                segment = segment2.next;
                Intrinsics.checkNotNull(segment);
                segment2 = segment;
                i2 = i;
            } while (segment != this.head);
        } else {
            i = 0;
        }
        return i;
    }

    public final ByteString hmacSha1(ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA1", key);
    }

    public final ByteString hmacSha256(ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA256", key);
    }

    public final ByteString hmacSha512(ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, LongCompanionObject.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e9, code lost:
        r13 = (r15 - r21.pos) + r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r1v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v26, types: [long] */
    /* JADX WARN: Type inference failed for: r1v36, types: [long] */
    /* JADX WARN: Type inference failed for: r1v45, types: [long] */
    /* JADX WARN: Type inference failed for: r2v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long indexOf(byte r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 553
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.indexOf(byte, long, long):long");
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes) throws IOException {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v121, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r1v11, types: [long] */
    /* JADX WARN: Type inference failed for: r1v22, types: [long] */
    /* JADX WARN: Type inference failed for: r1v34, types: [long] */
    /* JADX WARN: Type inference failed for: r1v45, types: [long] */
    /* JADX WARN: Type inference failed for: r1v57, types: [long] */
    /* JADX WARN: Type inference failed for: r2v12, types: [long] */
    /* JADX WARN: Type inference failed for: r2v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long j) throws IOException {
        char c;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            boolean z = false;
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
            }
            Segment segment = this.head;
            if (segment != null) {
                Segment segment2 = segment;
                if (size() - j < j) {
                    boolean size = size();
                    Segment segment3 = segment;
                    while (size > j) {
                        segment3 = segment3.prev;
                        Intrinsics.checkNotNull(segment3);
                        size -= segment3.limit - segment3.pos;
                    }
                    if (segment3 != null) {
                        byte[] internalArray$okio = bytes.internalArray$okio();
                        byte b = internalArray$okio[0];
                        int size2 = bytes.size();
                        long size3 = (size() - size2) + 1;
                        boolean z2 = j;
                        loop1: while (size < size3) {
                            byte[] bArr = segment3.data;
                            int min = (int) Math.min(segment3.limit, (segment3.pos + size3) - size);
                            for (int i = (int) ((segment3.pos + z2) - size); i < min; i++) {
                                if (bArr[i] == b && BufferKt.rangeEquals(segment3, i + 1, internalArray$okio, 1, size2)) {
                                    c = (i - segment3.pos) + size;
                                    break loop1;
                                }
                            }
                            size += segment3.limit - segment3.pos;
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            z2 = size;
                        }
                    }
                } else {
                    while (true) {
                        ?? r0 = (segment2.limit - segment2.pos) + z;
                        if (r0 > j) {
                            break;
                        }
                        segment2 = segment2.next;
                        Intrinsics.checkNotNull(segment2);
                        z = r0;
                    }
                    if (segment2 != null) {
                        byte[] internalArray$okio2 = bytes.internalArray$okio();
                        byte b2 = internalArray$okio2[0];
                        int size4 = bytes.size();
                        long size5 = (size() - size4) + 1;
                        boolean z3 = j;
                        loop4: while (z < size5) {
                            byte[] bArr2 = segment2.data;
                            int min2 = (int) Math.min(segment2.limit, (segment2.pos + size5) - z);
                            for (int i2 = (int) ((segment2.pos + z3) - z); i2 < min2; i2++) {
                                if (bArr2[i2] == b2 && BufferKt.rangeEquals(segment2, i2 + 1, internalArray$okio2, 1, size4)) {
                                    c = (i2 - segment2.pos) + z;
                                    break loop4;
                                }
                            }
                            z += segment2.limit - segment2.pos;
                            segment2 = segment2.next;
                            Intrinsics.checkNotNull(segment2);
                            z3 = z;
                        }
                    }
                }
            }
            c = 65535;
            return c;
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes) {
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v113, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v188, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r1v10, types: [long] */
    /* JADX WARN: Type inference failed for: r1v16, types: [long] */
    /* JADX WARN: Type inference failed for: r1v31, types: [long] */
    /* JADX WARN: Type inference failed for: r1v41, types: [long] */
    /* JADX WARN: Type inference failed for: r1v47, types: [long] */
    /* JADX WARN: Type inference failed for: r1v62, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes, long j) {
        char c;
        int i;
        boolean z;
        Segment segment;
        int i2;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        boolean z2 = false;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
        }
        Segment segment2 = this.head;
        if (segment2 != null) {
            Segment segment3 = segment2;
            if (size() - j < j) {
                z2 = size();
                segment3 = segment2;
                while (z2 > j) {
                    segment3 = segment3.prev;
                    Intrinsics.checkNotNull(segment3);
                    z2 -= segment3.limit - segment3.pos;
                }
                c = 65535;
                if (segment3 != null) {
                    if (targetBytes.size() == 2) {
                        byte b = targetBytes.getByte(0);
                        byte b2 = targetBytes.getByte(1);
                        boolean z3 = j;
                        loop1: while (true) {
                            c = 65535;
                            if (z2 >= size()) {
                                break;
                            }
                            byte[] bArr = segment3.data;
                            int i3 = segment3.limit;
                            for (int i4 = (int) ((segment3.pos + z3) - z2); i4 < i3; i4++) {
                                byte b3 = bArr[i4];
                                z = z2;
                                segment = segment3;
                                i = i4;
                                if (b3 == b) {
                                    break loop1;
                                } else if (b3 == b2) {
                                    z = z2;
                                    segment = segment3;
                                    i = i4;
                                    break loop1;
                                }
                            }
                            z2 += segment3.limit - segment3.pos;
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            z3 = z2;
                        }
                        i2 = segment.pos;
                    } else {
                        byte[] internalArray$okio = targetBytes.internalArray$okio();
                        boolean z4 = j;
                        loop3: while (true) {
                            c = 65535;
                            if (z2 >= size()) {
                                break;
                            }
                            byte[] bArr2 = segment3.data;
                            i = (int) ((segment3.pos + z4) - z2);
                            int i5 = segment3.limit;
                            while (i < i5) {
                                byte b4 = bArr2[i];
                                for (byte b5 : internalArray$okio) {
                                    if (b4 == b5) {
                                        break loop3;
                                    }
                                }
                                i++;
                            }
                            z2 += segment3.limit - segment3.pos;
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            z4 = z2;
                        }
                        i2 = segment3.pos;
                        z = z2;
                    }
                }
            } else {
                while (true) {
                    ?? r0 = (segment3.limit - segment3.pos) + z2;
                    if (r0 > j) {
                        break;
                    }
                    segment3 = segment3.next;
                    Intrinsics.checkNotNull(segment3);
                    z2 = r0;
                }
                c = 65535;
                if (segment3 != null) {
                    if (targetBytes.size() == 2) {
                        byte b6 = targetBytes.getByte(0);
                        byte b7 = targetBytes.getByte(1);
                        boolean z5 = j;
                        loop7: while (true) {
                            c = 65535;
                            if (z2 >= size()) {
                                break;
                            }
                            byte[] bArr3 = segment3.data;
                            int i6 = segment3.limit;
                            for (int i7 = (int) ((segment3.pos + z5) - z2); i7 < i6; i7++) {
                                byte b8 = bArr3[i7];
                                z = z2;
                                segment = segment3;
                                i = i7;
                                if (b8 == b6) {
                                    break loop7;
                                } else if (b8 == b7) {
                                    z = z2;
                                    segment = segment3;
                                    i = i7;
                                    break loop7;
                                }
                            }
                            z2 += segment3.limit - segment3.pos;
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            z5 = z2;
                        }
                        i2 = segment.pos;
                    } else {
                        byte[] internalArray$okio2 = targetBytes.internalArray$okio();
                        boolean z6 = j;
                        loop9: while (true) {
                            c = 65535;
                            if (z2 >= size()) {
                                break;
                            }
                            byte[] bArr4 = segment3.data;
                            i = (int) ((segment3.pos + z6) - z2);
                            int i8 = segment3.limit;
                            while (i < i8) {
                                byte b9 = bArr4[i];
                                for (byte b10 : internalArray$okio2) {
                                    if (b9 == b10) {
                                        break loop9;
                                    }
                                }
                                i++;
                            }
                            z2 += segment3.limit - segment3.pos;
                            segment3 = segment3.next;
                            Intrinsics.checkNotNull(segment3);
                            z6 = z2;
                        }
                        i2 = segment3.pos;
                        z = z2;
                    }
                }
            }
            c = (i - i2) + z;
        } else {
            c = 65535;
        }
        return c;
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                return Buffer.this.size() > 0 ? Buffer.this.readByte() & 255 : -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] sink, int i, int i2) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                return Buffer.this.read(sink, i, i2);
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.writeByte(i);
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int i, int i2) {
                Intrinsics.checkNotNullParameter(data, "data");
                Buffer.this.write(data, i, i2);
            }
        };
    }

    @Override // okio.BufferedSource
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        return rangeEquals(j, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        boolean z = false;
        if (j >= 0) {
            z = false;
            if (i >= 0) {
                z = false;
                if (i2 >= 0) {
                    z = false;
                    if (size() - j >= i2) {
                        if (bytes.size() - i >= i2) {
                            int i3 = 0;
                            while (true) {
                                if (i3 >= i2) {
                                    z = true;
                                    break;
                                } else if (getByte(i3 + j) != bytes.getByte(i + i3)) {
                                    z = false;
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Segment segment = this.head;
        if (segment != null) {
            int min = Math.min(sink.remaining(), segment.limit - segment.pos);
            sink.put(segment.data, segment.pos, min);
            segment.pos += min;
            this.size -= min;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return min;
        }
        return -1;
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(sink, "sink");
        _Util.checkOffsetAndCount(sink.length, i, i2);
        Segment segment = this.head;
        if (segment != null) {
            int min = Math.min(i2, segment.limit - segment.pos);
            ArraysKt.copyInto(segment.data, sink, i, segment.pos, segment.pos + min);
            segment.pos += min;
            setSize$okio(size() - min);
            i3 = min;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
                i3 = min;
            }
        } else {
            i3 = -1;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // okio.Source
    public long read(Buffer sink, long j) {
        char c;
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        }
        if (size() == 0) {
            c = 65535;
        } else {
            c = j;
            if (j > size()) {
                c = size();
            }
            sink.write(this, (long) c);
        }
        return c;
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() != 0) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            byte[] bArr = segment.data;
            int i3 = i + 1;
            byte b = bArr[i];
            setSize$okio(size() - 1);
            if (i3 == i2) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) throws EOFException {
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (size() < j) {
            throw new EOFException();
        } else {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return readByteString(size());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) throws EOFException {
        ByteString byteString;
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (size() < j) {
            throw new EOFException();
        } else {
            if (j >= 4096) {
                byteString = snapshot((int) j);
                skip(j);
            } else {
                byteString = new ByteString(readByteArray(j));
            }
            return byteString;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0171 A[EDGE_INSN: B:52:0x0171->B:43:0x0171 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    public final Buffer readFrom(InputStream input) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        readFrom(input, LongCompanionObject.MAX_VALUE, true);
        return this;
    }

    public final Buffer readFrom(InputStream input, long j) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        if (j >= 0) {
            readFrom(input, j, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (size() >= j) {
            sink.write(this, j);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < sink.length) {
                int read = read(sink, i2, sink.length - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f3, code lost:
        if (r17 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f6, code lost:
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0128, code lost:
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + okio._Util.toHexString(r0));
     */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        int i;
        if (size() >= 4) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i2 = segment.pos;
            int i3 = segment.limit;
            if (i3 - i2 < 4) {
                i = ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            } else {
                byte[] bArr = segment.data;
                int i4 = i2 + 1;
                byte b = bArr[i2];
                int i5 = i4 + 1;
                byte b2 = bArr[i4];
                int i6 = i5 + 1;
                byte b3 = bArr[i5];
                int i7 = i6 + 1;
                byte b4 = bArr[i6];
                setSize$okio(size() - 4);
                if (i7 == i3) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i7;
                }
                i = ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
            }
            return i;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return _Util.reverseBytes(readInt());
    }

    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        char c;
        if (size() >= 8) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 8) {
                c = ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            } else {
                byte[] bArr = segment.data;
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
                setSize$okio(size() - 8);
                if (i10 == i2) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i10;
                }
                c = ((j4 & 255) << 32) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (j8 & 255);
            }
            return c;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return _Util.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        short s;
        if (size() >= 2) {
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 2) {
                s = (short) (((readByte() & 255) << 8) | (readByte() & 255));
            } else {
                byte[] bArr = segment.data;
                int i3 = i + 1;
                byte b = bArr[i];
                int i4 = i3 + 1;
                byte b2 = bArr[i3];
                setSize$okio(size() - 2);
                if (i4 == i2) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i4;
                }
                s = (short) (((b & 255) << 8) | (b2 & 255));
            }
            return s;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return _Util.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) throws EOFException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (this.size < j) {
            throw new EOFException();
        } else {
            if (i == 0) {
                return "";
            }
            Segment segment = this.head;
            Intrinsics.checkNotNull(segment);
            if (segment.pos + j > segment.limit) {
                return new String(readByteArray(j), charset);
            }
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            int i3 = (int) j;
            String str = new String(bArr, i2, i3, charset);
            segment.pos += i3;
            this.size -= j;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return str;
        }
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return readString(this.size, charset);
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = false;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer".toString());
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        return readString(this.size, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) throws EOFException {
        return readString(j, Charsets.UTF_8);
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i;
        int i2;
        int i3;
        if (size() != 0) {
            byte b = getByte(0L);
            int i4 = 1;
            if ((b & 128) == 0) {
                i = b & Byte.MAX_VALUE;
                i3 = 1;
                i2 = 0;
            } else if ((b & 224) == 192) {
                i = b & 31;
                i3 = 2;
                i2 = 128;
            } else if ((b & 240) == 224) {
                i = b & 15;
                i3 = 3;
                i2 = 2048;
            } else if ((b & 248) != 240) {
                skip(1L);
                i = 65533;
                return i;
            } else {
                i = b & 7;
                i3 = 4;
                i2 = 65536;
            }
            long j = i3;
            if (size() < j) {
                throw new EOFException("size < " + i3 + ": " + size() + " (to read code point prefixed 0x" + _Util.toHexString(b) + ')');
            }
            while (true) {
                if (i4 < i3) {
                    long j2 = i4;
                    byte b2 = getByte(j2);
                    if ((b2 & 192) != 128) {
                        skip(j2);
                        i = 65533;
                        break;
                    }
                    i = (i << 6) | (b2 & 63);
                    i4++;
                } else {
                    skip(j);
                    if (i > 1114111) {
                        i = 65533;
                    } else if (55296 <= i && 57343 >= i) {
                        i = 65533;
                    } else if (i < i2) {
                        i = 65533;
                    }
                }
            }
            return i;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() throws EOFException {
        long indexOf = indexOf((byte) 10);
        return indexOf != -1 ? BufferKt.readUtf8Line(this, indexOf) : size() != 0 ? readUtf8(size()) : null;
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(LongCompanionObject.MAX_VALUE);
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) throws EOFException {
        String str;
        Buffer buffer;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        char c = 65535;
        if (j != LongCompanionObject.MAX_VALUE) {
            c = j + 1;
        }
        byte b = (byte) 10;
        long indexOf = indexOf(b, 0L, c);
        if (indexOf != -1) {
            str = BufferKt.readUtf8Line(this, indexOf);
        } else if (c >= size() || getByte(c - 1) != ((byte) 13) || getByte(c) != b) {
            copyTo(new Buffer(), 0L, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
        } else {
            str = BufferKt.readUtf8Line(this, c);
        }
        return str;
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.size >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) throws EOFException {
        if (this.size >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = BufferKt.selectPrefix$default(this, options, false, 2, null);
        if (selectPrefix$default == -1) {
            selectPrefix$default = -1;
        } else {
            skip(options.getByteStrings$okio()[selectPrefix$default].size());
        }
        return selectPrefix$default;
    }

    public final void setSize$okio(long j) {
        this.size = j;
    }

    public final ByteString sha1() {
        return digest("SHA-1");
    }

    public final ByteString sha256() {
        return digest("SHA-256");
    }

    public final ByteString sha512() {
        return digest("SHA-512");
    }

    public final long size() {
        return this.size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // okio.BufferedSource
    public void skip(long j) throws EOFException {
        while (j > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, segment.limit - segment.pos);
            long j2 = min;
            setSize$okio(size() - j2);
            ?? r0 = j - j2;
            segment.pos += min;
            j = r0;
            if (segment.pos == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
                j = r0;
            }
        }
    }

    public final ByteString snapshot() {
        if (size() <= ((long) Integer.MAX_VALUE)) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ByteString snapshot(int i) {
        SegmentedByteString segmentedByteString;
        if (i == 0) {
            segmentedByteString = ByteString.EMPTY;
        } else {
            _Util.checkOffsetAndCount(size(), 0L, i);
            Segment segment = this.head;
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                Intrinsics.checkNotNull(segment);
                if (segment.limit == segment.pos) {
                    throw new AssertionError("s.limit == s.pos");
                }
                i2 += segment.limit - segment.pos;
                i3++;
                segment = segment.next;
            }
            byte[] bArr = new byte[i3];
            int[] iArr = new int[i3 * 2];
            Segment segment2 = this.head;
            int i4 = 0;
            int i5 = 0;
            while (i5 < i) {
                Intrinsics.checkNotNull(segment2);
                bArr[i4] = segment2.data;
                i5 += segment2.limit - segment2.pos;
                iArr[i4] = Math.min(i5, i);
                iArr[((Object[]) bArr).length + i4] = segment2.pos;
                segment2.shared = true;
                i4++;
                segment2 = segment2.next;
            }
            segmentedByteString = new SegmentedByteString((byte[][]) bArr, iArr);
        }
        return segmentedByteString;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final Segment writableSegment$okio(int i) {
        Segment segment;
        boolean z = true;
        if (i < 1 || i > 8192) {
            z = false;
        }
        if (z) {
            Segment segment2 = this.head;
            if (segment2 == null) {
                segment = SegmentPool.take();
                this.head = segment;
                segment.prev = segment;
                segment.next = segment;
            } else {
                Intrinsics.checkNotNull(segment2);
                segment = segment2.prev;
                Intrinsics.checkNotNull(segment);
                if (segment.limit + i > 8192 || !segment.owner) {
                    segment = segment.push(SegmentPool.take());
                }
            }
            return segment;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i, 8192 - writableSegment$okio.limit);
            source.get(writableSegment$okio.data, writableSegment$okio.limit, min);
            i -= min;
            writableSegment$okio.limit += min;
        }
        this.size += remaining;
        return remaining;
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(this, i, i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Source, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // okio.BufferedSink
    public Buffer write(Source source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        ?? r7 = j;
        while (r7 > 0) {
            long read = source.read(this, r7);
            if (read == -1) {
                throw new EOFException();
            }
            r7 -= read;
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = i2;
        _Util.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment writableSegment$okio = writableSegment$okio(1);
            int min = Math.min(i3 - i, 8192 - writableSegment$okio.limit);
            byte[] bArr = writableSegment$okio.data;
            int i4 = writableSegment$okio.limit;
            int i5 = i + min;
            ArraysKt.copyInto(source, bArr, i4, i, i5);
            writableSegment$okio.limit += min;
            i = i5;
        }
        setSize$okio(size() + j);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.Sink
    public void write(Buffer source, long j) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != this) {
            _Util.checkOffsetAndCount(source.size(), 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (r9 < i - segment.pos) {
                    Segment segment4 = this.head;
                    if (segment4 != null) {
                        Intrinsics.checkNotNull(segment4);
                        segment2 = segment4.prev;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.owner) {
                        if ((segment2.limit + r9) - (segment2.shared ? 0 : segment2.pos) <= 8192) {
                            Segment segment5 = source.head;
                            Intrinsics.checkNotNull(segment5);
                            segment5.writeTo(segment2, (int) r9);
                            source.setSize$okio(source.size() - r9);
                            setSize$okio(size() + r9);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.checkNotNull(segment6);
                    source.head = segment6.split((int) r9);
                }
                Segment segment7 = source.head;
                Intrinsics.checkNotNull(segment7);
                long j2 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7.prev;
                } else {
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j2);
                setSize$okio(size() + j2);
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v2 */
    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long read = source.read(this, 8192);
            if (read == -1) {
                return c;
            }
            r0 = c + read;
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int i) {
        Segment writableSegment$okio = writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        writableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) i;
        setSize$okio(size() + 1);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long j) {
        Buffer buffer;
        long j2;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            buffer = writeByte(48);
        } else {
            boolean z = false;
            int i2 = 1;
            char c = j;
            if (i < 0) {
                c = -j;
                if (c < 0) {
                    buffer = writeUtf8("-9223372036854775808");
                } else {
                    z = true;
                }
            }
            if (c >= 100000000) {
                i2 = c < 1000000000000L ? c < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
            } else if (c >= WorkRequest.MIN_BACKOFF_MILLIS) {
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
            Segment writableSegment$okio = writableSegment$okio(i3);
            byte[] bArr = writableSegment$okio.data;
            int i4 = writableSegment$okio.limit + i3;
            while (c != 0) {
                i4--;
                bArr[i4] = BufferKt.getHEX_DIGIT_BYTES()[(int) (c % j2)];
                c /= 10;
            }
            if (z) {
                bArr[i4 - 1] = (byte) 45;
            }
            writableSegment$okio.limit += i3;
            setSize$okio(size() + i3);
            buffer = this;
        }
        return buffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j) {
        Buffer buffer;
        if (j == 0) {
            buffer = writeByte(48);
        } else {
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
            Segment writableSegment$okio = writableSegment$okio(i);
            byte[] bArr = writableSegment$okio.data;
            int i2 = writableSegment$okio.limit;
            ?? r9 = j;
            for (int i3 = (writableSegment$okio.limit + i) - 1; i3 >= i2; i3--) {
                bArr[i3] = BufferKt.getHEX_DIGIT_BYTES()[(int) (15 & r9)];
                r9 >>>= 4;
            }
            writableSegment$okio.limit += i;
            setSize$okio(size() + i);
            buffer = this;
        }
        return buffer;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i) {
        Segment writableSegment$okio = writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        writableSegment$okio.limit = i5 + 1;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeIntLe(int i) {
        return writeInt(_Util.reverseBytes(i));
    }

    @Override // okio.BufferedSink
    public Buffer writeLong(long j) {
        Segment writableSegment$okio = writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit;
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
        writableSegment$okio.limit = i8 + 1;
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeLongLe(long j) {
        return writeLong(_Util.reverseBytes(j));
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int i) {
        Segment writableSegment$okio = writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        writableSegment$okio.limit = i3 + 1;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShortLe(int i) {
        return writeShort((int) _Util.reverseBytes((short) i));
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String string, int i, int i2, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        } else if (Intrinsics.areEqual(charset, Charsets.UTF_8)) {
            return writeUtf8(string, i, i2);
        } else {
            String substring = string.substring(i, i2);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return write(bytes, 0, bytes.length);
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String string, Charset charset) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    public final Buffer writeTo(OutputStream outputStream) throws IOException {
        return writeTo$default(this, outputStream, 0L, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    public final Buffer writeTo(OutputStream out, long j) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        _Util.checkOffsetAndCount(this.size, 0L, j);
        Segment segment = this.head;
        while (j > 0) {
            Intrinsics.checkNotNull(segment);
            int min = (int) Math.min((long) j, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, min);
            segment.pos += min;
            long j2 = min;
            this.size -= j2;
            ?? r0 = j - j2;
            j = r0;
            if (segment.pos == segment.limit) {
                Segment pop = segment.pop();
                this.head = pop;
                SegmentPool.recycle(segment);
                segment = pop;
                j = r0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String string, int i, int i2) {
        char charAt;
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        while (i < i2) {
            char charAt2 = string.charAt(i);
            if (charAt2 < 128) {
                Segment writableSegment$okio = writableSegment$okio(1);
                byte[] bArr = writableSegment$okio.data;
                int i3 = writableSegment$okio.limit - i;
                int min = Math.min(i2, 8192 - i3);
                bArr[i + i3] = (byte) charAt2;
                i++;
                while (i < min && (charAt = string.charAt(i)) < 128) {
                    bArr[i + i3] = (byte) charAt;
                    i++;
                }
                int i4 = (i3 + i) - writableSegment$okio.limit;
                writableSegment$okio.limit += i4;
                setSize$okio(size() + i4);
            } else {
                if (charAt2 < 2048) {
                    Segment writableSegment$okio2 = writableSegment$okio(2);
                    writableSegment$okio2.data[writableSegment$okio2.limit] = (byte) ((charAt2 >> 6) | 192);
                    writableSegment$okio2.data[writableSegment$okio2.limit + 1] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio2.limit += 2;
                    setSize$okio(size() + 2);
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    Segment writableSegment$okio3 = writableSegment$okio(3);
                    writableSegment$okio3.data[writableSegment$okio3.limit] = (byte) ((charAt2 >> '\f') | 224);
                    writableSegment$okio3.data[writableSegment$okio3.limit + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                    writableSegment$okio3.data[writableSegment$okio3.limit + 2] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio3.limit += 3;
                    setSize$okio(size() + 3);
                } else {
                    int i5 = i + 1;
                    char charAt3 = i5 < i2 ? string.charAt(i5) : (char) 0;
                    if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                        writeByte(63);
                        i = i5;
                    } else {
                        int i6 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                        Segment writableSegment$okio4 = writableSegment$okio(4);
                        writableSegment$okio4.data[writableSegment$okio4.limit] = (byte) ((i6 >> 18) | 240);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 1] = (byte) (((i6 >> 12) & 63) | 128);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 2] = (byte) (((i6 >> 6) & 63) | 128);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 3] = (byte) ((i6 & 63) | 128);
                        writableSegment$okio4.limit += 4;
                        setSize$okio(size() + 4);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            Segment writableSegment$okio = writableSegment$okio(2);
            writableSegment$okio.data[writableSegment$okio.limit] = (byte) ((i >> 6) | 192);
            writableSegment$okio.data[writableSegment$okio.limit + 1] = (byte) ((i & 63) | 128);
            writableSegment$okio.limit += 2;
            setSize$okio(size() + 2);
        } else if (55296 <= i && 57343 >= i) {
            writeByte(63);
        } else if (i < 65536) {
            Segment writableSegment$okio2 = writableSegment$okio(3);
            writableSegment$okio2.data[writableSegment$okio2.limit] = (byte) ((i >> 12) | 224);
            writableSegment$okio2.data[writableSegment$okio2.limit + 1] = (byte) (((i >> 6) & 63) | 128);
            writableSegment$okio2.data[writableSegment$okio2.limit + 2] = (byte) ((i & 63) | 128);
            writableSegment$okio2.limit += 3;
            setSize$okio(size() + 3);
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x" + _Util.toHexString(i));
        } else {
            Segment writableSegment$okio3 = writableSegment$okio(4);
            writableSegment$okio3.data[writableSegment$okio3.limit] = (byte) ((i >> 18) | 240);
            writableSegment$okio3.data[writableSegment$okio3.limit + 1] = (byte) (((i >> 12) & 63) | 128);
            writableSegment$okio3.data[writableSegment$okio3.limit + 2] = (byte) (((i >> 6) & 63) | 128);
            writableSegment$okio3.data[writableSegment$okio3.limit + 3] = (byte) ((i & 63) | 128);
            writableSegment$okio3.limit += 4;
            setSize$okio(size() + 4);
        }
        return this;
    }
}
