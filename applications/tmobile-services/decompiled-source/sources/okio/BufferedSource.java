package okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u0010J'\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u0012J\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\r\u0010\u0015J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\fH&¢\u0006\u0004\b\r\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u0013H&¢\u0006\u0004\b\u0018\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\fH&¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u001a\u001a\u00020\u0019H&¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020��H&¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H&¢\u0006\u0004\b\u001f\u0010 J/\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H&¢\u0006\u0004\b\u001f\u0010$J\u0017\u0010'\u001a\u00020!2\u0006\u0010&\u001a\u00020%H&¢\u0006\u0004\b'\u0010(J'\u0010'\u001a\u00020!2\u0006\u0010&\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020!2\u0006\u0010#\u001a\u00020!H&¢\u0006\u0004\b'\u0010)J\u0017\u0010+\u001a\u00020\f2\u0006\u0010&\u001a\u00020*H&¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\nH&¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020%H&¢\u0006\u0004\b/\u00100J\u0017\u0010/\u001a\u00020%2\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\b/\u00101J\u000f\u00102\u001a\u00020\u0013H&¢\u0006\u0004\b2\u00103J\u0017\u00102\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\b2\u00104J\u000f\u00105\u001a\u00020\fH&¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u0002072\u0006\u0010&\u001a\u00020%H&¢\u0006\u0004\b8\u00109J\u001f\u00108\u001a\u0002072\u0006\u0010&\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\b8\u0010:J\u000f\u0010;\u001a\u00020\fH&¢\u0006\u0004\b;\u00106J\u000f\u0010<\u001a\u00020!H&¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020!H&¢\u0006\u0004\b>\u0010=J\u000f\u0010?\u001a\u00020\fH&¢\u0006\u0004\b?\u00106J\u000f\u0010@\u001a\u00020\fH&¢\u0006\u0004\b@\u00106J\u000f\u0010B\u001a\u00020AH&¢\u0006\u0004\bB\u0010CJ\u000f\u0010D\u001a\u00020AH&¢\u0006\u0004\bD\u0010CJ\u0017\u0010H\u001a\u00020G2\u0006\u0010F\u001a\u00020EH&¢\u0006\u0004\bH\u0010IJ\u001f\u0010H\u001a\u00020G2\u0006\u0010#\u001a\u00020\f2\u0006\u0010F\u001a\u00020EH&¢\u0006\u0004\bH\u0010JJ\u000f\u0010K\u001a\u00020GH&¢\u0006\u0004\bK\u0010LJ\u0017\u0010K\u001a\u00020G2\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\bK\u0010MJ\u000f\u0010N\u001a\u00020!H&¢\u0006\u0004\bN\u0010=J\u0011\u0010O\u001a\u0004\u0018\u00010GH&¢\u0006\u0004\bO\u0010LJ\u000f\u0010P\u001a\u00020GH&¢\u0006\u0004\bP\u0010LJ\u0017\u0010P\u001a\u00020G2\u0006\u0010Q\u001a\u00020\fH&¢\u0006\u0004\bP\u0010MJ\u0017\u0010R\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\bR\u0010SJ\u0017\u0010T\u001a\u0002072\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\bT\u0010UJ\u0017\u0010X\u001a\u00020!2\u0006\u0010W\u001a\u00020VH&¢\u0006\u0004\bX\u0010YJ\u0017\u0010Z\u001a\u0002072\u0006\u0010#\u001a\u00020\fH&¢\u0006\u0004\bZ\u0010UR\u0016\u0010\u0005\u001a\u00020\u00048&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\u0006¨\u0006\\"}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "Lkotlin/Any;", "Lokio/Buffer;", "buffer", "()Lokio/Buffer;", "", "exhausted", "()Z", "", "b", "", "indexOf", "(B)J", "fromIndex", "(BJ)J", "toIndex", "(BJJ)J", "Lokio/ByteString;", "bytes", "(Lokio/ByteString;)J", "(Lokio/ByteString;J)J", "targetBytes", "indexOfElement", "Ljava/io/InputStream;", "inputStream", "()Ljava/io/InputStream;", "peek", "()Lokio/BufferedSource;", "offset", "rangeEquals", "(JLokio/ByteString;)Z", "", "bytesOffset", "byteCount", "(JLokio/ByteString;II)Z", "", "sink", "read", "([B)I", "([BII)I", "Lokio/Sink;", "readAll", "(Lokio/Sink;)J", "readByte", "()B", "readByteArray", "()[B", "(J)[B", "readByteString", "()Lokio/ByteString;", "(J)Lokio/ByteString;", "readDecimalLong", "()J", "", "readFully", "([B)V", "(Lokio/Buffer;J)V", "readHexadecimalUnsignedLong", "readInt", "()I", "readIntLe", "readLong", "readLongLe", "", "readShort", "()S", "readShortLe", "Ljava/nio/charset/Charset;", "charset", "", "readString", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "(JLjava/nio/charset/Charset;)Ljava/lang/String;", "readUtf8", "()Ljava/lang/String;", "(J)Ljava/lang/String;", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "(J)Z", "require", "(J)V", "Lokio/Options;", "options", "select", "(Lokio/Options;)I", "skip", "getBuffer", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/BufferedSource.class */
public interface BufferedSource extends Source, ReadableByteChannel {
    /* renamed from: D */
    void mo86D(@NotNull Buffer buffer, long j) throws IOException;

    /* renamed from: E */
    long mo85E(@NotNull ByteString byteString) throws IOException;

    /* renamed from: G */
    long mo84G() throws IOException;

    @NotNull
    /* renamed from: H */
    String mo83H(long j) throws IOException;

    /* renamed from: O */
    boolean mo82O(long j, @NotNull ByteString byteString) throws IOException;

    @NotNull
    /* renamed from: P */
    String mo81P(@NotNull Charset charset) throws IOException;

    @NotNull
    /* renamed from: U */
    ByteString mo80U() throws IOException;

    @NotNull
    /* renamed from: a0 */
    String mo78a0() throws IOException;

    @NotNull
    /* renamed from: c */
    Buffer mo76c();

    @NotNull
    /* renamed from: c0 */
    byte[] mo75c0(long j) throws IOException;

    @Deprecated
    @NotNull
    /* renamed from: j */
    Buffer mo70j();

    /* renamed from: l0 */
    long mo68l0(@NotNull Sink sink) throws IOException;

    @NotNull
    /* renamed from: n */
    ByteString mo67n(long j) throws IOException;

    /* renamed from: p0 */
    void mo66p0(long j) throws IOException;

    @NotNull
    BufferedSource peek();

    /* renamed from: r0 */
    long mo65r0() throws IOException;

    byte readByte() throws IOException;

    void readFully(@NotNull byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    boolean request(long j) throws IOException;

    @NotNull
    /* renamed from: s0 */
    InputStream mo64s0();

    void skip(long j) throws IOException;

    /* renamed from: t0 */
    int mo63t0(@NotNull Options options) throws IOException;

    @NotNull
    /* renamed from: w */
    byte[] mo62w() throws IOException;

    /* renamed from: y */
    long mo61y(@NotNull ByteString byteString) throws IOException;

    /* renamed from: z */
    boolean mo60z() throws IOException;
}
