.class public final Lcom/linkedin/android/litr/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkedin/android/litr/d/d;


# instance fields
.field private final a:Landroid/media/MediaExtractor;

.field private final b:Lcom/linkedin/android/litr/d/c;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/MediaSourceException;
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/linkedin/android/litr/d/c;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/linkedin/android/litr/d/c;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/linkedin/android/litr/d/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/linkedin/android/litr/d/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/linkedin/android/litr/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/MediaSourceException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/linkedin/android/litr/d/a;->b:Lcom/linkedin/android/litr/d/c;

    .line 42
    new-instance p3, Landroid/media/MediaExtractor;

    invoke-direct {p3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p3, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    .line 43
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p3, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x18

    .line 51
    invoke-virtual {v0, p3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 53
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/linkedin/android/litr/d/a;->c:I

    .line 55
    :cond_0
    invoke-static {p1, p2}, Lcom/linkedin/android/litr/h/c;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/linkedin/android/litr/d/a;->d:J

    .line 57
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 49
    new-instance p3, Lcom/linkedin/android/litr/exception/MediaSourceException;

    sget-object v0, Lcom/linkedin/android/litr/exception/MediaSourceException$a;->DATA_SOURCE:Lcom/linkedin/android/litr/exception/MediaSourceException$a;

    invoke-direct {p3, v0, p2, p1}, Lcom/linkedin/android/litr/exception/MediaSourceException;-><init>(Lcom/linkedin/android/litr/exception/MediaSourceException$a;Landroid/net/Uri;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public final a(I)Landroid/media/MediaFormat;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    return-void
.end method

.method public final c()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    return-void
.end method

.method public final f()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->a:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-void
.end method

.method public final g()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/linkedin/android/litr/d/a;->d:J

    return-wide v0
.end method

.method public final h()Lcom/linkedin/android/litr/d/c;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/linkedin/android/litr/d/a;->b:Lcom/linkedin/android/litr/d/c;

    return-object v0
.end method
