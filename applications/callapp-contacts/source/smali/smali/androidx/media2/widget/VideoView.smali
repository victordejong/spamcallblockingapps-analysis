.class public Landroidx/media2/widget/VideoView;
.super Landroidx/media2/widget/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/VideoView$a;,
        Landroidx/media2/widget/VideoView$b;
    }
.end annotation


# static fields
.field static final a:Z


# instance fields
.field b:Landroidx/media2/widget/VideoView$a;

.field c:Landroidx/media2/widget/t;

.field d:Landroidx/media2/widget/t;

.field e:Landroidx/media2/widget/s;

.field f:Landroidx/media2/widget/r;

.field g:Landroidx/media2/widget/k;

.field public h:Landroidx/media2/widget/MediaControlView;

.field i:Landroidx/media2/widget/j;

.field j:Landroidx/media2/widget/m$a;

.field k:I

.field l:I

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroidx/media2/widget/o;

.field o:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field p:Landroidx/media2/widget/n;

.field private final q:Landroidx/media2/widget/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoView"

    const/4 v1, 0x3

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 267
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 210
    new-instance p3, Landroidx/media2/widget/VideoView$1;

    invoke-direct {p3, p0}, Landroidx/media2/widget/VideoView$1;-><init>(Landroidx/media2/widget/VideoView;)V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->q:Landroidx/media2/widget/t$a;

    const/4 v0, 0x0

    .line 1272
    iput-object v0, p0, Landroidx/media2/widget/VideoView;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v1, 0x1

    .line 1274
    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusable(Z)V

    .line 1275
    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 1276
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestFocus()Z

    .line 1278
    new-instance v2, Landroidx/media2/widget/s;

    invoke-direct {v2, p1}, Landroidx/media2/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    .line 1279
    new-instance v2, Landroidx/media2/widget/r;

    invoke-direct {v2, p1}, Landroidx/media2/widget/r;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    .line 1280
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    .line 2066
    iput-object p3, v2, Landroidx/media2/widget/s;->a:Landroidx/media2/widget/t$a;

    .line 1281
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    .line 3065
    iput-object p3, v2, Landroidx/media2/widget/r;->a:Landroidx/media2/widget/t$a;

    .line 1283
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    invoke-virtual {p0, p3}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 1284
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    invoke-virtual {p0, p3}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 1286
    new-instance p3, Landroidx/media2/widget/m$a;

    invoke-direct {p3}, Landroidx/media2/widget/m$a;-><init>()V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/m$a;

    .line 1287
    iput-boolean v1, p3, Landroidx/media2/widget/m$a;->a:Z

    .line 1289
    new-instance p3, Landroidx/media2/widget/n;

    invoke-direct {p3, p1}, Landroidx/media2/widget/n;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->p:Landroidx/media2/widget/n;

    const/4 v2, 0x0

    .line 1290
    invoke-virtual {p3, v2}, Landroidx/media2/widget/n;->setBackgroundColor(I)V

    .line 1291
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->p:Landroidx/media2/widget/n;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/m$a;

    invoke-virtual {p0, p3, v3}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    new-instance p3, Landroidx/media2/widget/VideoView$2;

    invoke-direct {p3, p0}, Landroidx/media2/widget/VideoView$2;-><init>(Landroidx/media2/widget/VideoView;)V

    .line 1317
    new-instance v3, Landroidx/media2/widget/o;

    invoke-direct {v3, p1, v0, p3}, Landroidx/media2/widget/o;-><init>(Landroid/content/Context;Landroidx/media2/widget/h;Landroidx/media2/widget/o$b;)V

    iput-object v3, p0, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    .line 1318
    new-instance p3, Landroidx/media2/widget/d;

    invoke-direct {p3, p1}, Landroidx/media2/widget/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p3}, Landroidx/media2/widget/o;->a(Landroidx/media2/widget/o$d;)V

    .line 1319
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    new-instance v3, Landroidx/media2/widget/f;

    invoke-direct {v3, p1}, Landroidx/media2/widget/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v3}, Landroidx/media2/widget/o;->a(Landroidx/media2/widget/o$d;)V

    .line 1320
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->p:Landroidx/media2/widget/n;

    .line 3498
    iget-object v4, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    if-eq v4, v3, :cond_1

    .line 3502
    iget-object v4, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    if-eqz v4, :cond_0

    .line 3503
    iget-object v4, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    invoke-interface {v4, v0}, Landroidx/media2/widget/o$a;->a(Landroidx/media2/widget/p$c;)V

    .line 3505
    :cond_0
    iput-object v3, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    .line 3506
    iput-object v0, p3, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    .line 3507
    iget-object v0, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    if-eqz v0, :cond_1

    .line 3508
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    invoke-interface {v3}, Landroidx/media2/widget/o$a;->a()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p3, Landroidx/media2/widget/o;->e:Landroid/os/Handler$Callback;

    invoke-direct {v0, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p3, Landroidx/media2/widget/o;->d:Landroid/os/Handler;

    .line 3509
    iget-object v0, p3, Landroidx/media2/widget/o;->h:Landroidx/media2/widget/o$a;

    invoke-virtual {p3}, Landroidx/media2/widget/o;->a()Landroidx/media2/widget/p$c;

    move-result-object p3

    invoke-interface {v0, p3}, Landroidx/media2/widget/o$a;->a(Landroidx/media2/widget/p$c;)V

    .line 1322
    :cond_1
    new-instance p3, Landroidx/media2/widget/j;

    invoke-direct {p3, p1}, Landroidx/media2/widget/j;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    const/16 v0, 0x8

    .line 1323
    invoke-virtual {p3, v0}, Landroidx/media2/widget/j;->setVisibility(I)V

    .line 1324
    iget-object p3, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/m$a;

    invoke-virtual {p0, p3, v3}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p2, :cond_3

    const-string v3, "enableControlView"

    .line 1326
    invoke-interface {p2, p3, v3, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 1330
    new-instance v3, Landroidx/media2/widget/MediaControlView;

    invoke-direct {v3, p1}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    .line 3655
    iput-boolean v1, v3, Landroidx/media2/widget/MediaControlView;->b:Z

    .line 1332
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/m$a;

    invoke-virtual {p0, p1, v3}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-nez p2, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    const-string p1, "viewType"

    .line 1337
    invoke-interface {p2, p3, p1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_2
    if-nez p1, :cond_6

    .line 1344
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/s;->setVisibility(I)V

    .line 1345
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    invoke-virtual {p1, v2}, Landroidx/media2/widget/r;->setVisibility(I)V

    .line 1346
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    .line 1351
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    invoke-virtual {p1, v2}, Landroidx/media2/widget/s;->setVisibility(I)V

    .line 1352
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/r;->setVisibility(I)V

    .line 1353
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    .line 1355
    :cond_7
    :goto_3
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    return-void
.end method

.method private static a(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    move-object p0, p2

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-object p2

    :cond_1
    return-object p0
.end method

.method private a()V
    .locals 3

    .line 667
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/k;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    .line 668
    new-instance v1, Landroidx/media2/widget/VideoView$3;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/VideoView$3;-><init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/a;)V

    .line 682
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/b;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 668
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/common/MediaItem;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 10587
    iget v2, p0, Landroidx/media2/widget/VideoView;->k:I

    if-lez v2, :cond_0

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 10590
    :cond_0
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-virtual {v2}, Landroidx/media2/widget/k;->n()Landroidx/media2/common/VideoSize;

    move-result-object v2

    .line 11074
    iget v3, v2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v3, :cond_1

    .line 12066
    iget v3, v2, Landroidx/media2/common/VideoSize;->a:I

    if-lez v3, :cond_1

    .line 10592
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video track count is zero, but it renders video. size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13066
    iget v4, v2, Landroidx/media2/common/VideoSize;->a:I

    .line 10593
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13074
    iget v2, v2, Landroidx/media2/common/VideoSize;->b:I

    .line 10593
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoView"

    .line 10592
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 9600
    iget v2, p0, Landroidx/media2/widget/VideoView;->l:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 627
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {v2, v1}, Landroidx/media2/widget/j;->setVisibility(I)V

    .line 629
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    .line 630
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 634
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroidx/media2/widget/l$d;->media2_widget_ic_default_album_image:I

    .line 633
    invoke-static {v4, v5}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v5, "android.media.metadata.ALBUM_ART"

    .line 13689
    invoke-virtual {p1, v5}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13690
    invoke-virtual {p1, v5}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    .line 13693
    invoke-static {v3}, Landroidx/j/a/b;->a(Landroid/graphics/Bitmap;)Landroidx/j/a/b$a;

    move-result-object v4

    .line 13694
    new-instance v5, Landroidx/media2/widget/VideoView$4;

    invoke-direct {v5, p0}, Landroidx/media2/widget/VideoView$4;-><init>(Landroidx/media2/widget/VideoView;)V

    .line 13865
    new-instance v6, Landroidx/j/a/b$a$1;

    invoke-direct {v6, v4, v5}, Landroidx/j/a/b$a$1;-><init>(Landroidx/j/a/b$a;Landroidx/j/a/b$c;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v4, v4, Landroidx/j/a/b$a;->b:Landroid/graphics/Bitmap;

    aput-object v4, v0, v1

    .line 13881
    invoke-virtual {v6, v5, v0}, Landroidx/j/a/b$a$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13701
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 13703
    :cond_5
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Landroidx/media2/widget/l$b;->media2_widget_music_view_default_background:I

    invoke-static {v1, v3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media2/widget/j;->setBackgroundColor(I)V

    .line 635
    :goto_4
    sget v0, Landroidx/media2/widget/l$g;->mcv2_music_title_unknown_text:I

    .line 636
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.metadata.TITLE"

    .line 635
    invoke-static {p1, v1, v0}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    sget v1, Landroidx/media2/widget/l$g;->mcv2_music_artist_unknown_text:I

    .line 638
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    .line 637
    invoke-static {p1, v2, v1}, Landroidx/media2/widget/VideoView;->a(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 640
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {v1, v4}, Landroidx/media2/widget/j;->a(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/j;->a(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/j;->b(Ljava/lang/String;)V

    return-void

    .line 644
    :cond_6
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/media2/widget/j;->setVisibility(I)V

    .line 645
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/j;->a(Landroid/graphics/drawable/Drawable;)V

    .line 646
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/j;->a(Ljava/lang/String;)V

    .line 647
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->i:Landroidx/media2/widget/j;

    invoke-virtual {p1, v3}, Landroidx/media2/widget/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method final a(Landroidx/media2/widget/k;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/k;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 604
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->m:Ljava/util/Map;

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Landroidx/media2/widget/VideoView;->k:I

    .line 606
    iput v0, p0, Landroidx/media2/widget/VideoView;->l:I

    .line 607
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_3

    .line 608
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 609
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 9126
    iget v3, v3, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 611
    iget v1, p0, Landroidx/media2/widget/VideoView;->k:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->k:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 613
    iget v1, p0, Landroidx/media2/widget/VideoView;->l:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->l:I

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    .line 615
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->n:Landroidx/media2/widget/o;

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->a()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media2/widget/o;->a(Landroid/media/MediaFormat;)Landroidx/media2/widget/p;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 617
    iget-object v3, p0, Landroidx/media2/widget/VideoView;->m:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/media2/widget/k;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method

.method final a(Z)V
    .locals 4

    .line 546
    invoke-super {p0, p1}, Landroidx/media2/widget/m;->a(Z)V

    .line 547
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    invoke-interface {p1, v0}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    return-void

    :cond_1
    const-string p1, "VideoView"

    if-eqz v0, :cond_5

    .line 8102
    iget-object v1, v0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    .line 8654
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/k;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/a;

    .line 8655
    invoke-interface {v0}, Landroidx/media2/common/a;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "calling setSurface(null) was not successful. ResultCode: "

    .line 8657
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    const-string v1, "calling setSurface(null) was not successful."

    .line 8661
    invoke-static {p1, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_5
    :goto_2
    const-string v0, "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected."

    .line 555
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroidx/media2/widget/m;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.media2.widget.VideoView"

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 538
    invoke-super {p0}, Landroidx/media2/widget/m;->onAttachedToWindow()V

    .line 539
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroidx/media2/widget/k;->a()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 565
    invoke-super {p0}, Landroidx/media2/widget/m;->onDetachedFromWindow()V

    .line 566
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroidx/media2/widget/k;->b()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onVisibilityAggregated(Z)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroidx/media2/widget/m;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public setMediaControlView(Landroidx/media2/widget/MediaControlView;J)V
    .locals 2

    .line 446
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0, v0}, Landroidx/media2/widget/VideoView;->removeView(Landroid/view/View;)V

    .line 448
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    .line 5655
    iput-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->b:Z

    .line 450
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/m$a;

    invoke-virtual {p0, p1, v0}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 6655
    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->b:Z

    .line 453
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    .line 7633
    iput-wide p2, p1, Landroidx/media2/widget/MediaControlView;->m:J

    .line 456
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz p1, :cond_2

    .line 457
    iget-object p1, p1, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz p1, :cond_1

    .line 458
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    iget-object p2, p2, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/session/MediaController;)V

    return-void

    .line 459
    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_2

    .line 460
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    iget-object p2, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    iget-object p2, p2, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/common/SessionPlayer;)V

    :cond_2
    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .locals 3

    const-string v0, "controller must not be null"

    .line 375
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroidx/media2/widget/k;->b()V

    .line 380
    :cond_0
    new-instance v0, Landroidx/media2/widget/k;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/b;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$b;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$b;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/k;-><init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Landroidx/media2/widget/k$b;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    .line 382
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->a()V

    .line 4084
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/widget/i;->ah:Z

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-interface {v0, v1}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0}, Landroidx/media2/widget/VideoView;->a()V

    .line 391
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    .line 392
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/session/MediaController;)V

    :cond_3
    return-void
.end method

.method public setOnViewTypeChangedListener(Landroidx/media2/widget/VideoView$a;)V
    .locals 0

    .line 533
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->b:Landroidx/media2/widget/VideoView$a;

    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 3

    const-string v0, "player must not be null"

    .line 412
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0}, Landroidx/media2/widget/k;->b()V

    .line 417
    :cond_0
    new-instance v0, Landroidx/media2/widget/k;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/b;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$b;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$b;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/k;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/widget/k$b;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    .line 419
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->a()V

    .line 5084
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/widget/i;->ah:Z

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-interface {v0, v1}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    goto :goto_0

    .line 425
    :cond_2
    invoke-direct {p0}, Landroidx/media2/widget/VideoView;->a()V

    .line 428
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->a(Landroidx/media2/common/SessionPlayer;)V

    :cond_3
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    invoke-interface {v0}, Landroidx/media2/widget/t;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setViewType with the same type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is ignored."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 498
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->e:Landroidx/media2/widget/s;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 501
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Landroidx/media2/widget/r;

    .line 506
    :goto_0
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    .line 8084
    iget-boolean v0, p0, Landroidx/media2/widget/i;->ah:Z

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-interface {p1, v0}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    .line 510
    :cond_2
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 511
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestLayout()V

    return-void

    .line 503
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown view type: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic shouldDelayChildPressedState()Z
    .locals 1

    .line 161
    invoke-super {p0}, Landroidx/media2/widget/m;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
