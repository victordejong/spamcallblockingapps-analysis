.class public final Lcom/lb/video_trimmer_library/view/TimeLineView$a;
.super Lcom/lb/video_trimmer_library/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/view/TimeLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/lb/video_trimmer_library/view/TimeLineView$getBitmap$1",
        "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;",
        "execute",
        "",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lb/video_trimmer_library/view/TimeLineView;

.field final synthetic h:I

.field final synthetic i:I


# direct methods
.method constructor <init>(Lcom/lb/video_trimmer_library/view/TimeLineView;IILjava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    iput p2, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->h:I

    iput p3, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->i:I

    invoke-direct {p0, p4, p5, p6, p7}, Lcom/lb/video_trimmer_library/b/a$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 72
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/TimeLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-static {v2}, Lcom/lb/video_trimmer_library/view/TimeLineView;->a(Lcom/lb/video_trimmer_library/view/TimeLineView;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v1, 0x9

    .line 77
    invoke-virtual {v7, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediaMetadataRetriever.e\u2026er.METADATA_KEY_DURATION)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 78
    iget v8, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->h:I

    int-to-long v3, v8

    div-long v9, v1, v3

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_2

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    int-to-long v1, v11

    mul-long v2, v1, v9

    const/4 v4, 0x2

    .line 82
    iget v6, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->i:I

    move-object v1, v7

    move v5, v6

    .line 81
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_0
    int-to-long v1, v11

    mul-long v1, v1, v9

    const/4 v3, 0x2

    .line 84
    invoke-virtual {v7, v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 89
    iget v2, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->i:I

    invoke-static {v1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 93
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView$a;->a:Lcom/lb/video_trimmer_library/view/TimeLineView;

    invoke-static {v1, v0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->a(Lcom/lb/video_trimmer_library/view/TimeLineView;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 95
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
