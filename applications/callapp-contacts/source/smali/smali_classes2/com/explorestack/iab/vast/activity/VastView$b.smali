.class abstract Lcom/explorestack/iab/vast/activity/VastView$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;

.field c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 1935
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1936
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->a:Ljava/lang/ref/WeakReference;

    .line 1937
    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->b:Landroid/net/Uri;

    .line 1938
    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->d:Ljava/lang/String;

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 1940
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    .line 1941
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1942
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$b;->a(Landroid/graphics/Bitmap;)V

    return-void

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView$b;->start()V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastView$b;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1921
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public run()V
    .locals 6

    .line 1950
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1951
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v0, :cond_2

    .line 1954
    :try_start_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->b:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1955
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1957
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    const/16 v0, 0x9

    .line 1961
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1960
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    .line 1963
    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const/4 v0, 0x2

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1967
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaFrameRetriever"

    invoke-static {v2, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1970
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView$b;->c:Z

    if-eqz v0, :cond_3

    return-void

    .line 1973
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$b$1;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$b$1;-><init>(Lcom/explorestack/iab/vast/activity/VastView$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
