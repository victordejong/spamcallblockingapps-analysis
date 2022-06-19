.class public final Lorg/mistergroup/shouldianswer/utils/v;
.super Ljava/lang/Object;
.source "StreamUtils.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/v;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/v;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/v;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/v;->a:Lorg/mistergroup/shouldianswer/utils/v;

    const/16 v0, 0xc8

    new-array v0, v0, [B

    .line 14
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/BufferedInputStream;)I
    .locals 3

    const-string v0, "br"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 20
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 21
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    .line 22
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 23
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end of file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Ljava/io/BufferedInputStream;I)Ljava/lang/String;
    .locals 3

    const-string v0, "br"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 79
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v2, "Charset.forName(\"UTF-8\")"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 78
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected end of file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Ljava/io/BufferedOutputStream;B)V
    .locals 1

    const-string v0, "bw"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public final a(Ljava/io/BufferedOutputStream;I)V
    .locals 4

    const-string v0, "bw"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    .line 29
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    .line 30
    aput-byte v1, v0, v3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x3

    .line 31
    aput-byte p2, v0, v1

    const/4 p2, 0x4

    .line 32
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public final a(Ljava/io/BufferedOutputStream;J)V
    .locals 7

    const-string v0, "bw"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const-wide/16 v1, 0xff

    and-long v3, p2, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const/16 v3, 0x8

    shr-long v5, p2, v3

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x1

    .line 51
    aput-byte v5, v0, v6

    const/16 v5, 0x10

    shr-long v5, p2, v5

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    .line 52
    aput-byte v5, v0, v6

    const/16 v5, 0x18

    shr-long v5, p2, v5

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x3

    .line 53
    aput-byte v5, v0, v6

    const/16 v5, 0x20

    shr-long v5, p2, v5

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x4

    .line 54
    aput-byte v5, v0, v6

    const/16 v5, 0x28

    shr-long v5, p2, v5

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x5

    .line 55
    aput-byte v5, v0, v6

    const/16 v5, 0x30

    shr-long v5, p2, v5

    and-long/2addr v5, v1

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x6

    .line 56
    aput-byte v5, v0, v6

    const/16 v5, 0x38

    shr-long/2addr p2, v5

    and-long/2addr p2, v1

    long-to-int p2, p2

    int-to-byte p2, p2

    const/4 p3, 0x7

    .line 57
    aput-byte p2, v0, p3

    .line 58
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public final a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 2

    const-string v0, "bw"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 84
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Charset.forName(\"UTF-8\")"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public final b(Ljava/io/BufferedInputStream;)J
    .locals 6

    const-string v0, "br"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 p1, 0x7

    :goto_0
    if-ltz p1, :cond_0

    shl-long/2addr v2, v1

    .line 43
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-wide v2

    .line 39
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end of file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final c(Ljava/io/BufferedInputStream;)B
    .locals 3

    const-string v0, "br"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 66
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/v;->b:[B

    aget-byte p1, p1, v2

    return p1

    .line 65
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end of file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
