.class abstract Lokhttp3/internal/c/a$a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements La/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:La/i;

.field protected b:Z

.field protected c:J

.field final synthetic d:Lokhttp3/internal/c/a;


# direct methods
.method private constructor <init>(Lokhttp3/internal/c/a;)V
    .locals 2

    .line 352
    iput-object p1, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance p1, La/i;

    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget-object v0, v0, Lokhttp3/internal/c/a;->c:La/e;

    invoke-interface {v0}, La/e;->a()La/t;

    move-result-object v0

    invoke-direct {p1, v0}, La/i;-><init>(La/t;)V

    iput-object p1, p0, Lokhttp3/internal/c/a$a;->a:La/i;

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lokhttp3/internal/c/a$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/c/a;Lokhttp3/internal/c/a$1;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lokhttp3/internal/c/a$a;-><init>(Lokhttp3/internal/c/a;)V

    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 2

    .line 363
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget-object v0, v0, Lokhttp3/internal/c/a;->c:La/e;

    invoke-interface {v0, p1, p2, p3}, La/e;->a(La/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 365
    iget-wide v0, p0, Lokhttp3/internal/c/a$a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/c/a$a;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 369
    invoke-virtual {p0, p2, p1}, Lokhttp3/internal/c/a$a;->a(ZLjava/io/IOException;)V

    .line 370
    throw p1
.end method

.method public a()La/t;
    .locals 1

    .line 358
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->a:La/i;

    return-object v0
.end method

.method protected final a(ZLjava/io/IOException;)V
    .locals 7

    .line 379
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget v0, v0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget v0, v0, Lokhttp3/internal/c/a;->e:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 382
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget-object v2, p0, Lokhttp3/internal/c/a$a;->a:La/i;

    invoke-virtual {v0, v2}, Lokhttp3/internal/c/a;->a(La/i;)V

    .line 384
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iput v1, v0, Lokhttp3/internal/c/a;->e:I

    .line 385
    iget-object v0, v0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget-object v1, v0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    xor-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget-wide v4, p0, Lokhttp3/internal/c/a$a;->c:J

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/f;->a(ZLokhttp3/internal/b/c;JLjava/io/IOException;)V

    :cond_1
    return-void

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lokhttp3/internal/c/a$a;->d:Lokhttp3/internal/c/a;

    iget v0, v0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
