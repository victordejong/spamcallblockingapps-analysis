.class public final Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
.super Ljava/lang/Object;
.source "MediaHttpDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/http/r;

.field private final b:Lcom/google/api/client/http/w;

.field private c:Z

.field private d:Lcom/google/api/client/googleapis/media/a;

.field private e:I

.field private f:J

.field private g:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->c:Z

    const/high16 v0, 0x2000000

    .line 3
    iput v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e:I

    .line 4
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->d:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->g:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->i:J

    .line 6
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/w;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->b:Lcom/google/api/client/http/w;

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->c()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/w;->d(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->a:Lcom/google/api/client/http/r;

    return-void
.end method

.method private b(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->a:Lcom/google/api/client/http/r;

    invoke-virtual {v0, p3}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long p4, v0, v2

    if-nez p4, :cond_1

    cmp-long p4, p1, v4

    if-eqz p4, :cond_3

    .line 4
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    .line 5
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/n;->H(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 8
    :cond_3
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->b()Lcom/google/api/client/http/t;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p5}, Lcom/google/common/io/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    return-object p1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->a()V

    .line 11
    throw p2
.end method

.method private c(Ljava/lang/String;)J
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

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/16 v0, 0x2f

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->f:J

    :cond_1
    return-void
.end method

.method private e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->g:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    .line 2
    iget-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->d:Lcom/google/api/client/googleapis/media/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/google/api/client/googleapis/media/a;->a(Lcom/google/api/client/googleapis/media/MediaHttpDownloader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->g:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    sget-object v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->d:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    const-string v0, "alt"

    const-string v1, "media"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->c:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->e:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    .line 5
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->i:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->b(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->h()Ljava/lang/Long;

    move-result-object p1

    iget-wide p2, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->f:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->f:J

    .line 8
    iput-wide p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    .line 9
    sget-object p1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->f:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    return-void

    .line 10
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    iget v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 11
    iget-wide v2, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->i:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 12
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    move-wide v7, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    .line 13
    invoke-direct/range {v6 .. v11}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->b(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/n;->i()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 16
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->d(Ljava/lang/String;)V

    .line 17
    iget-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->i:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    cmp-long v0, v6, v1

    if-gtz v0, :cond_3

    .line 18
    iput-wide v6, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    .line 19
    sget-object p1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->f:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    return-void

    .line 20
    :cond_3
    iget-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->f:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4

    .line 21
    iput-wide v3, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    .line 22
    sget-object p1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->f:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    return-void

    .line 23
    :cond_4
    iput-wide v1, p0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->h:J

    .line 24
    sget-object v0, Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;->e:Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->e(Lcom/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState;)V

    goto :goto_1
.end method
