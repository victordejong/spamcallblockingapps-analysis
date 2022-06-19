.class final Lokhttp3/internal/http2/g$a;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements La/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:B

.field c:I

.field d:I

.field e:S

.field private final f:La/e;


# direct methods
.method constructor <init>(La/e;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    .line 361
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    iget v0, p0, Lokhttp3/internal/http2/g$a;->c:I

    .line 388
    iget-object v1, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    invoke-static {v1}, Lokhttp3/internal/http2/g;->a(La/e;)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/http2/g$a;->d:I

    iput v1, p0, Lokhttp3/internal/http2/g$a;->a:I

    .line 389
    iget-object v1, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    invoke-interface {v1}, La/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 390
    iget-object v2, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    invoke-interface {v2}, La/e;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lokhttp3/internal/http2/g$a;->b:B

    .line 391
    sget-object v2, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lokhttp3/internal/http2/g;->a:Ljava/util/logging/Logger;

    iget v3, p0, Lokhttp3/internal/http2/g$a;->c:I

    iget v4, p0, Lokhttp3/internal/http2/g$a;->a:I

    iget-byte v5, p0, Lokhttp3/internal/http2/g$a;->b:B

    invoke-static {v7, v3, v4, v1, v5}, Lokhttp3/internal/http2/d;->a(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    invoke-interface {v2}, La/e;->i()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/http2/g$a;->c:I

    .line 393
    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const-string/jumbo v0, "%s != TYPE_CONTINUATION"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 394
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/g$a;->c:I

    if-eq v1, v0, :cond_2

    const-string/jumbo v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lokhttp3/internal/http2/d;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 395
    :cond_2
    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 364
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/g$a;->d:I

    if-nez v2, :cond_2

    .line 365
    iget-object v2, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    iget-short v3, p0, Lokhttp3/internal/http2/g$a;->e:S

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, La/e;->h(J)V

    .line 366
    const/4 v2, 0x0

    iput-short v2, p0, Lokhttp3/internal/http2/g$a;->e:S

    .line 367
    iget-byte v2, p0, Lokhttp3/internal/http2/g$a;->b:B

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    :goto_1
    return-wide v0

    .line 368
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/http2/g$a;->b()V

    goto :goto_0

    .line 372
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    iget v3, p0, Lokhttp3/internal/http2/g$a;->d:I

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, La/e;->a(La/c;J)J

    move-result-wide v2

    .line 373
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 374
    iget v0, p0, Lokhttp3/internal/http2/g$a;->d:I

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lokhttp3/internal/http2/g$a;->d:I

    move-wide v0, v2

    .line 375
    goto :goto_1
.end method

.method public a()La/t;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lokhttp3/internal/http2/g$a;->f:La/e;

    invoke-interface {v0}, La/e;->a()La/t;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method
