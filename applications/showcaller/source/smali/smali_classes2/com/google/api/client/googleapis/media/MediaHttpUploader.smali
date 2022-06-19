.class public final Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.super Ljava/lang/Object;
.source "MediaHttpUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;,
        Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
    }
.end annotation


# instance fields
.field private a:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

.field private final b:Lcom/google/api/client/http/b;

.field private final c:Lcom/google/api/client/http/r;

.field private final d:Lcom/google/api/client/http/w;

.field private e:Lcom/google/api/client/http/j;

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/google/api/client/http/n;

.field private j:Lcom/google/api/client/http/q;

.field private k:Ljava/io/InputStream;

.field private l:Z

.field private m:Lcom/google/api/client/googleapis/media/b;

.field n:Ljava/lang/String;

.field private o:J

.field private p:I

.field private q:Ljava/lang/Byte;

.field private r:J

.field private s:I

.field private t:[B

.field private u:Z

.field v:Lcom/google/api/client/util/y;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/b;Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->d:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    const-string v0, "POST"

    .line 3
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    const-string v0, "*"

    .line 5
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    const/high16 v0, 0xa00000

    .line 6
    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->p:I

    .line 7
    sget-object v0, Lcom/google/api/client/util/y;->a:Lcom/google/api/client/util/y;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->v:Lcom/google/api/client/util/y;

    .line 8
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/b;

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    .line 9
    invoke-static {p2}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/w;

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d:Lcom/google/api/client/http/w;

    if-nez p3, :cond_0

    .line 10
    invoke-virtual {p2}, Lcom/google/api/client/http/w;->c()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c:Lcom/google/api/client/http/r;

    return-void
.end method

.method private a()Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->p:I

    int-to-long v0, v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->p:I

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 6
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/google/api/client/util/g;->b(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    .line 7
    new-instance v5, Lcom/google/api/client/http/y;

    iget-object v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    .line 8
    invoke-virtual {v6}, Lcom/google/api/client/http/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/google/api/client/http/y;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/api/client/http/y;->i(Z)Lcom/google/api/client/http/y;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3, v4}, Lcom/google/api/client/http/y;->h(J)Lcom/google/api/client/http/y;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/y;->g(Z)Lcom/google/api/client/http/y;

    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    goto/16 :goto_4

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->q:Ljava/lang/Byte;

    if-nez v0, :cond_2

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 13
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v4, v2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 15
    :cond_4
    iget-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->r:J

    iget-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 16
    iget v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->s:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->q:Ljava/lang/Byte;

    if-eqz v0, :cond_5

    .line 18
    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v4

    :cond_5
    sub-int v3, v1, v4

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v6, v3}, Lcom/google/api/client/util/g;->c(Ljava/io/InputStream;[BII)I

    move-result v0

    if-ge v0, v3, :cond_8

    .line 20
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v4, v0

    .line 21
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->q:Ljava/lang/Byte;

    if-eqz v0, :cond_6

    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->q:Ljava/lang/Byte;

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    int-to-long v5, v4

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    :cond_7
    move v1, v4

    goto :goto_3

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->q:Ljava/lang/Byte;

    .line 26
    :goto_3
    new-instance v0, Lcom/google/api/client/http/d;

    iget-object v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    .line 27
    invoke-virtual {v3}, Lcom/google/api/client/http/b;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[BII)V

    .line 28
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->r:J

    .line 29
    :goto_4
    iput v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->s:I

    if-nez v1, :cond_9

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes */"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 31
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_5
    new-instance v2, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;

    invoke-direct {v2, v0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;-><init>(Lcom/google/api/client/http/b;Ljava/lang/String;)V

    return-object v2
.end method

.method private b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->g:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    .line 2
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    .line 3
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->e:Lcom/google/api/client/http/j;

    const-string v2, "uploadType"

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/api/client/http/b0;

    invoke-direct {v0}, Lcom/google/api/client/http/b0;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->e:Lcom/google/api/client/http/j;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/b0;->i(Ljava/util/Collection;)Lcom/google/api/client/http/b0;

    move-result-object v0

    const-string v1, "multipart"

    .line 5
    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "media"

    .line 6
    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    .line 13
    :cond_1
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->h:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 15
    throw v0
.end method

.method private c(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/j;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/api/client/http/h;

    invoke-direct {v0}, Lcom/google/api/client/http/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->v(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/a;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/a;->a(Lcom/google/api/client/http/q;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->C(Z)Lcom/google/api/client/http/q;

    .line 3
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->b()Lcom/google/api/client/http/t;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->e:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    const-string v0, "uploadType"

    const-string v1, "resumable"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->e:Lcom/google/api/client/http/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c:Lcom/google/api/client/http/r;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    invoke-virtual {v1}, Lcom/google/api/client/http/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Upload-Content-Type"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 7
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "X-Upload-Content-Length"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 11
    :try_start_0
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->f:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 13
    throw v0
.end method

.method private f()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    invoke-interface {v0}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->g:Z

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f:J

    return-wide v0
.end method

.method private g(Ljava/lang/String;)J
    .locals 4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/16 v0, 0x2d

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private h()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 13

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->e(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 5
    iget-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    invoke-virtual {p1}, Lcom/google/api/client/http/b;->d()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a()Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c:Lcom/google/api/client/http/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/http/r;->c(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    .line 10
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->a()Lcom/google/api/client/http/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 11
    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/api/client/http/n;->A(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 12
    new-instance p1, Lcom/google/api/client/googleapis/media/c;

    iget-object v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    invoke-direct {p1, p0, v1}, Lcom/google/api/client/googleapis/media/c;-><init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/q;)V

    .line 13
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->d(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->c(Lcom/google/api/client/http/q;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 16
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    .line 18
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 20
    :cond_3
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->h:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V

    return-object p1

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()I

    move-result v1

    const/16 v3, 0x134

    if-eq v1, v3, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b:Lcom/google/api/client/http/b;

    invoke-virtual {v0}, Lcom/google/api/client/http/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    return-object p1

    .line 24
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 25
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/n;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->g(Ljava/lang/String;)J

    move-result-wide v3

    .line 27
    iget-wide v5, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    sub-long v5, v3, v5

    const/4 v1, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-ltz v10, :cond_8

    .line 28
    iget v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->s:I

    int-to-long v10, v10

    cmp-long v12, v5, v10

    if-gtz v12, :cond_8

    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    invoke-static {v10}, Lcom/google/api/client/util/w;->g(Z)V

    .line 29
    iget v10, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->s:I

    int-to-long v10, v10

    sub-long/2addr v10, v5

    .line 30
    invoke-direct {p0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h()Z

    move-result v12

    if-eqz v12, :cond_a

    cmp-long v2, v10, v8

    if-lez v2, :cond_b

    .line 31
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 32
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->k:Ljava/io/InputStream;

    invoke-virtual {v2, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    cmp-long v2, v5, v8

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 33
    :goto_3
    invoke-static {v1}, Lcom/google/api/client/util/w;->g(Z)V

    goto :goto_4

    :cond_a
    cmp-long v1, v10, v8

    if-nez v1, :cond_b

    .line 34
    iput-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->t:[B

    .line 35
    :cond_b
    :goto_4
    iput-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o:J

    .line 36
    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->g:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 38
    throw v0

    :catchall_1
    move-exception v0

    .line 39
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 40
    throw v0
.end method

.method private o(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    .line 2
    iget-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->m:Lcom/google/api/client/googleapis/media/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/google/api/client/googleapis/media/b;->a(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    const-string v1, "The current request should not be null"

    invoke-static {v0, v1}, Lcom/google/api/client/util/w;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    new-instance v1, Lcom/google/api/client/http/f;

    invoke-direct {v1}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 3
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes */"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->A(Ljava/lang/String;)Lcom/google/api/client/http/n;

    return-void
.end method

.method public k(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->u:Z

    return-object p0
.end method

.method public l(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i:Lcom/google/api/client/http/n;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 1

    const-string v0, "POST"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->h:Ljava/lang/String;

    return-object p0
.end method

.method public n(Lcom/google/api/client/http/j;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->e:Lcom/google/api/client/http/j;

    return-object p0
.end method

.method public p(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->a:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;->d:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->l:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->b(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->i(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/t;

    move-result-object p1

    return-object p1
.end method
