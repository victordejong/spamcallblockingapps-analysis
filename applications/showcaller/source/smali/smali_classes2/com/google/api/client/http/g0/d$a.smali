.class final Lcom/google/api/client/http/g0/d$a;
.super Ljava/io/FilterInputStream;
.source "NetHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/g0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private d:J

.field final synthetic e:Lcom/google/api/client/http/g0/d;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/g0/d;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/g0/d$a;->e:Lcom/google/api/client/http/g0/d;

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/g0/d$a;->e:Lcom/google/api/client/http/g0/d;

    invoke-virtual {v0}, Lcom/google/api/client/http/g0/d;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection closed prematurely: bytesRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Content-Length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5

    .line 4
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/api/client/http/g0/d$a;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/api/client/http/g0/d$a;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-wide p2, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    :goto_0
    return p1
.end method

.method public skip(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/api/client/http/g0/d$a;->d:J

    return-wide p1
.end method
