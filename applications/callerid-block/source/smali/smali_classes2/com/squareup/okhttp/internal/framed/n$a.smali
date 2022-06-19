.class final Lcom/squareup/okhttp/internal/framed/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Lokio/BufferedSource;

.field private final c:Z

.field private final d:Lcom/squareup/okhttp/internal/framed/j;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    new-instance v0, Lcom/squareup/okhttp/internal/framed/j;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/framed/j;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->d:Lcom/squareup/okhttp/internal/framed/j;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->c:Z

    return-void
.end method

.method private B(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/n$a;->c:Z

    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1, v0, p3, p2}, Lcom/squareup/okhttp/internal/framed/a$a;->ping(ZII)V

    return-void

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "TYPE_PING length: %d != 4"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    throw p1
.end method

.method private C(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v2, 0x7fffffff

    and-int/2addr p3, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/a$a;->f(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2
.end method

.method private F(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v1, :cond_2

    new-instance p3, Lcom/squareup/okhttp/internal/framed/m;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/framed/m;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    const/high16 v6, -0x1000000

    and-int/2addr v6, v4

    ushr-int/lit8 v6, v6, 0x18

    const v7, 0xffffff

    and-int/2addr v4, v7

    invoke-virtual {p3, v4, v6, v5}, Lcom/squareup/okhttp/internal/framed/m;->k(III)Lcom/squareup/okhttp/internal/framed/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {p1, v2, p3}, Lcom/squareup/okhttp/internal/framed/a$a;->g(ZLcom/squareup/okhttp/internal/framed/m;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p2, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private K(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->d:Lcom/squareup/okhttp/internal/framed/j;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/j;->f(I)Ljava/util/List;

    move-result-object v7

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->c:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/a$a;->h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private O(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->d:Lcom/squareup/okhttp/internal/framed/j;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/framed/j;->f(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    sget-object v9, Lcom/squareup/okhttp/internal/framed/HeadersMode;->b:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/squareup/okhttp/internal/framed/a$a;->h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method

.method private U(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 7

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr p3, v3

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-interface {p1, p3, v2, v3}, Lcom/squareup/okhttp/internal/framed/a$a;->windowUpdate(IJ)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "windowSizeIncrement was 0"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 4

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p3, v2, :cond_1

    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    const v2, 0x7fffffff

    and-int/2addr p3, v2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, p3, v3, p2}, Lcom/squareup/okhttp/internal/framed/a$a;->i(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v0

    const-string p3, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p3, p1}, Lcom/squareup/okhttp/internal/framed/n$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw p2
.end method

.method private x(Lcom/squareup/okhttp/internal/framed/a$a;II)V
    .locals 8

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->d:Lcom/squareup/okhttp/internal/framed/j;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p2, p3}, Lcom/squareup/okhttp/internal/framed/j;->f(I)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/squareup/okhttp/internal/framed/HeadersMode;->d:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/a$a;->h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    return-void
.end method


# virtual methods
.method public P(Lcom/squareup/okhttp/internal/framed/a$a;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_2

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    int-to-long v0, v2

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v4

    :pswitch_1
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->U(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_2
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->x(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_3
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->p(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_4
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->B(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_5
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->F(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_6
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->C(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_7
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->K(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :pswitch_8
    invoke-direct {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/framed/n$a;->O(Lcom/squareup/okhttp/internal/framed/a$a;II)V

    return v4

    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version != 3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/n$a;->b:Lokio/BufferedSource;

    invoke-interface {p1, v0, v1, v3, v2}, Lcom/squareup/okhttp/internal/framed/a$a;->data(ZILokio/BufferedSource;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/n$a;->d:Lcom/squareup/okhttp/internal/framed/j;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/j;->c()V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
