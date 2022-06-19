.class public Lr7/g;
.super Lk7/r;
.source "SourceFile"


# instance fields
.field public h:Ljava/util/zip/Inflater;

.field public i:Lk7/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 2
    invoke-direct {p0}, Lk7/r;-><init>()V

    .line 3
    new-instance v1, Lk7/l;

    invoke-direct {v1}, Lk7/l;-><init>()V

    iput-object v1, p0, Lr7/g;->i:Lk7/l;

    .line 4
    iput-object v0, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Inflater;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lk7/r;-><init>()V

    .line 6
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lr7/g;->i:Lk7/l;

    .line 7
    iput-object p1, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 5

    .line 1
    :try_start_0
    iget p1, p2, Lk7/l;->c:I

    mul-int/lit8 p1, p1, 0x2

    .line 2
    invoke-static {p1}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p2}, Lk7/l;->p()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    invoke-virtual {p2}, Lk7/l;->o()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 7
    iget-object v1, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 8
    :cond_0
    iget-object v1, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    iget-object v1, p0, Lr7/g;->i:Lk7/l;

    invoke-virtual {v1, p1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 14
    invoke-static {p1}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 15
    :cond_1
    iget-object v1, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    :cond_2
    invoke-static {v0}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 18
    iget-object p2, p0, Lr7/g;->i:Lk7/l;

    invoke-virtual {p2, p1}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 19
    iget-object p1, p0, Lr7/g;->i:Lk7/l;

    invoke-static {p0, p1}, Li4/d;->p(Lk7/m;Lk7/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p0, p1}, Lr7/g;->n(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lr7/g;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lcom/koushikdutta/async/http/filter/DataRemainingException;

    const-string v1, "data still remaining in inflater"

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/filter/DataRemainingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lk7/n;->n(Ljava/lang/Exception;)V

    return-void
.end method
