.class Lcom/squareup/okhttp/internal/framed/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lokio/InflaterSource;

.field private b:I

.field private final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/okhttp/internal/framed/j$a;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/framed/j$a;-><init>(Lcom/squareup/okhttp/internal/framed/j;Lokio/Source;)V

    new-instance p1, Lcom/squareup/okhttp/internal/framed/j$b;

    invoke-direct {p1, p0}, Lcom/squareup/okhttp/internal/framed/j$b;-><init>(Lcom/squareup/okhttp/internal/framed/j;)V

    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/j;->a:Lokio/InflaterSource;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/j;->c:Lokio/BufferedSource;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/j;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    return p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/j;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    return p1
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/j;->a:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->refill()Z

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Lokio/ByteString;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/j;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/j;->c:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/j;->c:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public f(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/j;->b:I

    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/j;->c:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    if-ltz p1, :cond_3

    const/16 v0, 0x400

    if-gt p1, v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/j;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v2

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/j;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/squareup/okhttp/internal/framed/e;

    invoke-direct {v4, v2, v3}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "name.size == 0"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/j;->d()V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs > 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberOfPairs < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
