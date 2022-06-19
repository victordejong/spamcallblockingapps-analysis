.class public final Lcom/googlecode/mp4parser/h264/a/b;
.super Lcom/googlecode/mp4parser/h264/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/h264/a/a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    sget v1, Lcom/googlecode/mp4parser/h264/a/a;->d:I

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/a/b;->e:Lcom/googlecode/mp4parser/h264/a;

    .line 1055
    iget v2, v2, Lcom/googlecode/mp4parser/h264/a;->b:I

    sub-int/2addr v1, v2

    .line 167
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    .line 170
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-lt v3, v2, :cond_1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x64

    iget-object v2, p0, Lcom/googlecode/mp4parser/h264/a/b;->e:Lcom/googlecode/mp4parser/h264/a;

    .line 2055
    iget v2, v2, Lcom/googlecode/mp4parser/h264/a;->b:I

    sub-int v5, p1, v2

    const/4 p1, 0x0

    :goto_1
    if-lt p1, v5, :cond_0

    .line 179
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/a/b;->e:Lcom/googlecode/mp4parser/h264/a;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object p1, p0, Lcom/googlecode/mp4parser/h264/a/b;->e:Lcom/googlecode/mp4parser/h264/a;

    .line 3044
    iput v1, p1, Lcom/googlecode/mp4parser/h264/a;->b:I

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private e()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/b;->a()I

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Lcom/googlecode/mp4parser/h264/a/b;->a(I)J

    move-result-wide v2

    const/4 v0, 0x1

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/a/b;->e()I

    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final a(ILjava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/h264/a/b;->a(I)J

    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/googlecode/mp4parser/h264/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/googlecode/mp4parser/h264/a/b;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    mul-int v0, v0, v2

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    .line 97
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/h264/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/b;->a()I

    .line 161
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/h264/a/b;->c()J

    return-void
.end method
