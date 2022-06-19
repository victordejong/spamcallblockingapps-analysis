.class public final Lorg/jsoup/b/a;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private c:J

.field private d:J

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lorg/jsoup/b/a;->d:J

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Z)V

    .line 29
    iput p3, p0, Lorg/jsoup/b/a;->b:I

    .line 30
    iput p3, p0, Lorg/jsoup/b/a;->e:I

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_1
    iput-boolean p1, p0, Lorg/jsoup/b/a;->a:Z

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/jsoup/b/a;->c:J

    return-void
.end method

.method public static a(Ljava/io/InputStream;I)Lorg/jsoup/b/a;
    .locals 2

    .line 43
    instance-of v0, p0, Lorg/jsoup/b/a;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lorg/jsoup/b/a;

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lorg/jsoup/b/a;

    const v1, 0x8000

    invoke-direct {v0, p0, v1, p1}, Lorg/jsoup/b/a;-><init>(Ljava/io/InputStream;II)V

    return-object v0
.end method


# virtual methods
.method public final read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lorg/jsoup/b/a;->f:Z

    const/4 v1, -0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/jsoup/b/a;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/b/a;->e:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 54
    iput-boolean v2, p0, Lorg/jsoup/b/a;->f:Z

    return v1

    .line 1114
    :cond_1
    iget-wide v0, p0, Lorg/jsoup/b/a;->d:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_2

    .line 1117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1118
    iget-wide v3, p0, Lorg/jsoup/b/a;->c:J

    sub-long/2addr v0, v3

    .line 1119
    iget-wide v3, p0, Lorg/jsoup/b/a;->d:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    .line 60
    iget-boolean v0, p0, Lorg/jsoup/b/a;->a:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/jsoup/b/a;->e:I

    if-le p3, v0, :cond_3

    move p3, v0

    .line 64
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    .line 65
    iget p2, p0, Lorg/jsoup/b/a;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/jsoup/b/a;->e:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v5

    .line 58
    :cond_4
    new-instance p1, Ljava/net/SocketTimeoutException;

    const-string p2, "Read timeout"

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 104
    iget v0, p0, Lorg/jsoup/b/a;->b:I

    iget v1, p0, Lorg/jsoup/b/a;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/b/a;->e:I

    return-void
.end method
