.class public final Lcom/esotericsoftware/kryo/a/b;
.super Lcom/esotericsoftware/kryo/a/a;
.source "SourceFile"


# instance fields
.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/a;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/a/a;-><init>(I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/a/a;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/a/a;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method

.method private p()Z
    .locals 6

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/a/b;->a()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 85
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    return v1

    :cond_0
    and-int/lit8 v5, v4, 0x7f

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    .line 89
    iput v3, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    .line 90
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    if-lez v0, :cond_1

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read chunk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 97
    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Unable to read chunk size: malformed integer"

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Unable to read chunk size."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a([BII)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/a/a;->a([BII)V

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method

.method protected final b([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/b;->p()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v1

    .line 74
    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/a/a;->b([BII)I

    move-result p1

    .line 75
    iget p2, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    if-nez p2, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/b;->p()Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public final o()V
    .locals 2

    .line 102
    iget v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/a/b;->p()Z

    .line 103
    :cond_0
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    if-lez v0, :cond_1

    .line 104
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/a/b;->a(I)V

    goto :goto_0

    .line 105
    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    .line 106
    sget-boolean v0, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v0, :cond_2

    const-string v0, "kryo"

    const-string v1, "Next chunk."

    invoke-static {v0, v1}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/esotericsoftware/kryo/a/a;->reset()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/esotericsoftware/kryo/a/b;->i:I

    return-void
.end method
