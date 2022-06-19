.class public Lcom/lb/video_trimmer_library/view/TimeLineView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0015J(\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0014J$\u0010\u001d\u001a\u00020\u00122\u001a\u0010\u001e\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\u000cH\u0002J\u000e\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0010R(\u0010\t\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nj\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/view/TimeLineView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bitmapList",
        "Ljava/util/ArrayList;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/ArrayList;",
        "bitmapList$annotations",
        "()V",
        "videoUri",
        "Landroid/net/Uri;",
        "getBitmap",
        "",
        "viewWidth",
        "viewHeight",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldW",
        "oldH",
        "returnBitmaps",
        "thumbnailList",
        "setVideo",
        "data",
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
.field private a:Landroid/net/Uri;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lb/video_trimmer_library/view/TimeLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lb/video_trimmer_library/view/TimeLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/lb/video_trimmer_library/view/TimeLineView;)Landroid/net/Uri;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public static final synthetic a(Lcom/lb/video_trimmer_library/view/TimeLineView;Ljava/util/ArrayList;)V
    .locals 5

    .line 1104
    sget-object v0, Lcom/lb/video_trimmer_library/b/d;->b:Lcom/lb/video_trimmer_library/b/d;

    new-instance v0, Lcom/lb/video_trimmer_library/view/TimeLineView$b;

    invoke-direct {v0, p0, p1}, Lcom/lb/video_trimmer_library/view/TimeLineView$b;-><init>(Lcom/lb/video_trimmer_library/view/TimeLineView;Ljava/util/ArrayList;)V

    check-cast v0, Ljava/lang/Runnable;

    const-string p0, ""

    const-string p1, "id"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "task"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2055
    invoke-static {p0, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 2056
    sget-object p0, Lcom/lb/video_trimmer_library/b/d;->a:Lcom/lb/video_trimmer_library/b/d$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lb/video_trimmer_library/b/d$a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2059
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 2060
    sget-object p1, Lcom/lb/video_trimmer_library/b/d;->a:Lcom/lb/video_trimmer_library/b/d$a;

    invoke-static {p0}, Lcom/lb/video_trimmer_library/b/d;->a(Ljava/lang/String;)Lcom/lb/video_trimmer_library/b/d$b;

    move-result-object p0

    invoke-virtual {p1, v0, p0, v3, v4}, Lcom/lb/video_trimmer_library/b/d$a;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static final synthetic b(Lcom/lb/video_trimmer_library/view/TimeLineView;)Ljava/util/ArrayList;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->b:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->getHeight()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    int-to-float v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 119
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_3

    int-to-float p1, p1

    int-to-float p3, p2

    div-float/2addr p1, p3

    float-to-double p3, p1

    .line 1058
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int v2, p3

    .line 1059
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1060
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1062
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/TimeLineView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1080093

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 1061
    :cond_0
    invoke-static {p1, p2, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v2, :cond_1

    .line 1065
    iget-object p3, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1068
    :cond_2
    sget-object p1, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    const-string p3, ""

    invoke-virtual {p1, p3}, Lcom/lb/video_trimmer_library/b/a;->a(Ljava/lang/String;)V

    .line 1069
    sget-object p1, Lcom/lb/video_trimmer_library/b/a;->a:Lcom/lb/video_trimmer_library/b/a;

    new-instance p3, Lcom/lb/video_trimmer_library/view/TimeLineView$a;

    const-wide/16 v5, 0x0

    const-string v4, ""

    const-string v7, ""

    move-object v0, p3

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/lb/video_trimmer_library/view/TimeLineView$a;-><init>(Lcom/lb/video_trimmer_library/view/TimeLineView;IILjava/lang/String;JLjava/lang/String;)V

    check-cast p3, Lcom/lb/video_trimmer_library/b/a$a;

    invoke-virtual {p1, p3}, Lcom/lb/video_trimmer_library/b/a;->a(Lcom/lb/video_trimmer_library/b/a$a;)V

    :cond_3
    return-void
.end method

.method public final setVideo(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/lb/video_trimmer_library/view/TimeLineView;->a:Landroid/net/Uri;

    return-void
.end method
