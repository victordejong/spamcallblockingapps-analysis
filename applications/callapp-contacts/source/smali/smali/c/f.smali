.class public final Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g;
.implements Lc/h;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000cH\u0016J \u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u000cH\u0016J\u0010\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0010\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\u0008\u0010@\u001a\u00020\u0019H\u0016J\u0008\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010M\u001a\u00020)H\u0016J\u0008\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010P\u001a\u00020\u000cH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000cJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010U\u001a\u00020\u000cH\u0016J\u0008\u0010V\u001a\u00020/H\u0016J\u0008\u0010W\u001a\u00020/H\u0016J\u0008\u0010X\u001a\u00020\u000cH\u0016J\u0008\u0010Y\u001a\u00020\u000cH\u0016J\u0008\u0010Z\u001a\u00020[H\u0016J\u0008\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u000cH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\u0008\u0010q\u001a\u00020rH\u0016J\u0008\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008vJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010{\u001a\u00020\u000c2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "()V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "head",
        "Lokio/Segment;",
        "<set-?>",
        "",
        "size",
        "()J",
        "setSize$okio",
        "(J)V",
        "clear",
        "",
        "clone",
        "close",
        "completeSegmentByteCount",
        "copy",
        "copyTo",
        "out",
        "Ljava/io/OutputStream;",
        "offset",
        "byteCount",
        "digest",
        "Lokio/ByteString;",
        "algorithm",
        "",
        "emit",
        "emitCompleteSegments",
        "equals",
        "",
        "other",
        "",
        "exhausted",
        "flush",
        "get",
        "",
        "pos",
        "getByte",
        "index",
        "-deprecated_getByte",
        "hashCode",
        "",
        "hmac",
        "key",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "inputStream",
        "Ljava/io/InputStream;",
        "isOpen",
        "md5",
        "outputStream",
        "peek",
        "rangeEquals",
        "bytesOffset",
        "read",
        "sink",
        "Ljava/nio/ByteBuffer;",
        "",
        "readAll",
        "Lokio/Sink;",
        "readAndWriteUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readByte",
        "readByteArray",
        "readByteString",
        "readDecimalLong",
        "readFrom",
        "input",
        "forever",
        "readFully",
        "readHexadecimalUnsignedLong",
        "readInt",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readShort",
        "",
        "readShortLe",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUnsafe",
        "readUtf8",
        "readUtf8CodePoint",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "request",
        "require",
        "select",
        "options",
        "Lokio/Options;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "skip",
        "snapshot",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$okio",
        "write",
        "source",
        "byteString",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "beginIndex",
        "endIndex",
        "writeTo",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
        "UnsafeCursor",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Lc/y;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/f;)Lc/f$a;
    .locals 1

    .line 577
    new-instance v0, Lc/f$a;

    invoke-direct {v0}, Lc/f$a;-><init>()V

    invoke-virtual {p0, v0}, Lc/f;->a(Lc/f$a;)Lc/f$a;

    move-result-object p0

    return-object p0
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 300
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_4

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 303
    :cond_1
    iget-object v0, p0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 304
    iget v1, v0, Lc/y;->b:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lc/y;->c:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 306
    invoke-virtual {p0, p1, p2}, Lc/f;->g(J)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 309
    :cond_2
    iget-object v1, v0, Lc/y;->a:[B

    iget v2, v0, Lc/y;->b:I

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 310
    iget p3, v0, Lc/y;->b:I

    add-int/2addr p3, v3

    iput p3, v0, Lc/y;->b:I

    .line 311
    iget-wide v1, p0, Lc/f;->b:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lc/f;->b:J

    .line 313
    iget p1, v0, Lc/y;->b:I

    iget p2, v0, Lc/y;->c:I

    if-ne p1, p2, :cond_3

    .line 314
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object p1

    iput-object p1, p0, Lc/f;->a:Lc/y;

    .line 315
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    :cond_3
    return-object v4

    .line 300
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 299
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private a(JLc/i;I)Z
    .locals 6

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    if-ltz p4, :cond_3

    .line 50228
    iget-wide v1, p0, Lc/f;->b:J

    sub-long/2addr v1, p1

    int-to-long v3, p4

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 50229
    invoke-virtual {p3}, Lc/i;->f()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge v1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    int-to-long v2, v1

    add-long/2addr v2, p1

    .line 2038
    invoke-virtual {p0, v2, v3}, Lc/f;->c(J)B

    move-result v2

    add-int/lit8 v3, v1, 0x0

    .line 50230
    invoke-virtual {p3, v3}, Lc/i;->b(I)B

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private d(Lc/i;)J
    .locals 13

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Lc/f;->a:Lc/y;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 50215
    :cond_0
    iget-wide v3, p0, Lc/f;->b:J

    const-wide/16 v5, 0x0

    sub-long v7, v3, v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmp-long v12, v7, v5

    if-gez v12, :cond_b

    :goto_0
    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 2016
    iget-object v0, v0, Lc/y;->g:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2017
    iget v7, v0, Lc/y;->c:I

    iget v8, v0, Lc/y;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v3, v7

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    goto/16 :goto_f

    .line 50217
    :cond_2
    invoke-virtual {p1}, Lc/i;->f()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 50218
    invoke-virtual {p1, v10}, Lc/i;->b(I)B

    move-result v7

    .line 50219
    invoke-virtual {p1, v11}, Lc/i;->b(I)B

    move-result p1

    .line 50220
    :goto_1
    iget-wide v8, p0, Lc/f;->b:J

    cmp-long v10, v3, v8

    if-gez v10, :cond_a

    .line 1973
    iget-object v8, v0, Lc/y;->a:[B

    .line 1974
    iget v9, v0, Lc/y;->b:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    sub-long/2addr v9, v3

    long-to-int v5, v9

    .line 1975
    iget v6, v0, Lc/y;->c:I

    :goto_2
    if-ge v5, v6, :cond_5

    .line 1977
    aget-byte v9, v8, v5

    if-eq v9, v7, :cond_4

    if-ne v9, p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1979
    :cond_4
    :goto_3
    iget p1, v0, Lc/y;->b:I

    :goto_4
    sub-int/2addr v5, p1

    int-to-long v0, v5

    add-long/2addr v0, v3

    return-wide v0

    .line 1985
    :cond_5
    iget v5, v0, Lc/y;->c:I

    iget v6, v0, Lc/y;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 1987
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_1

    .line 1991
    :cond_6
    invoke-virtual {p1}, Lc/i;->h()[B

    move-result-object p1

    .line 50221
    :goto_5
    iget-wide v7, p0, Lc/f;->b:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_a

    .line 1993
    iget-object v7, v0, Lc/y;->a:[B

    .line 1994
    iget v8, v0, Lc/y;->b:I

    int-to-long v8, v8

    add-long/2addr v8, v5

    sub-long/2addr v8, v3

    long-to-int v5, v8

    .line 1995
    iget v6, v0, Lc/y;->c:I

    :goto_6
    if-ge v5, v6, :cond_9

    .line 1997
    aget-byte v8, v7, v5

    .line 1998
    array-length v9, p1

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v9, :cond_8

    aget-byte v12, p1, v11

    if-ne v8, v12, :cond_7

    .line 1999
    :goto_8
    iget p1, v0, Lc/y;->b:I

    goto :goto_4

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2005
    :cond_9
    iget v5, v0, Lc/y;->c:I

    iget v6, v0, Lc/y;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 2007
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_5

    :cond_a
    return-wide v1

    :cond_b
    move-wide v3, v5

    .line 2024
    :goto_9
    iget v7, v0, Lc/y;->c:I

    iget v8, v0, Lc/y;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v3

    cmp-long v12, v7, v5

    if-gtz v12, :cond_c

    .line 2026
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v3, v7

    goto :goto_9

    :cond_c
    if-nez v0, :cond_d

    goto/16 :goto_f

    .line 50222
    :cond_d
    invoke-virtual {p1}, Lc/i;->f()I

    move-result v7

    if-ne v7, v9, :cond_10

    .line 50223
    invoke-virtual {p1, v10}, Lc/i;->b(I)B

    move-result v7

    .line 50224
    invoke-virtual {p1, v11}, Lc/i;->b(I)B

    move-result p1

    .line 50225
    :goto_a
    iget-wide v8, p0, Lc/f;->b:J

    cmp-long v10, v3, v8

    if-gez v10, :cond_14

    .line 1973
    iget-object v8, v0, Lc/y;->a:[B

    .line 1974
    iget v9, v0, Lc/y;->b:I

    int-to-long v9, v9

    add-long/2addr v9, v5

    sub-long/2addr v9, v3

    long-to-int v5, v9

    .line 1975
    iget v6, v0, Lc/y;->c:I

    :goto_b
    if-ge v5, v6, :cond_f

    .line 1977
    aget-byte v9, v8, v5

    if-eq v9, v7, :cond_4

    if-ne v9, p1, :cond_e

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 1985
    :cond_f
    iget v5, v0, Lc/y;->c:I

    iget v6, v0, Lc/y;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 1987
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_a

    .line 1991
    :cond_10
    invoke-virtual {p1}, Lc/i;->h()[B

    move-result-object p1

    .line 50226
    :goto_c
    iget-wide v7, p0, Lc/f;->b:J

    cmp-long v9, v3, v7

    if-gez v9, :cond_14

    .line 1993
    iget-object v7, v0, Lc/y;->a:[B

    .line 1994
    iget v8, v0, Lc/y;->b:I

    int-to-long v8, v8

    add-long/2addr v8, v5

    sub-long/2addr v8, v3

    long-to-int v5, v8

    .line 1995
    iget v6, v0, Lc/y;->c:I

    :goto_d
    if-ge v5, v6, :cond_13

    .line 1997
    aget-byte v8, v7, v5

    .line 1998
    array-length v9, p1

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v9, :cond_12

    aget-byte v12, p1, v11

    if-ne v8, v12, :cond_11

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 2005
    :cond_13
    iget v5, v0, Lc/y;->c:I

    iget v6, v0, Lc/y;->b:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 2007
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v3, v5

    goto :goto_c

    :cond_14
    :goto_f
    return-wide v1
.end method

.method private i(I)Lc/i;
    .locals 7

    if-nez p1, :cond_0

    .line 2108
    sget-object p1, Lc/i;->c:Lc/i;

    return-object p1

    .line 51786
    :cond_0
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    .line 2109
    invoke-static/range {v0 .. v5}, Lc/c;->a(JJJ)V

    .line 2114
    iget-object v0, p0, Lc/f;->a:Lc/y;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 2116
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v4, v0, Lc/y;->c:I

    iget v5, v0, Lc/y;->b:I

    if-eq v4, v5, :cond_1

    .line 2119
    iget v4, v0, Lc/y;->c:I

    iget v5, v0, Lc/y;->b:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 2121
    iget-object v0, v0, Lc/y;->f:Lc/y;

    goto :goto_0

    .line 2117
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 2125
    :cond_2
    new-array v0, v3, [[B

    mul-int/lit8 v3, v3, 0x2

    .line 2126
    new-array v2, v3, [I

    .line 2129
    iget-object v3, p0, Lc/f;->a:Lc/y;

    move-object v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    .line 2131
    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v5, v4, Lc/y;->a:[B

    aput-object v5, v0, v3

    .line 2132
    iget v5, v4, Lc/y;->c:I

    iget v6, v4, Lc/y;->b:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 2134
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v2, v3

    .line 2135
    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    array-length v5, v5

    add-int/2addr v5, v3

    iget v6, v4, Lc/y;->b:I

    aput v6, v2, v5

    const/4 v5, 0x1

    .line 2136
    iput-boolean v5, v4, Lc/y;->d:Z

    add-int/2addr v3, v5

    .line 2138
    iget-object v4, v4, Lc/y;->f:Lc/y;

    goto :goto_1

    .line 2141
    :cond_3
    new-instance p1, Lc/aa;

    check-cast v0, [[B

    invoke-direct {p1, v0, v2}, Lc/aa;-><init>([[B[I)V

    check-cast p1, Lc/i;

    return-object p1
.end method


# virtual methods
.method public final a(Lc/s;)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1314
    invoke-static {p0, p1}, Lc/a/a;->a(Lc/f;Lc/s;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 31022
    :cond_0
    iget-object p1, p1, Lc/s;->b:[Lc/i;

    .line 1318
    aget-object p1, p1, v0

    .line 31124
    invoke-virtual {p1}, Lc/i;->f()I

    move-result p1

    int-to-long v1, p1

    .line 1319
    invoke-virtual {p0, v1, v2}, Lc/f;->h(J)V

    return v0
.end method

.method public final a([BII)I
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    .line 1442
    iget-object v0, p0, Lc/f;->a:Lc/y;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1443
    :cond_0
    iget v1, v0, Lc/y;->c:I

    iget v2, v0, Lc/y;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1444
    iget-object v1, v0, Lc/y;->a:[B

    .line 1445
    iget v2, v0, Lc/y;->b:I

    iget v3, v0, Lc/y;->b:I

    add-int/2addr v3, p3

    .line 1444
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/a/i;->a([B[BIII)[B

    .line 1448
    iget p1, v0, Lc/y;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lc/y;->b:I

    .line 40073
    iget-wide p1, p0, Lc/f;->b:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    .line 41073
    iput-wide p1, p0, Lc/f;->b:J

    .line 1451
    iget p1, v0, Lc/y;->b:I

    iget p2, v0, Lc/y;->c:I

    if-ne p1, p2, :cond_1

    .line 1452
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object p1

    iput-object p1, p0, Lc/f;->a:Lc/y;

    .line 1453
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    :cond_1
    return p3
.end method

.method public final a(BJJ)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_f

    .line 50211
    iget-wide v8, v0, Lc/f;->b:J

    cmp-long v10, v4, v8

    if-lez v10, :cond_2

    move-wide v4, v8

    :cond_2
    cmp-long v12, v2, v4

    if-eqz v12, :cond_e

    .line 1864
    iget-object v12, v0, Lc/f;->a:Lc/y;

    if-nez v12, :cond_3

    goto/16 :goto_8

    :cond_3
    sub-long v13, v8, v2

    cmp-long v15, v13, v2

    if-gez v15, :cond_9

    :goto_2
    cmp-long v6, v8, v2

    if-lez v6, :cond_4

    .line 1891
    iget-object v12, v12, Lc/y;->g:Lc/y;

    invoke-static {v12}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1892
    iget v6, v12, Lc/y;->c:I

    iget v7, v12, Lc/y;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v8, v6

    goto :goto_2

    :cond_4
    if-nez v12, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_3
    cmp-long v6, v8, v4

    if-gez v6, :cond_8

    .line 1870
    iget-object v6, v12, Lc/y;->a:[B

    .line 1871
    iget v7, v12, Lc/y;->c:I

    int-to-long v13, v7

    iget v7, v12, Lc/y;->b:I

    int-to-long v10, v7

    add-long/2addr v10, v4

    sub-long/2addr v10, v8

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v7, v10

    .line 1872
    iget v10, v12, Lc/y;->b:I

    int-to-long v10, v10

    add-long/2addr v10, v2

    sub-long/2addr v10, v8

    long-to-int v2, v10

    :goto_4
    if-ge v2, v7, :cond_7

    .line 1874
    aget-byte v3, v6, v2

    if-ne v3, v1, :cond_6

    .line 1875
    iget v1, v12, Lc/y;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v1, v8

    return-wide v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1881
    :cond_7
    iget v2, v12, Lc/y;->c:I

    iget v3, v12, Lc/y;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v8, v2

    .line 1883
    iget-object v12, v12, Lc/y;->f:Lc/y;

    invoke-static {v12}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v2, v8

    goto :goto_3

    :cond_8
    const-wide/16 v2, -0x1

    return-wide v2

    .line 1899
    :cond_9
    :goto_5
    iget v8, v12, Lc/y;->c:I

    iget v9, v12, Lc/y;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v10, v8, v2

    if-gtz v10, :cond_a

    .line 1901
    iget-object v12, v12, Lc/y;->f:Lc/y;

    invoke-static {v12}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v6, v8

    goto :goto_5

    :cond_a
    if-nez v12, :cond_b

    goto :goto_8

    :cond_b
    :goto_6
    cmp-long v8, v6, v4

    if-gez v8, :cond_e

    .line 1870
    iget-object v8, v12, Lc/y;->a:[B

    .line 1871
    iget v9, v12, Lc/y;->c:I

    int-to-long v9, v9

    iget v11, v12, Lc/y;->b:I

    int-to-long v13, v11

    add-long/2addr v13, v4

    sub-long/2addr v13, v6

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 1872
    iget v9, v12, Lc/y;->b:I

    int-to-long v13, v9

    add-long/2addr v13, v2

    sub-long/2addr v13, v6

    long-to-int v2, v13

    :goto_7
    if-ge v2, v10, :cond_d

    .line 1874
    aget-byte v3, v8, v2

    if-ne v3, v1, :cond_c

    .line 1875
    iget v1, v12, Lc/y;->b:I

    sub-int/2addr v2, v1

    int-to-long v1, v2

    add-long/2addr v1, v6

    return-wide v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1881
    :cond_d
    iget v2, v12, Lc/y;->c:I

    iget v3, v12, Lc/y;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 1883
    iget-object v12, v12, Lc/y;->f:Lc/y;

    invoke-static {v12}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v2, v6

    goto :goto_6

    :cond_e
    :goto_8
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1858
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "size="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50210
    iget-wide v6, v0, Lc/f;->b:J

    .line 1858
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " fromIndex="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final a(Lc/ab;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1329
    invoke-interface {p1, p0, v0, v1}, Lc/ab;->write(Lc/f;J)V

    :cond_0
    return-wide v0
.end method

.method public final a(Lc/ad;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    .line 1642
    invoke-interface {p1, p0, v2, v3}, Lc/ad;->read(Lc/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final a(Lc/f$a;)Lc/f$a;
    .locals 2

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v0, p1, Lc/f$a;->a:Lc/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 580
    move-object v0, p0

    check-cast v0, Lc/f;

    iput-object v0, p1, Lc/f$a;->a:Lc/f;

    .line 581
    iput-boolean v1, p1, Lc/f$a;->b:Z

    return-object p1

    .line 578
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already attached to a buffer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a()Lc/f;
    .locals 0

    return-object p0
.end method

.method public final a(I)Lc/f;
    .locals 9

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1573
    invoke-virtual {p0, p1}, Lc/f;->b(I)Lc/f;

    goto/16 :goto_1

    :cond_0
    const/16 v1, 0x800

    const/4 v2, 0x2

    const/16 v3, 0x3f

    if-ge p1, v1, :cond_1

    .line 1577
    invoke-virtual {p0, v2}, Lc/f;->h(I)Lc/y;

    move-result-object v1

    .line 1579
    iget-object v4, v1, Lc/y;->a:[B

    iget v5, v1, Lc/y;->c:I

    shr-int/lit8 v6, p1, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1580
    iget-object v4, v1, Lc/y;->a:[B

    iget v5, v1, Lc/y;->c:I

    add-int/lit8 v5, v5, 0x1

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v4, v5

    .line 1582
    iget p1, v1, Lc/y;->c:I

    add-int/2addr p1, v2

    iput p1, v1, Lc/y;->c:I

    .line 50076
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 50077
    iput-wide v0, p0, Lc/f;->b:J

    goto/16 :goto_1

    :cond_1
    const v1, 0xdfff

    const v4, 0xd800

    if-le v4, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v1, p1, :cond_3

    .line 1587
    invoke-virtual {p0, v3}, Lc/f;->b(I)Lc/f;

    goto/16 :goto_1

    :cond_3
    :goto_0
    const/high16 v1, 0x10000

    const/4 v4, 0x3

    if-ge p1, v1, :cond_4

    .line 1591
    invoke-virtual {p0, v4}, Lc/f;->h(I)Lc/y;

    move-result-object v1

    .line 1593
    iget-object v5, v1, Lc/y;->a:[B

    iget v6, v1, Lc/y;->c:I

    shr-int/lit8 v7, p1, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1594
    iget-object v5, v1, Lc/y;->a:[B

    iget v6, v1, Lc/y;->c:I

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, p1, 0x6

    and-int/2addr v7, v3

    or-int/2addr v7, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 1595
    iget-object v5, v1, Lc/y;->a:[B

    iget v6, v1, Lc/y;->c:I

    add-int/2addr v6, v2

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v5, v6

    .line 1597
    iget p1, v1, Lc/y;->c:I

    add-int/2addr p1, v4

    iput p1, v1, Lc/y;->c:I

    .line 50078
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    .line 50079
    iput-wide v0, p0, Lc/f;->b:J

    goto :goto_1

    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    const/4 v1, 0x4

    .line 1602
    invoke-virtual {p0, v1}, Lc/f;->h(I)Lc/y;

    move-result-object v5

    .line 1604
    iget-object v6, v5, Lc/y;->a:[B

    iget v7, v5, Lc/y;->c:I

    shr-int/lit8 v8, p1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1605
    iget-object v6, v5, Lc/y;->a:[B

    iget v7, v5, Lc/y;->c:I

    add-int/lit8 v7, v7, 0x1

    shr-int/lit8 v8, p1, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1606
    iget-object v6, v5, Lc/y;->a:[B

    iget v7, v5, Lc/y;->c:I

    add-int/2addr v7, v2

    shr-int/lit8 v2, p1, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 1607
    iget-object v2, v5, Lc/y;->a:[B

    iget v6, v5, Lc/y;->c:I

    add-int/2addr v6, v4

    and-int/2addr p1, v3

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v6

    .line 1609
    iget p1, v5, Lc/y;->c:I

    add-int/2addr p1, v1

    iput p1, v5, Lc/y;->c:I

    .line 50080
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 50081
    iput-wide v0, p0, Lc/f;->b:J

    :goto_1
    return-object p0

    .line 1613
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lc/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Lc/f;JJ)Lc/f;
    .locals 7

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4073
    iget-wide v1, p0, Lc/f;->b:J

    move-wide v3, p2

    move-wide v5, p4

    .line 1023
    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-eqz v2, :cond_2

    .line 5073
    iget-wide v2, p1, Lc/f;->b:J

    add-long/2addr v2, p4

    .line 6073
    iput-wide v2, p1, Lc/f;->b:J

    .line 1029
    iget-object v2, p0, Lc/f;->a:Lc/y;

    .line 1030
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v3, v2, Lc/y;->c:I

    iget v4, v2, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_0

    .line 1031
    iget v3, v2, Lc/y;->c:I

    iget v4, v2, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 1032
    iget-object v2, v2, Lc/y;->f:Lc/y;

    goto :goto_0

    :cond_0
    :goto_1
    cmp-long v3, p4, v0

    if-lez v3, :cond_2

    .line 1037
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lc/y;->a()Lc/y;

    move-result-object v3

    .line 1038
    iget v4, v3, Lc/y;->b:I

    long-to-int p3, p2

    add-int/2addr v4, p3

    iput v4, v3, Lc/y;->b:I

    .line 1039
    iget p2, v3, Lc/y;->b:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lc/y;->c:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lc/y;->c:I

    .line 1040
    iget-object p2, p1, Lc/f;->a:Lc/y;

    if-nez p2, :cond_1

    .line 1041
    iput-object v3, v3, Lc/y;->g:Lc/y;

    .line 1042
    iget-object p2, v3, Lc/y;->g:Lc/y;

    iput-object p2, v3, Lc/y;->f:Lc/y;

    .line 1043
    iget-object p2, v3, Lc/y;->f:Lc/y;

    iput-object p2, p1, Lc/f;->a:Lc/y;

    goto :goto_2

    .line 1045
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object p2, p2, Lc/y;->g:Lc/y;

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lc/y;->a(Lc/y;)Lc/y;

    .line 1047
    :goto_2
    iget p2, v3, Lc/y;->c:I

    iget p3, v3, Lc/y;->b:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 1049
    iget-object v2, v2, Lc/y;->f:Lc/y;

    move-wide p2, v0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final a(Lc/i;)Lc/f;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44124
    invoke-virtual {p1}, Lc/i;->f()I

    move-result v0

    .line 1477
    invoke-virtual {p1, p0, v0}, Lc/i;->a(Lc/f;I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lc/f;
    .locals 2

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lc/f;->a(Ljava/lang/String;II)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)Lc/f;
    .locals 12

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_e

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_d

    .line 1484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_c

    :goto_3
    if-ge p2, p3, :cond_b

    .line 1489
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_4

    .line 1493
    invoke-virtual {p0, v1}, Lc/f;->h(I)Lc/y;

    move-result-object v4

    .line 1494
    iget-object v5, v4, Lc/y;->a:[B

    .line 1495
    iget v6, v4, Lc/y;->c:I

    sub-int/2addr v6, p2

    rsub-int v7, v6, 0x2000

    .line 1496
    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 1499
    aput-byte v2, v5, p2

    :goto_4
    move p2, v8

    if-ge p2, v7, :cond_3

    .line 1504
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ge v2, v3, :cond_3

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p2, v6

    int-to-byte v2, v2

    .line 1506
    aput-byte v2, v5, p2

    goto :goto_4

    :cond_3
    add-int/2addr v6, p2

    .line 1509
    iget v2, v4, Lc/y;->c:I

    sub-int/2addr v6, v2

    .line 1510
    iget v2, v4, Lc/y;->c:I

    add-int/2addr v2, v6

    iput v2, v4, Lc/y;->c:I

    .line 45073
    iget-wide v2, p0, Lc/f;->b:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    .line 46073
    iput-wide v2, p0, Lc/f;->b:J

    goto :goto_3

    :cond_4
    const/16 v4, 0x800

    const/4 v5, 0x2

    if-ge v2, v4, :cond_5

    .line 1516
    invoke-virtual {p0, v5}, Lc/f;->h(I)Lc/y;

    move-result-object v4

    .line 1518
    iget-object v6, v4, Lc/y;->a:[B

    iget v7, v4, Lc/y;->c:I

    shr-int/lit8 v8, v2, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1519
    iget-object v6, v4, Lc/y;->a:[B

    iget v7, v4, Lc/y;->c:I

    add-int/2addr v7, v1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 1521
    iget v2, v4, Lc/y;->c:I

    add-int/2addr v2, v5

    iput v2, v4, Lc/y;->c:I

    .line 47073
    iget-wide v2, p0, Lc/f;->b:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    .line 48073
    iput-wide v2, p0, Lc/f;->b:J

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    const v4, 0xd800

    const/4 v6, 0x3

    const/16 v7, 0x3f

    if-lt v2, v4, :cond_a

    const v4, 0xdfff

    if-le v2, v4, :cond_6

    goto :goto_8

    :cond_6
    add-int/lit8 v8, p2, 0x1

    if-ge v8, p3, :cond_7

    .line 1543
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    const v10, 0xdbff

    if-gt v2, v10, :cond_9

    const v10, 0xdc00

    if-gt v10, v9, :cond_9

    if-ge v4, v9, :cond_8

    goto :goto_7

    :cond_8
    const/high16 v4, 0x10000

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v8, v9, 0x3ff

    or-int/2addr v2, v8

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 1554
    invoke-virtual {p0, v4}, Lc/f;->h(I)Lc/y;

    move-result-object v8

    .line 1556
    iget-object v9, v8, Lc/y;->a:[B

    iget v10, v8, Lc/y;->c:I

    shr-int/lit8 v11, v2, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 1557
    iget-object v9, v8, Lc/y;->a:[B

    iget v10, v8, Lc/y;->c:I

    add-int/2addr v10, v1

    shr-int/lit8 v11, v2, 0xc

    and-int/2addr v11, v7

    or-int/2addr v11, v3

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 1558
    iget-object v9, v8, Lc/y;->a:[B

    iget v10, v8, Lc/y;->c:I

    add-int/2addr v10, v5

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v7

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, v9, v10

    .line 1559
    iget-object v5, v8, Lc/y;->a:[B

    iget v9, v8, Lc/y;->c:I

    add-int/2addr v9, v6

    and-int/2addr v2, v7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    .line 1561
    iget v2, v8, Lc/y;->c:I

    add-int/2addr v2, v4

    iput v2, v8, Lc/y;->c:I

    .line 50074
    iget-wide v2, p0, Lc/f;->b:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 50075
    iput-wide v2, p0, Lc/f;->b:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_3

    .line 1545
    :cond_9
    :goto_7
    invoke-virtual {p0, v7}, Lc/f;->b(I)Lc/f;

    move p2, v8

    goto/16 :goto_3

    .line 1528
    :cond_a
    :goto_8
    invoke-virtual {p0, v6}, Lc/f;->h(I)Lc/y;

    move-result-object v4

    .line 1530
    iget-object v8, v4, Lc/y;->a:[B

    iget v9, v4, Lc/y;->c:I

    shr-int/lit8 v10, v2, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1531
    iget-object v8, v4, Lc/y;->a:[B

    iget v9, v4, Lc/y;->c:I

    add-int/2addr v9, v1

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v7, v10

    or-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v8, v9

    .line 1532
    iget-object v7, v4, Lc/y;->a:[B

    iget v8, v4, Lc/y;->c:I

    add-int/2addr v8, v5

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v7, v8

    .line 1534
    iget v2, v4, Lc/y;->c:I

    add-int/2addr v2, v6

    iput v2, v4, Lc/y;->c:I

    .line 49073
    iget-wide v2, p0, Lc/f;->b:J

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    .line 50073
    iput-wide v2, p0, Lc/f;->b:J

    goto/16 :goto_5

    :cond_b
    return-object p0

    .line 1484
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "endIndex > string.length: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 1483
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "endIndex < beginIndex: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 1481
    :cond_e
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lc/f;
    .locals 3

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 394
    sget-object v0, Lkotlin/h/d;->a:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lc/f;->a(Ljava/lang/String;II)Lc/f;

    move-result-object p1

    return-object p1

    .line 395
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lc/f;->b([BII)Lc/f;

    move-result-object p1

    return-object p1

    .line 393
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "endIndex > string.length: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 392
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "endIndex < beginIndex: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 391
    :cond_6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "beginIndex < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-wide v0, p0, Lc/f;->b:J

    invoke-direct {p0, v0, v1, p1}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 106
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Lc/f;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32073
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    .line 1325
    invoke-virtual {p1, p0, p2, p3}, Lc/f;->write(Lc/f;J)V

    return-void

    .line 1322
    :cond_0
    invoke-virtual {p1, p0, v0, v1}, Lc/f;->write(Lc/f;J)V

    .line 1323
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1434
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1435
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lc/f;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 1436
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    return-void
.end method

.method public final a(JLc/i;)Z
    .locals 1

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50227
    invoke-virtual {p3}, Lc/i;->f()I

    move-result v0

    .line 480
    invoke-direct {p0, p1, p2, p3, v0}, Lc/f;->a(JLc/i;I)Z

    move-result p1

    return p1
.end method

.method public final b()Lc/f;
    .locals 0

    return-object p0
.end method

.method public final b(I)Lc/f;
    .locals 4

    const/4 v0, 0x1

    .line 1654
    invoke-virtual {p0, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    .line 1655
    iget-object v1, v0, Lc/y;->a:[B

    iget v2, v0, Lc/y;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lc/y;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 50084
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 50085
    iput-wide v0, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final b([B)Lc/f;
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1618
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lc/f;->b([BII)Lc/f;

    move-result-object p1

    return-object p1
.end method

.method public final b([BII)Lc/f;
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1620
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lc/c;->a(JJJ)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    const/4 v0, 0x1

    .line 1624
    invoke-virtual {p0, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    sub-int v1, p3, p2

    .line 1626
    iget v2, v0, Lc/y;->c:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1628
    iget-object v2, v0, Lc/y;->a:[B

    .line 1629
    iget v3, v0, Lc/y;->c:I

    add-int v4, p2, v1

    .line 1627
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/a/i;->a([B[BIII)[B

    .line 1635
    iget p2, v0, Lc/y;->c:I

    add-int/2addr p2, v1

    iput p2, v0, Lc/y;->c:I

    move p2, v4

    goto :goto_0

    .line 50082
    :cond_0
    iget-wide p1, p0, Lc/f;->b:J

    add-long/2addr p1, v7

    .line 50083
    iput-wide p1, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final synthetic b(Lc/i;)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->a(Lc/i;)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final synthetic b(Ljava/lang/String;)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final b(J)Z
    .locals 3

    .line 109
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(J)B
    .locals 6

    .line 11073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    .line 1084
    invoke-static/range {v0 .. v5}, Lc/c;->a(JJJ)V

    .line 1086
    iget-object v0, p0, Lc/f;->a:Lc/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1087
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lc/y;->a:[B

    iget v0, v0, Lc/y;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    const-wide/16 p1, -0x1

    sub-long/2addr v2, p1

    long-to-int p1, v2

    aget-byte p1, v1, p1

    return p1

    .line 12073
    :cond_0
    iget-wide v1, p0, Lc/f;->b:J

    sub-long v3, v1, p1

    cmp-long v5, v3, p1

    if-gez v5, :cond_2

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    .line 1092
    iget-object v0, v0, Lc/y;->g:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1093
    iget v3, v0, Lc/y;->c:I

    iget v4, v0, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 1087
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v3, v0, Lc/y;->a:[B

    iget v0, v0, Lc/y;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    return p1

    :cond_2
    const-wide/16 v1, 0x0

    .line 1100
    :goto_1
    iget v3, v0, Lc/y;->c:I

    iget v4, v0, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    cmp-long v5, v3, p1

    if-gtz v5, :cond_3

    .line 1102
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    move-wide v1, v3

    goto :goto_1

    .line 1087
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v3, v0, Lc/y;->a:[B

    iget v0, v0, Lc/y;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    return p1
.end method

.method public final c(Lc/i;)J
    .locals 2

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0, p1}, Lc/f;->d(Lc/i;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic c()Lc/g;
    .locals 1

    .line 69
    move-object v0, p0

    check-cast v0, Lc/g;

    return-object v0
.end method

.method public final synthetic c(I)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->b(I)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final synthetic c([B)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->b([B)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final synthetic c([BII)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lc/f;->b([BII)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 51785
    invoke-virtual {p0}, Lc/f;->v()Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(I)Lc/f;
    .locals 5

    const/4 v0, 0x2

    .line 1658
    invoke-virtual {p0, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    .line 1659
    iget-object v1, v0, Lc/y;->a:[B

    .line 1660
    iget v2, v0, Lc/y;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1661
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1662
    aput-byte p1, v1, v3

    .line 1663
    iput v2, v0, Lc/y;->c:I

    .line 50086
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    .line 50087
    iput-wide v0, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final bridge synthetic d()Lc/g;
    .locals 1

    .line 69
    move-object v0, p0

    check-cast v0, Lc/g;

    return-object v0
.end method

.method public final d(J)Lc/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 30073
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    const-wide/16 v0, 0x1000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    long-to-int v0, p1

    .line 1311
    invoke-direct {p0, v0}, Lc/f;->i(I)Lc/i;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lc/f;->h(J)V

    return-object v0

    .line 1313
    :cond_1
    new-instance v0, Lc/i;

    invoke-virtual {p0, p1, p2}, Lc/f;->g(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lc/i;-><init>([B)V

    return-object v0

    .line 1308
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1306
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final synthetic e(I)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->d(I)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final e(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 293
    sget-object v0, Lkotlin/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 5

    .line 102
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    .line 2044
    instance-of v2, v1, Lc/f;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 50231
    :cond_0
    iget-wide v4, v0, Lc/f;->b:J

    .line 2045
    check-cast v1, Lc/f;

    .line 50232
    iget-wide v6, v1, Lc/f;->b:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    .line 2048
    iget-object v2, v0, Lc/f;->a:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2049
    iget-object v1, v1, Lc/f;->a:Lc/y;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2050
    iget v4, v2, Lc/y;->b:I

    .line 2051
    iget v5, v1, Lc/y;->b:I

    move-wide v8, v6

    .line 50234
    :goto_0
    iget-wide v10, v0, Lc/f;->b:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_6

    .line 2056
    iget v10, v2, Lc/y;->c:I

    sub-int/2addr v10, v4

    iget v11, v1, Lc/y;->c:I

    sub-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-long v10, v10

    move-wide v12, v6

    :goto_1
    cmp-long v14, v12, v10

    if-gez v14, :cond_3

    .line 2059
    iget-object v14, v2, Lc/y;->a:[B

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v14, v4

    iget-object v14, v1, Lc/y;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v14, v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    move v4, v15

    move/from16 v5, v16

    goto :goto_1

    .line 2062
    :cond_3
    iget v12, v2, Lc/y;->c:I

    if-ne v4, v12, :cond_4

    .line 2063
    iget-object v2, v2, Lc/y;->f:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2064
    iget v4, v2, Lc/y;->b:I

    .line 2067
    :cond_4
    iget v12, v1, Lc/y;->c:I

    if-ne v5, v12, :cond_5

    .line 2068
    iget-object v1, v1, Lc/y;->f:Lc/y;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2069
    iget v5, v1, Lc/y;->b:I

    :cond_5
    add-long/2addr v8, v10

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public final f(I)Lc/f;
    .locals 5

    const/4 v0, 0x4

    .line 1666
    invoke-virtual {p0, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v0

    .line 1667
    iget-object v1, v0, Lc/y;->a:[B

    .line 1668
    iget v2, v0, Lc/y;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1669
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1670
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1671
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1672
    aput-byte p1, v1, v3

    .line 1673
    iput v2, v0, Lc/y;->c:I

    .line 50088
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 50089
    iput-wide v0, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final f()Lc/h;
    .locals 2

    .line 112
    new-instance v0, Lc/u;

    move-object v1, p0

    check-cast v1, Lc/h;

    invoke-direct {v0, v1}, Lc/u;-><init>(Lc/h;)V

    check-cast v0, Lc/ad;

    .line 4001
    invoke-static {v0}, Lc/r;->a(Lc/ad;)Lc/h;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, p1, v0

    :goto_1
    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    move-object v4, p0

    move-wide v8, v2

    .line 1341
    invoke-virtual/range {v4 .. v9}, Lc/f;->a(BJJ)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 1342
    invoke-static {p0, v4, v5}, Lc/a/a;->a(Lc/f;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35073
    :cond_2
    iget-wide v4, p0, Lc/f;->b:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    sub-long v0, v2, v0

    .line 1344
    invoke-virtual {p0, v0, v1}, Lc/f;->c(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 1345
    invoke-virtual {p0, v2, v3}, Lc/f;->c(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 1346
    invoke-static {p0, v2, v3}, Lc/a/a;->a(Lc/f;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1348
    :cond_3
    new-instance v6, Lc/f;

    invoke-direct {v6}, Lc/f;-><init>()V

    const-wide/16 v2, 0x0

    .line 36073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v4, 0x20

    .line 1350
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    .line 1349
    invoke-virtual/range {v0 .. v5}, Lc/f;->a(Lc/f;JJ)Lc/f;

    .line 1351
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: limit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37073
    iget-wide v2, p0, Lc/f;->b:J

    .line 1351
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-virtual {v6}, Lc/f;->q()Lc/i;

    move-result-object p1

    invoke-virtual {p1}, Lc/i;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1351
    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1338
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final synthetic g(I)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lc/f;->f(I)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final g()Ljava/io/InputStream;
    .locals 1

    .line 116
    new-instance v0, Lc/f$b;

    invoke-direct {v0, p0}, Lc/f$b;-><init>(Lc/f;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final g(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 39073
    iget-wide v0, p0, Lc/f;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    long-to-int p2, p1

    .line 1429
    new-array p1, p2, [B

    .line 1430
    invoke-virtual {p0, p1}, Lc/f;->a([B)V

    return-object p1

    .line 1427
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1425
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final h()J
    .locals 5

    .line 7073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 1060
    :cond_0
    iget-object v2, p0, Lc/f;->a:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v2, v2, Lc/y;->g:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1061
    iget v3, v2, Lc/y;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_1

    iget-boolean v3, v2, Lc/y;->e:Z

    if-eqz v3, :cond_1

    .line 1062
    iget v3, v2, Lc/y;->c:I

    iget v2, v2, Lc/y;->b:I

    sub-int/2addr v3, v2

    int-to-long v2, v3

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public final h(I)Lc/y;
    .locals 3

    const/16 v0, 0x2000

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 1795
    iget-object v1, p0, Lc/f;->a:Lc/y;

    if-nez v1, :cond_1

    .line 1796
    invoke-static {}, Lc/z;->a()Lc/y;

    move-result-object p1

    .line 1797
    iput-object p1, p0, Lc/f;->a:Lc/y;

    .line 1798
    iput-object p1, p1, Lc/y;->g:Lc/y;

    .line 1799
    iput-object p1, p1, Lc/y;->f:Lc/y;

    goto :goto_2

    .line 1803
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v1, v1, Lc/y;->g:Lc/y;

    .line 1804
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v2, v1, Lc/y;->c:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_3

    iget-boolean p1, v1, Lc/y;->e:Z

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_2

    .line 1805
    :cond_3
    :goto_1
    invoke-static {}, Lc/z;->a()Lc/y;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/y;->a(Lc/y;)Lc/y;

    move-result-object p1

    :goto_2
    return-object p1

    .line 1793
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unexpected capacity"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final h(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1460
    iget-object v0, p0, Lc/f;->a:Lc/y;

    if-eqz v0, :cond_1

    .line 1462
    iget v1, v0, Lc/y;->c:I

    iget v2, v0, Lc/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1463
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 43073
    iget-wide v3, p0, Lc/f;->b:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 44073
    iput-wide v3, p0, Lc/f;->b:J

    sub-long/2addr p1, v5

    .line 1466
    iget v1, v0, Lc/y;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lc/y;->b:I

    .line 1468
    iget v1, v0, Lc/y;->b:I

    iget v2, v0, Lc/y;->c:I

    if-ne v1, v2, :cond_0

    .line 1469
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v1

    iput-object v1, p0, Lc/f;->a:Lc/y;

    .line 1470
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    .line 1460
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 2075
    iget-object v0, p0, Lc/f;->a:Lc/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 2078
    :cond_1
    iget v2, v0, Lc/y;->b:I

    .line 2079
    iget v3, v0, Lc/y;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 2081
    iget-object v4, v0, Lc/y;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v0, v0, Lc/y;->f:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2085
    iget-object v2, p0, Lc/f;->a:Lc/y;

    if-ne v0, v2, :cond_1

    return v1
.end method

.method public final i()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 8073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1068
    iget-object v0, p0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1069
    iget v1, v0, Lc/y;->b:I

    .line 1070
    iget v2, v0, Lc/y;->c:I

    .line 1072
    iget-object v3, v0, Lc/y;->a:[B

    add-int/lit8 v4, v1, 0x1

    .line 1073
    aget-byte v1, v3, v1

    .line 9073
    iget-wide v5, p0, Lc/f;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 10073
    iput-wide v5, p0, Lc/f;->b:J

    if-ne v4, v2, :cond_0

    .line 1077
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v2

    iput-object v2, p0, Lc/f;->a:Lc/y;

    .line 1078
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    .line 1080
    :cond_0
    iput v4, v0, Lc/y;->b:I

    :goto_0
    return v1

    .line 1066
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final i(J)Lc/f;
    .locals 9

    const/16 v0, 0x8

    .line 1676
    invoke-virtual {p0, v0}, Lc/f;->h(I)Lc/y;

    move-result-object v1

    .line 1677
    iget-object v2, v1, Lc/y;->a:[B

    .line 1678
    iget v3, v1, Lc/y;->c:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1679
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1680
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1681
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1682
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1683
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v6, v5

    int-to-byte v5, v6

    .line 1684
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 1685
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 1686
    aput-byte p1, v2, v4

    .line 1687
    iput v0, v1, Lc/y;->c:I

    .line 50090
    iget-wide p1, p0, Lc/f;->b:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    .line 50091
    iput-wide p1, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(J)Lc/f;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1693
    invoke-virtual {p0, p1}, Lc/f;->b(I)Lc/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "-9223372036854775808"

    .line 1700
    invoke-virtual {p0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x1

    :cond_2
    const-wide/32 v5, 0x5f5e100

    const-wide/16 v7, 0xa

    cmp-long v2, p1, v5

    if-gez v2, :cond_a

    const-wide/16 v5, 0x2710

    cmp-long v2, p1, v5

    if-gez v2, :cond_6

    const-wide/16 v5, 0x64

    cmp-long v2, p1, v5

    if-gez v2, :cond_4

    cmp-long v2, p1, v7

    if-gez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v4, 0x3e8

    cmp-long v2, p1, v4

    if-gez v2, :cond_5

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v4, 0xf4240

    cmp-long v2, p1, v4

    if-gez v2, :cond_8

    const-wide/32 v4, 0x186a0

    cmp-long v2, p1, v4

    if-gez v2, :cond_7

    const/4 v4, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v4, 0x989680

    cmp-long v2, p1, v4

    if-gez v2, :cond_9

    const/4 v4, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0xe8d4a51000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_e

    const-wide v4, 0x2540be400L

    cmp-long v2, p1, v4

    if-gez v2, :cond_c

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, p1, v4

    if-gez v2, :cond_b

    const/16 v4, 0x9

    goto :goto_0

    :cond_b
    const/16 v4, 0xa

    goto :goto_0

    :cond_c
    const-wide v4, 0x174876e800L

    cmp-long v2, p1, v4

    if-gez v2, :cond_d

    const/16 v4, 0xb

    goto :goto_0

    :cond_d
    const/16 v4, 0xc

    goto :goto_0

    :cond_e
    const-wide v4, 0x38d7ea4c68000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_11

    const-wide v4, 0x9184e72a000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_f

    const/16 v4, 0xd

    goto :goto_0

    :cond_f
    const-wide v4, 0x5af3107a4000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_10

    const/16 v4, 0xe

    goto :goto_0

    :cond_10
    const/16 v4, 0xf

    goto :goto_0

    :cond_11
    const-wide v4, 0x16345785d8a0000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_13

    const-wide v4, 0x2386f26fc10000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_12

    const/16 v4, 0x10

    goto :goto_0

    :cond_12
    const/16 v4, 0x11

    goto :goto_0

    :cond_13
    const-wide v4, 0xde0b6b3a7640000L

    cmp-long v2, p1, v4

    if-gez v2, :cond_14

    const/16 v4, 0x12

    goto :goto_0

    :cond_14
    const/16 v4, 0x13

    :goto_0
    if-eqz v3, :cond_15

    add-int/lit8 v4, v4, 0x1

    .line 1738
    :cond_15
    invoke-virtual {p0, v4}, Lc/f;->h(I)Lc/y;

    move-result-object v2

    .line 1739
    iget-object v5, v2, Lc/y;->a:[B

    .line 1740
    iget v6, v2, Lc/y;->c:I

    add-int/2addr v6, v4

    :goto_1
    cmp-long v9, p1, v0

    if-eqz v9, :cond_16

    .line 1742
    rem-long v9, p1, v7

    long-to-int v10, v9

    add-int/lit8 v6, v6, -0x1

    .line 1743
    invoke-static {}, Lc/a/a;->a()[B

    move-result-object v9

    aget-byte v9, v9, v10

    aput-byte v9, v5, v6

    .line 1744
    div-long/2addr p1, v7

    goto :goto_1

    :cond_16
    if-eqz v3, :cond_17

    add-int/lit8 v6, v6, -0x1

    const/16 p1, 0x2d

    .line 1747
    aput-byte p1, v5, v6

    .line 1750
    :cond_17
    iget p1, v2, Lc/y;->c:I

    add-int/2addr p1, v4

    iput p1, v2, Lc/y;->c:I

    .line 50092
    iget-wide p1, p0, Lc/f;->b:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 50093
    iput-wide p1, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final j()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 14073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1108
    iget-object v0, p0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1109
    iget v1, v0, Lc/y;->b:I

    .line 1110
    iget v4, v0, Lc/y;->c:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 1114
    invoke-virtual {p0}, Lc/f;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lc/f;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 1119
    :cond_0
    iget-object v5, v0, Lc/y;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 1120
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 15073
    iget-wide v5, p0, Lc/f;->b:J

    sub-long/2addr v5, v2

    .line 16073
    iput-wide v5, p0, Lc/f;->b:J

    if-ne v7, v4, :cond_1

    .line 1124
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v2

    iput-object v2, p0, Lc/f;->a:Lc/y;

    .line 1125
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    .line 1127
    :cond_1
    iput v7, v0, Lc/y;->b:I

    :goto_0
    int-to-short v0, v1

    return v0

    .line 1106
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final k()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 17073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1133
    iget-object v0, p0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1134
    iget v1, v0, Lc/y;->b:I

    .line 1135
    iget v4, v0, Lc/y;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 1139
    invoke-virtual {p0}, Lc/f;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 1141
    invoke-virtual {p0}, Lc/f;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1142
    invoke-virtual {p0}, Lc/f;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1143
    invoke-virtual {p0}, Lc/f;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 1146
    :cond_0
    iget-object v5, v0, Lc/y;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 1147
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    .line 1148
    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    .line 1149
    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    .line 1150
    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 18073
    iget-wide v5, p0, Lc/f;->b:J

    sub-long/2addr v5, v2

    .line 19073
    iput-wide v5, p0, Lc/f;->b:J

    if-ne v7, v4, :cond_1

    .line 1154
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v2

    iput-object v2, p0, Lc/f;->a:Lc/y;

    .line 1155
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    .line 1157
    :cond_1
    iput v7, v0, Lc/y;->b:I

    :goto_0
    return v1

    .line 1131
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final synthetic k(J)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lc/f;->j(J)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final l()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 20073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 1163
    iget-object v0, p0, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1164
    iget v1, v0, Lc/y;->b:I

    .line 1165
    iget v4, v0, Lc/y;->c:I

    sub-int v5, v4, v1

    int-to-long v5, v5

    const/16 v7, 0x20

    cmp-long v8, v5, v2

    if-gez v8, :cond_0

    .line 1169
    invoke-virtual {p0}, Lc/f;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v7

    .line 1171
    invoke-virtual {p0}, Lc/f;->k()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1174
    :cond_0
    iget-object v5, v0, Lc/y;->a:[B

    add-int/lit8 v6, v1, 0x1

    .line 1175
    aget-byte v1, v5, v1

    int-to-long v8, v1

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    add-int/lit8 v1, v6, 0x1

    .line 1177
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    const/16 v6, 0x30

    shl-long/2addr v12, v6

    or-long/2addr v8, v12

    add-int/lit8 v6, v1, 0x1

    .line 1178
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x28

    shl-long/2addr v12, v1

    or-long/2addr v8, v12

    add-int/lit8 v1, v6, 0x1

    .line 1179
    aget-byte v6, v5, v6

    int-to-long v12, v6

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 1180
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x18

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 1181
    aget-byte v8, v5, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    const/16 v12, 0x10

    shl-long/2addr v8, v12

    or-long/2addr v6, v8

    add-int/lit8 v8, v1, 0x1

    .line 1182
    aget-byte v1, v5, v1

    int-to-long v12, v1

    and-long/2addr v12, v10

    const/16 v1, 0x8

    shl-long/2addr v12, v1

    or-long/2addr v6, v12

    add-int/lit8 v1, v8, 0x1

    .line 1183
    aget-byte v5, v5, v8

    int-to-long v8, v5

    and-long/2addr v8, v10

    or-long v5, v6, v8

    .line 21073
    iget-wide v7, p0, Lc/f;->b:J

    sub-long/2addr v7, v2

    .line 22073
    iput-wide v7, p0, Lc/f;->b:J

    if-ne v1, v4, :cond_1

    .line 1187
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object v1

    iput-object v1, p0, Lc/f;->a:Lc/y;

    .line 1188
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    goto :goto_0

    .line 1190
    :cond_1
    iput v1, v0, Lc/y;->b:I

    :goto_0
    return-wide v5

    .line 1161
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final l(J)Lc/f;
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1756
    invoke-virtual {p0, p1}, Lc/f;->b(I)Lc/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    ushr-long v1, p1, v0

    or-long/2addr v1, p1

    const/4 v3, 0x2

    ushr-long v4, v1, v3

    or-long/2addr v1, v4

    const/4 v4, 0x4

    ushr-long v5, v1, v4

    or-long/2addr v1, v5

    const/16 v5, 0x8

    ushr-long v6, v1, v5

    or-long/2addr v1, v6

    const/16 v6, 0x10

    ushr-long v7, v1, v6

    or-long/2addr v1, v7

    const/16 v7, 0x20

    ushr-long v8, v1, v7

    or-long/2addr v1, v8

    ushr-long v8, v1, v0

    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v8, v10

    sub-long/2addr v1, v8

    ushr-long v8, v1, v3

    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v8, v10

    and-long/2addr v1, v10

    add-long/2addr v8, v1

    ushr-long v1, v8, v4

    add-long/2addr v1, v8

    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v1, v8

    ushr-long v8, v1, v5

    add-long/2addr v1, v8

    ushr-long v5, v1, v6

    add-long/2addr v1, v5

    const-wide/16 v5, 0x3f

    and-long v8, v1, v5

    ushr-long/2addr v1, v7

    and-long/2addr v1, v5

    add-long/2addr v8, v1

    const-wide/16 v1, 0x3

    add-long/2addr v8, v1

    const-wide/16 v1, 0x4

    .line 1779
    div-long/2addr v8, v1

    long-to-int v1, v8

    .line 1781
    invoke-virtual {p0, v1}, Lc/f;->h(I)Lc/y;

    move-result-object v2

    .line 1782
    iget-object v3, v2, Lc/y;->a:[B

    .line 1783
    iget v5, v2, Lc/y;->c:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v0

    .line 1784
    iget v0, v2, Lc/y;->c:I

    :goto_0
    if-lt v5, v0, :cond_1

    .line 1786
    invoke-static {}, Lc/a/a;->a()[B

    move-result-object v6

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v8, v7

    aget-byte v6, v6, v8

    aput-byte v6, v3, v5

    ushr-long/2addr p1, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1790
    :cond_1
    iget p1, v2, Lc/y;->c:I

    add-int/2addr p1, v1

    iput p1, v2, Lc/y;->c:I

    .line 50094
    iget-wide p1, p0, Lc/f;->b:J

    int-to-long v0, v1

    add-long/2addr p1, v0

    .line 50095
    iput-wide p1, p0, Lc/f;->b:J

    return-object p0
.end method

.method public final synthetic m(J)Lc/g;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2}, Lc/f;->l(J)Lc/f;

    move-result-object p1

    check-cast p1, Lc/g;

    return-object p1
.end method

.method public final m()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lc/f;->j()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final n()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Lc/f;->k()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const v2, 0xff00

    and-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final o()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 23073
    iget-wide v1, v0, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const-wide/16 v1, -0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1205
    :cond_0
    iget-object v8, v0, Lc/f;->a:Lc/y;

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1207
    iget-object v9, v8, Lc/y;->a:[B

    .line 1208
    iget v10, v8, Lc/y;->b:I

    .line 1209
    iget v11, v8, Lc/y;->c:I

    :goto_0
    const/4 v12, 0x1

    if-ge v10, v11, :cond_7

    .line 1212
    aget-byte v13, v9, v10

    const/16 v14, 0x30

    if-lt v13, v14, :cond_4

    const/16 v14, 0x39

    if-gt v13, v14, :cond_4

    rsub-int/lit8 v12, v13, 0x30

    const-wide v14, -0xcccccccccccccccL

    cmp-long v16, v3, v14

    if-ltz v16, :cond_2

    if-nez v16, :cond_1

    int-to-long v14, v12

    cmp-long v16, v14, v1

    if-gez v16, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0xa

    mul-long v3, v3, v13

    int-to-long v12, v12

    add-long/2addr v3, v12

    goto :goto_2

    .line 1218
    :cond_2
    :goto_1
    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    invoke-virtual {v1, v3, v4}, Lc/f;->j(J)Lc/f;

    move-result-object v1

    invoke-virtual {v1, v13}, Lc/f;->b(I)Lc/f;

    move-result-object v1

    if-nez v6, :cond_3

    .line 1219
    invoke-virtual {v1}, Lc/f;->i()B

    .line 1220
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number too large: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_4
    const/16 v14, 0x2d

    if-ne v13, v14, :cond_5

    if-nez v5, :cond_5

    const-wide/16 v13, 0x1

    sub-long/2addr v1, v13

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    .line 1229
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lc/c;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1229
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_7
    :goto_3
    if-ne v10, v11, :cond_8

    .line 1241
    invoke-virtual {v8}, Lc/y;->c()Lc/y;

    move-result-object v9

    iput-object v9, v0, Lc/f;->a:Lc/y;

    .line 1242
    invoke-static {v8}, Lc/z;->a(Lc/y;)V

    goto :goto_4

    .line 1244
    :cond_8
    iput v10, v8, Lc/y;->b:I

    :goto_4
    if-nez v7, :cond_9

    .line 1246
    iget-object v8, v0, Lc/f;->a:Lc/y;

    if-nez v8, :cond_0

    .line 24073
    :cond_9
    iget-wide v1, v0, Lc/f;->b:J

    int-to-long v7, v5

    sub-long/2addr v1, v7

    .line 25073
    iput-wide v1, v0, Lc/f;->b:J

    if-eqz v6, :cond_a

    return-wide v3

    :cond_a
    neg-long v1, v3

    return-wide v1

    .line 1194
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final p()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 26073
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    move-wide v4, v2

    const/4 v1, 0x0

    .line 1257
    :cond_0
    iget-object v6, p0, Lc/f;->a:Lc/y;

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1259
    iget-object v7, v6, Lc/y;->a:[B

    .line 1260
    iget v8, v6, Lc/y;->b:I

    .line 1261
    iget v9, v6, Lc/y;->c:I

    :goto_0
    if-ge v8, v9, :cond_6

    .line 1266
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_1

    const/16 v11, 0x39

    if-gt v10, v11, :cond_1

    add-int/lit8 v11, v10, -0x30

    goto :goto_2

    :cond_1
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2

    add-int/lit8 v11, v10, -0x61

    :goto_1
    add-int/lit8 v11, v11, 0xa

    goto :goto_2

    :cond_2
    const/16 v11, 0x41

    if-lt v10, v11, :cond_4

    const/16 v11, 0x46

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, -0x41

    goto :goto_1

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v14, v12, v2

    if-nez v14, :cond_3

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1285
    :cond_3
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    invoke-virtual {v0, v4, v5}, Lc/f;->l(J)Lc/f;

    move-result-object v0

    invoke-virtual {v0, v10}, Lc/f;->b(I)Lc/f;

    move-result-object v0

    .line 1286
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/f;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    .line 1275
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 1276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lc/c;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_6
    :goto_3
    if-ne v8, v9, :cond_7

    .line 1296
    invoke-virtual {v6}, Lc/y;->c()Lc/y;

    move-result-object v7

    iput-object v7, p0, Lc/f;->a:Lc/y;

    .line 1297
    invoke-static {v6}, Lc/z;->a(Lc/y;)V

    goto :goto_4

    .line 1299
    :cond_7
    iput v8, v6, Lc/y;->b:I

    :goto_4
    if-nez v1, :cond_8

    .line 1301
    iget-object v6, p0, Lc/f;->a:Lc/y;

    if-nez v6, :cond_0

    .line 27073
    :cond_8
    iget-wide v1, p0, Lc/f;->b:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    .line 28073
    iput-wide v1, p0, Lc/f;->b:J

    return-wide v4

    .line 1250
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final q()Lc/i;
    .locals 2

    .line 29073
    iget-wide v0, p0, Lc/f;->b:J

    .line 1305
    invoke-virtual {p0, v0, v1}, Lc/f;->d(J)Lc/i;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .line 290
    iget-wide v0, p0, Lc/f;->b:J

    sget-object v2, Lkotlin/h/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lc/f;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lc/f;->a:Lc/y;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lc/y;->c:I

    iget v3, v0, Lc/y;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 351
    iget-object v2, v0, Lc/y;->a:[B

    iget v3, v0, Lc/y;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 353
    iget p1, v0, Lc/y;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lc/y;->b:I

    .line 354
    iget-wide v2, p0, Lc/f;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lc/f;->b:J

    .line 356
    iget p1, v0, Lc/y;->b:I

    iget v2, v0, Lc/y;->c:I

    if-ne p1, v2, :cond_1

    .line 357
    invoke-virtual {v0}, Lc/y;->c()Lc/y;

    move-result-object p1

    iput-object p1, p0, Lc/f;->a:Lc/y;

    .line 358
    invoke-static {v0}, Lc/z;->a(Lc/y;)V

    :cond_1
    return v1
.end method

.method public final read(Lc/f;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 50207
    iget-wide v2, p0, Lc/f;->b:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    move-wide p2, v2

    .line 1854
    :cond_2
    invoke-virtual {p1, p0, p2, p3}, Lc/f;->write(Lc/f;J)V

    return-wide p2

    .line 1850
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "byteCount < 0: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final s()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    .line 325
    invoke-virtual {p0, v0, v1}, Lc/f;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()[B
    .locals 2

    .line 38073
    iget-wide v0, p0, Lc/f;->b:J

    .line 1424
    invoke-virtual {p0, v0, v1}, Lc/f;->g(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final timeout()Lc/ae;
    .locals 1

    .line 495
    sget-object v0, Lc/ae;->NONE:Lc/ae;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 51779
    iget-wide v0, p0, Lc/f;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    long-to-int v1, v0

    .line 51778
    invoke-direct {p0, v1}, Lc/f;->i(I)Lc/i;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lc/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51776
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size > Int.MAX_VALUE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51780
    iget-wide v1, p0, Lc/f;->b:J

    .line 51776
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final u()V
    .locals 2

    .line 42073
    iget-wide v0, p0, Lc/f;->b:J

    .line 1457
    invoke-virtual {p0, v0, v1}, Lc/f;->h(J)V

    return-void
.end method

.method public final v()Lc/f;
    .locals 6

    .line 2087
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    .line 51782
    iget-wide v1, p0, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-object v0

    .line 2090
    :cond_0
    iget-object v1, p0, Lc/f;->a:Lc/y;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 2091
    invoke-virtual {v1}, Lc/y;->a()Lc/y;

    move-result-object v2

    .line 2093
    iput-object v2, v0, Lc/f;->a:Lc/y;

    .line 2094
    iput-object v2, v2, Lc/y;->g:Lc/y;

    .line 2095
    iget-object v3, v2, Lc/y;->g:Lc/y;

    iput-object v3, v2, Lc/y;->f:Lc/y;

    .line 2097
    iget-object v3, v1, Lc/y;->f:Lc/y;

    :goto_0
    if-eq v3, v1, :cond_1

    .line 2099
    iget-object v4, v2, Lc/y;->g:Lc/y;

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lc/y;->a()Lc/y;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc/y;->a(Lc/y;)Lc/y;

    .line 2100
    iget-object v3, v3, Lc/y;->f:Lc/y;

    goto :goto_0

    .line 51783
    :cond_1
    iget-wide v1, p0, Lc/f;->b:J

    .line 51784
    iput-wide v1, v0, Lc/f;->b:J

    return-object v0
.end method

.method public final w()Lc/f;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lc/f;->v()Lc/f;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 412
    invoke-virtual {p0, v2}, Lc/f;->h(I)Lc/y;

    move-result-object v2

    .line 414
    iget v3, v2, Lc/y;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 415
    iget-object v4, v2, Lc/y;->a:[B

    iget v5, v2, Lc/y;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 418
    iget v4, v2, Lc/y;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lc/y;->c:I

    goto :goto_0

    .line 421
    :cond_0
    iget-wide v1, p0, Lc/f;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lc/f;->b:J

    return v0
.end method

.method public final write(Lc/f;J)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_e

    .line 50096
    iget-wide v3, p1, Lc/f;->b:J

    const-wide/16 v5, 0x0

    move-wide v7, p2

    .line 1811
    invoke-static/range {v3 .. v8}, Lc/c;->a(JJJ)V

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_d

    .line 1815
    iget-object v2, p1, Lc/f;->a:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v2, v2, Lc/y;->c:I

    iget-object v3, p1, Lc/f;->a:Lc/y;

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v3, v3, Lc/y;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-gez v4, :cond_7

    .line 1816
    iget-object v2, p0, Lc/f;->a:Lc/y;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v2, v2, Lc/y;->g:Lc/y;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 1818
    iget-boolean v3, v2, Lc/y;->e:Z

    if-eqz v3, :cond_3

    iget v3, v2, Lc/y;->c:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    iget-boolean v5, v2, Lc/y;->d:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    iget v5, v2, Lc/y;->b:I

    :goto_3
    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2000

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 1820
    iget-object v0, p1, Lc/f;->a:Lc/y;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    long-to-int v1, p2

    invoke-virtual {v0, v2, v1}, Lc/y;->a(Lc/y;I)V

    .line 50097
    iget-wide v0, p1, Lc/f;->b:J

    sub-long/2addr v0, p2

    .line 50098
    iput-wide v0, p1, Lc/f;->b:J

    .line 50099
    iget-wide v0, p0, Lc/f;->b:J

    add-long/2addr v0, p2

    .line 50100
    iput-wide v0, p0, Lc/f;->b:J

    return-void

    .line 1827
    :cond_3
    iget-object v2, p1, Lc/f;->a:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    long-to-int v3, p2

    if-lez v3, :cond_4

    .line 50101
    iget v4, v2, Lc/y;->c:I

    iget v5, v2, Lc/y;->b:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    const/16 v4, 0x400

    if-lt v3, v4, :cond_5

    .line 50110
    invoke-virtual {v2}, Lc/y;->a()Lc/y;

    move-result-object v4

    goto :goto_5

    .line 50112
    :cond_5
    invoke-static {}, Lc/z;->a()Lc/y;

    move-result-object v4

    .line 50113
    iget-object v5, v2, Lc/y;->a:[B

    iget-object v6, v4, Lc/y;->a:[B

    iget v7, v2, Lc/y;->b:I

    iget v8, v2, Lc/y;->b:I

    add-int/2addr v8, v3

    invoke-static {v5, v6, v7, v8}, Lkotlin/a/i;->a([B[BII)[B

    .line 50116
    :goto_5
    iget v5, v4, Lc/y;->b:I

    add-int/2addr v5, v3

    iput v5, v4, Lc/y;->c:I

    .line 50117
    iget v5, v2, Lc/y;->b:I

    add-int/2addr v5, v3

    iput v5, v2, Lc/y;->b:I

    .line 50118
    iget-object v2, v2, Lc/y;->g:Lc/y;

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lc/y;->a(Lc/y;)Lc/y;

    .line 1827
    iput-object v4, p1, Lc/f;->a:Lc/y;

    goto :goto_6

    .line 50101
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount out of range"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1832
    :cond_7
    :goto_6
    iget-object v2, p1, Lc/f;->a:Lc/y;

    .line 1833
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v3, v2, Lc/y;->c:I

    iget v4, v2, Lc/y;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 1834
    invoke-virtual {v2}, Lc/y;->c()Lc/y;

    move-result-object v5

    iput-object v5, p1, Lc/f;->a:Lc/y;

    .line 1835
    iget-object v5, p0, Lc/f;->a:Lc/y;

    if-nez v5, :cond_8

    .line 1836
    iput-object v2, p0, Lc/f;->a:Lc/y;

    .line 1837
    iput-object v2, v2, Lc/y;->g:Lc/y;

    .line 1838
    iget-object v5, v2, Lc/y;->g:Lc/y;

    iput-object v5, v2, Lc/y;->f:Lc/y;

    goto :goto_9

    .line 1840
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-object v5, v5, Lc/y;->g:Lc/y;

    .line 1841
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lc/y;->a(Lc/y;)Lc/y;

    move-result-object v2

    .line 50165
    iget-object v5, v2, Lc/y;->g:Lc/y;

    move-object v6, v2

    check-cast v6, Lc/y;

    if-eq v5, v6, :cond_9

    const/4 v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_c

    .line 50166
    iget-object v5, v2, Lc/y;->g:Lc/y;

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-boolean v5, v5, Lc/y;->e:Z

    if-eqz v5, :cond_b

    .line 50167
    iget v5, v2, Lc/y;->c:I

    iget v6, v2, Lc/y;->b:I

    sub-int/2addr v5, v6

    .line 50168
    iget-object v6, v2, Lc/y;->g:Lc/y;

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v6, v6, Lc/y;->c:I

    rsub-int v6, v6, 0x2000

    iget-object v7, v2, Lc/y;->g:Lc/y;

    invoke-static {v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget-boolean v7, v7, Lc/y;->d:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    goto :goto_8

    :cond_a
    iget-object v7, v2, Lc/y;->g:Lc/y;

    invoke-static {v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iget v7, v7, Lc/y;->b:I

    :goto_8
    add-int/2addr v6, v7

    if-gt v5, v6, :cond_b

    .line 50170
    iget-object v6, v2, Lc/y;->g:Lc/y;

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v5}, Lc/y;->a(Lc/y;I)V

    .line 50171
    invoke-virtual {v2}, Lc/y;->c()Lc/y;

    .line 50172
    invoke-static {v2}, Lc/z;->a(Lc/y;)V

    .line 50203
    :cond_b
    :goto_9
    iget-wide v5, p1, Lc/f;->b:J

    sub-long/2addr v5, v3

    .line 50204
    iput-wide v5, p1, Lc/f;->b:J

    .line 50205
    iget-wide v5, p0, Lc/f;->b:J

    add-long/2addr v5, v3

    .line 50206
    iput-wide v5, p0, Lc/f;->b:J

    sub-long/2addr p2, v3

    goto/16 :goto_1

    .line 50165
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cannot compact"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_d
    return-void

    .line 1809
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == this"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
