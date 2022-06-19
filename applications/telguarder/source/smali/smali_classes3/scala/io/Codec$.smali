.class public final Lscala/io/Codec$;
.super Ljava/lang/Object;
.source "Codec.scala"

# interfaces
.implements Lscala/io/LowPriorityCodecImplicits;


# static fields
.field public static final MODULE$:Lscala/io/Codec$;


# instance fields
.field private final ISO8859:Lscala/io/Codec;

.field private final UTF8:Lscala/io/Codec;

.field private volatile bitmap$0:Z

.field private final fallbackSystemCodec:Lscala/io/Codec;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/Codec$;

    invoke-direct {v0}, Lscala/io/Codec$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-static {p0}, Lscala/io/LowPriorityCodecImplicits$class;->$init$(Lscala/io/Codec$;)V

    .line 80
    new-instance v0, Lscala/io/Codec;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lscala/io/Codec$;->ISO8859:Lscala/io/Codec;

    .line 81
    new-instance v0, Lscala/io/Codec;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lscala/io/Codec$;->UTF8:Lscala/io/Codec;

    return-void
.end method

.method private fallbackSystemCodec$lzycompute()Lscala/io/Codec;
    .locals 1

    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lscala/io/LowPriorityCodecImplicits$class;->fallbackSystemCodec(Lscala/io/Codec$;)Lscala/io/Codec;

    move-result-object v0

    iput-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final ISO8859()Lscala/io/Codec;
    .locals 1

    .line 80
    iget-object v0, p0, Lscala/io/Codec$;->ISO8859:Lscala/io/Codec;

    return-object v0
.end method

.method public final UTF8()Lscala/io/Codec;
    .locals 1

    .line 81
    iget-object v0, p0, Lscala/io/Codec$;->UTF8:Lscala/io/Codec;

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Lscala/io/Codec;
    .locals 1

    .line 92
    new-instance v0, Lscala/io/Codec;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public apply(Ljava/nio/charset/Charset;)Lscala/io/Codec;
    .locals 1

    .line 93
    new-instance v0, Lscala/io/Codec;

    invoke-direct {v0, p1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public apply(Ljava/nio/charset/CharsetDecoder;)Lscala/io/Codec;
    .locals 1

    .line 95
    new-instance v0, Lscala/io/Codec$$anon$1;

    invoke-direct {v0, p1, p1}, Lscala/io/Codec$$anon$1;-><init>(Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public charset2codec(Ljava/nio/charset/Charset;)Lscala/io/Codec;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lscala/io/Codec$;->apply(Ljava/nio/charset/Charset;)Lscala/io/Codec;

    move-result-object p1

    return-object p1
.end method

.method public decoder2codec(Ljava/nio/charset/CharsetDecoder;)Lscala/io/Codec;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lscala/io/Codec$;->apply(Ljava/nio/charset/CharsetDecoder;)Lscala/io/Codec;

    move-result-object p1

    return-object p1
.end method

.method public default()Lscala/io/Codec;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lscala/io/Codec$;->defaultCharsetCodec()Lscala/io/Codec;

    move-result-object v0

    return-object v0
.end method

.method public defaultCharsetCodec()Lscala/io/Codec;
    .locals 1

    .line 88
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/io/Codec$;->apply(Ljava/nio/charset/Charset;)Lscala/io/Codec;

    move-result-object v0

    return-object v0
.end method

.method public fallbackSystemCodec()Lscala/io/Codec;
    .locals 1

    .line 79
    iget-boolean v0, p0, Lscala/io/Codec$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/io/Codec$;->fallbackSystemCodec:Lscala/io/Codec;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/io/Codec$;->fallbackSystemCodec$lzycompute()Lscala/io/Codec;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public fileEncodingCodec()Lscala/io/Codec;
    .locals 1

    .line 89
    sget-object v0, Lscala/util/Properties$;->MODULE$:Lscala/util/Properties$;

    invoke-virtual {v0}, Lscala/util/Properties$;->encodingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object v0

    return-object v0
.end method

.method public fromUTF8([B)[C
    .locals 2

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lscala/io/Codec$;->fromUTF8([BII)[C

    move-result-object p1

    return-object p1
.end method

.method public fromUTF8([BII)[C
    .locals 0

    .line 102
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lscala/io/Codec$;->UTF8()Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p2}, Lscala/io/Codec;->charSet()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [C

    .line 105
    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    return-object p2
.end method

.method public string2codec(Ljava/lang/String;)Lscala/io/Codec;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lscala/io/Codec$;->apply(Ljava/lang/String;)Lscala/io/Codec;

    move-result-object p1

    return-object p1
.end method

.method public toUTF8(Ljava/lang/CharSequence;)[B
    .locals 2

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 113
    invoke-virtual {p0}, Lscala/io/Codec$;->UTF8()Lscala/io/Codec;

    move-result-object v0

    invoke-virtual {v0}, Lscala/io/Codec;->charSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 115
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public toUTF8([CII)[B
    .locals 0

    .line 120
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lscala/io/Codec$;->UTF8()Lscala/io/Codec;

    move-result-object p2

    invoke-virtual {p2}, Lscala/io/Codec;->charSet()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    .line 123
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2
.end method
