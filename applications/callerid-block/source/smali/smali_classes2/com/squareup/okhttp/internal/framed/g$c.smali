.class final Lcom/squareup/okhttp/internal/framed/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final b:Lokio/BufferedSource;

.field private final c:Lcom/squareup/okhttp/internal/framed/g$a;

.field private final d:Z

.field final e:Lcom/squareup/okhttp/internal/framed/f$a;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->d:Z

    new-instance p3, Lcom/squareup/okhttp/internal/framed/g$a;

    invoke-direct {p3, p1}, Lcom/squareup/okhttp/internal/framed/g$a;-><init>(Lokio/BufferedSource;)V

    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->c:Lcom/squareup/okhttp/internal/framed/g$a;

    new-instance p1, Lcom/squareup/okhttp/internal/framed/f$a;

    invoke-direct {p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/f$a;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->e:Lcom/squareup/okhttp/internal/framed/f$a;

    return-void
.end method

.method private B(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/g$c;->F(Lcom/squareup/okhttp/internal/framed/a$a;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/g;->g(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/g$c;->x(ISBI)Ljava/util/List;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->e:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/a$a;->h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private C(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v2

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1, v1, p2, p4}, Lcom/squareup/okhttp/internal/framed/a$a;->ping(ZII)V

    return-void

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method private F(Lcom/squareup/okhttp/internal/framed/a$a;I)V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lcom/squareup/okhttp/internal/framed/a$a;->priority(IIIZ)V

    return-void
.end method

.method private K(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/g$c;->F(Lcom/squareup/okhttp/internal/framed/a$a;I)V

    return-void

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3
.end method

.method private O(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/g;->g(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/g$c;->x(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lcom/squareup/okhttp/internal/framed/a$a;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private U(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 3

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    invoke-static {p2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p4, v2}, Lcom/squareup/okhttp/internal/framed/a$a;->f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_2
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method private V(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_9

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/a$a;->ackSettings()V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_8

    new-instance p3, Lcom/squareup/okhttp/internal/framed/m;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/m;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_6

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    move-result v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    packed-switch v3, :pswitch_data_0

    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    goto :goto_2

    :pswitch_0
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_2

    const v5, 0xffffff

    if-gt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_1
    const/4 v3, 0x7

    if-ltz v4, :cond_3

    goto :goto_1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :pswitch_2
    const/4 v3, 0x4

    goto :goto_1

    :pswitch_3
    if-eqz v4, :cond_5

    if-ne v4, p4, :cond_4

    goto :goto_1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_5
    :goto_1
    :pswitch_4
    invoke-virtual {p3, v3, v1, v4}, Lcom/squareup/okhttp/internal/framed/m;->k(III)Lcom/squareup/okhttp/internal/framed/m;

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :goto_2
    throw v0

    :cond_6
    invoke-interface {p1, v1, p3}, Lcom/squareup/okhttp/internal/framed/a$a;->g(ZLcom/squareup/okhttp/internal/framed/m;)V

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/m;->d()I

    move-result p1

    if-ltz p1, :cond_7

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->e:Lcom/squareup/okhttp/internal/framed/f$a;

    invoke-virtual {p3}, Lcom/squareup/okhttp/internal/framed/m;->d()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/f$a;->g(I)V

    :cond_7
    return-void

    :cond_8
    new-array p1, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_9
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private W(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 6

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v2, p2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    invoke-interface {p1, p4, v2, v3}, Lcom/squareup/okhttp/internal/framed/a$a;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p3
.end method

.method private a(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v2, v1

    :cond_2
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/framed/g;->g(IBS)I

    move-result p2

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, p3, p2}, Lcom/squareup/okhttp/internal/framed/a$a;->data(ZILokio/BufferedSource;I)V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    int-to-long p2, v2

    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private p(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V
    .locals 4

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lt p2, v0, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {p4}, Lokio/BufferedSource;->readInt()I

    move-result p4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    sub-int/2addr p2, v0

    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_0

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p3

    :cond_0
    invoke-interface {p1, p4, v0, p3}, Lcom/squareup/okhttp/internal/framed/a$a;->i(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method private x(ISBI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->c:Lcom/squareup/okhttp/internal/framed/g$a;

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/g$a;->f:I

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/g$a;->c:I

    iput-short p2, v0, Lcom/squareup/okhttp/internal/framed/g$a;->g:S

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/framed/g$a;->d:B

    iput p4, v0, Lcom/squareup/okhttp/internal/framed/g$a;->e:I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->e:Lcom/squareup/okhttp/internal/framed/f$a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/f$a;->l()V

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->e:Lcom/squareup/okhttp/internal/framed/f$a;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/f$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public P(Lcom/squareup/okhttp/internal/framed/a$a;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/g;->f(Lokio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->d()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->d()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lcom/squareup/okhttp/internal/framed/g$b;->b(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->W(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->p(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->C(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->O(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->V(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->U(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->K(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->B(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/g$c;->a(Lcom/squareup/okhttp/internal/framed/a$a;IBI)V

    :goto_0
    return v2

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public q()V
    .locals 6

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$c;->b:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->c()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->d()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->d()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/g;->c()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Expected a connection header but was %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/g;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 v0, 0x0

    throw v0
.end method
