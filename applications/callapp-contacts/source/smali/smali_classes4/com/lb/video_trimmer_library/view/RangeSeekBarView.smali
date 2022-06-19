.class public Lcom/lb/video_trimmer_library/view/RangeSeekBarView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;,
        Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u0001:\u0002LMB#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0010J\u0010\u0010\'\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010(\u001a\u00020\u0007H\u0002J(\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020!2\u0006\u0010,\u001a\u00020!2\u0006\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\rH\u0002J\u0010\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0013H\u0002J\u0010\u00101\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0007H\u0002J\u0006\u00102\u001a\u00020%J\u0008\u00103\u001a\u00020\u0007H\u0017J\u0008\u00104\u001a\u00020\u0013H\u0016J\u0010\u00105\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J \u00106\u001a\u00020%2\u0006\u00107\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u00109\u001a\u00020%2\u0006\u0010:\u001a\u00020;H\u0014J\u0018\u0010<\u001a\u00020%2\u0006\u0010=\u001a\u00020\u00072\u0006\u0010>\u001a\u00020\u0007H\u0014J \u0010?\u001a\u00020%2\u0006\u00107\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010@\u001a\u00020%2\u0006\u00107\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J \u0010A\u001a\u00020%2\u0006\u00107\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013H\u0002J\u0010\u0010B\u001a\u00020\r2\u0006\u0010C\u001a\u00020DH\u0016J\u0018\u0010E\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u0013H\u0002J\u0018\u0010G\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u0013H\u0002J\u0018\u0010I\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u0013H\u0002J\u0016\u0010K\u001a\u00020%2\u0006\u0010(\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0013R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\"R\u000e\u0010#\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "currentThumb",
        "edgePaint",
        "Landroid/graphics/Paint;",
        "firstRun",
        "",
        "listeners",
        "Ljava/util/HashSet;",
        "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;",
        "Lkotlin/collections/HashSet;",
        "maxWidth",
        "",
        "pixelRangeMax",
        "pixelRangeMin",
        "scaleRangeMax",
        "shadowPaint",
        "strokePaint",
        "thumbTouchExtraMultiplier",
        "thumbTouchExtraMultiplier$annotations",
        "()V",
        "thumbWidth",
        "getThumbWidth",
        "()I",
        "thumbs",
        "",
        "Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;",
        "[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$Thumb;",
        "viewWidth",
        "addOnRangeSeekBarListener",
        "",
        "listener",
        "calculateThumbPos",
        "index",
        "calculateThumbValue",
        "checkPositionThumb",
        "thumbLeft",
        "thumbRight",
        "dx",
        "isLeftMove",
        "getClosestThumb",
        "xPos",
        "getThumbValue",
        "initMaxWidth",
        "initShadowColor",
        "initThumbTouchExtraMultiplier",
        "initThumbWidth",
        "onCreate",
        "rangeSeekBarView",
        "value",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onSeek",
        "onSeekStart",
        "onSeekStop",
        "onTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "pixelToScale",
        "pixelValue",
        "scaleToPixel",
        "scaleValue",
        "setThumbPos",
        "pos",
        "setThumbValue",
        "Thumb",
        "ThumbType",
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
.field public final a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/lb/video_trimmer_library/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:F

.field public final d:I

.field private final e:F

.field private f:I

.field private g:F

.field private h:F

.field private final i:F

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 45
    iput p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->e:F

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    .line 46
    new-instance p3, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v1

    invoke-direct {p3, v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;-><init>(I)V

    const/4 v1, 0x0

    aput-object p3, p2, v1

    new-instance p3, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v1

    invoke-direct {p3, v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;-><init>(I)V

    const/4 v1, 0x1

    aput-object p3, p2, v1

    iput-object p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    .line 47
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->b:Ljava/util/HashSet;

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48084
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "context.resources"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41d80000    # 27.0f

    .line 48081
    invoke-static {v1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 48085
    invoke-static {p2, v1}, Lkotlin/f/d;->c(II)I

    move-result p2

    .line 49
    iput p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    const/high16 p2, 0x42c80000    # 100.0f

    .line 53
    iput p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->i:F

    .line 54
    iput-boolean v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->j:Z

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->k:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->l:Landroid/graphics/Paint;

    .line 57
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->m:Landroid/graphics/Paint;

    .line 58
    sget-object v3, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v3}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    .line 62
    invoke-virtual {p0, v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->setFocusable(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->setFocusableInTouchMode(Z)V

    .line 64
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v3, -0x4f000000

    .line 65
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, -0x1

    .line 70
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(I)V
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length v1, v0

    if-ge p1, v1, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 250
    aget-object v0, v0, p1

    .line 40328
    iget v1, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    .line 41227
    iget v3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    div-float/2addr v1, v3

    if-nez p1, :cond_1

    .line 41229
    iget v4, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    div-float/2addr v4, v2

    mul-float v4, v4, v2

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    goto :goto_1

    :cond_1
    sub-float v4, v2, v1

    .line 41232
    iget v5, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    mul-float v4, v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    .line 41327
    :goto_1
    iput v1, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->a:F

    .line 42327
    iget v0, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->a:F

    .line 43315
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->b:Ljava/util/HashSet;

    check-cast v1, Ljava/lang/Iterable;

    .line 43336
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lb/video_trimmer_library/a/b;

    .line 43315
    invoke-interface {v2, p0, p1, v0}, Lcom/lb/video_trimmer_library/a/b;->a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;IF)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final a(IF)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    aget-object v0, v0, p1

    .line 47328
    iput p2, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 276
    invoke-direct {p0, p1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(I)V

    .line 278
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->invalidate()V

    return-void
.end method

.method private final a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;FZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    .line 30328
    iget p4, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 31328
    iget v0, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr v0, p3

    sub-float/2addr p4, v0

    .line 214
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->c:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    .line 32328
    iget p1, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr p1, p3

    .line 215
    iget p3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->c:F

    add-float/2addr p1, p3

    .line 33328
    iput p1, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 216
    sget-object p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {p1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result p1

    .line 34328
    iget p2, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(IF)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    cmpl-float p4, p3, v0

    if-lez p4, :cond_1

    .line 35328
    iget p4, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr p4, p3

    .line 36328
    iget v0, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    sub-float/2addr p4, v0

    .line 219
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->c:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_1

    .line 37328
    iget p2, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr p2, p3

    .line 220
    iget p3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->c:F

    sub-float/2addr p2, p3

    .line 38328
    iput p2, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 221
    sget-object p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {p2}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result p2

    .line 39328
    iget p1, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 221
    invoke-direct {p0, p2, p1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(IF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->b:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 340
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lb/video_trimmer_library/a/b;

    .line 323
    invoke-interface {v1, p1}, Lcom/lb/video_trimmer_library/a/b;->c(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 114
    :cond_1
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    .line 4326
    iget v5, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->d:I

    .line 115
    sget-object v6, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v6}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 4328
    iget v4, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 116
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 117
    iget v5, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->g:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 118
    iget v5, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v7, v5

    const/4 v8, 0x0

    int-to-float v5, v5

    add-float v9, v4, v5

    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getHeight()I

    move-result v4

    int-to-float v10, v4

    iget-object v11, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->k:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 5328
    :cond_2
    iget v4, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 120
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    sub-float v7, v4, v5

    .line 121
    iget v4, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    cmpg-float v4, v7, v4

    if-gez v4, :cond_3

    const/4 v8, 0x0

    .line 122
    iget v4, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->f:I

    iget v5, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    sub-int/2addr v4, v5

    int-to-float v9, v4

    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getHeight()I

    move-result v4

    int-to-float v10, v4

    iget-object v11, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->k:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 6328
    iget v0, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 127
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v1, v1

    add-float v5, v0, v1

    const/4 v6, 0x0

    .line 129
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 7328
    iget v0, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 129
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float v7, v0, v1

    .line 130
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 131
    iget-object v9, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->l:Landroid/graphics/Paint;

    move-object v4, p1

    .line 126
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x40c00000    # 6.0f

    .line 134
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v2}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    .line 8328
    iget v1, v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 136
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 137
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 139
    iget-object v4, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->m:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    sget-object v2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v2}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v2

    aget-object v1, v1, v2

    .line 9328
    iget v1, v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 142
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 143
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 145
    iget-object v3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->m:Landroid/graphics/Paint;

    .line 141
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 94
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 95
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->f:I

    const/4 p2, 0x0

    .line 96
    iput p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->g:F

    .line 97
    iget p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    .line 98
    iget-boolean p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->j:Z

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 100
    iget v3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->i:F

    int-to-float v4, v1

    mul-float v3, v3, v4

    .line 1327
    iput v3, v2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->a:F

    .line 101
    iget v3, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    mul-float v3, v3, v4

    .line 1328
    iput v3, v2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3311
    :cond_0
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->b:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/Iterable;

    .line 3334
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lb/video_trimmer_library/a/b;

    .line 3311
    invoke-interface {p2, p0}, Lcom/lb/video_trimmer_library/a/b;->a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V

    goto :goto_1

    .line 105
    :cond_1
    iput-boolean v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->j:Z

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v3, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return v2

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    iget v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    aget-object v4, p1, v1

    .line 175
    sget-object v5, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v5}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v5

    if-ne v1, v5, :cond_1

    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->RIGHT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    :goto_0
    invoke-virtual {v1}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v1

    aget-object p1, p1, v1

    .line 15329
    iget v1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->c:F

    sub-float v1, v0, v1

    .line 16328
    iget v5, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr v5, v1

    .line 180
    iget v6, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    if-nez v6, :cond_4

    .line 181
    iget v2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 17328
    iget v6, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_2

    .line 18328
    iget p1, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 181
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 19328
    iput p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    goto :goto_1

    .line 182
    :cond_2
    iget v2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->g:F

    cmpg-float v5, v5, v2

    if-gtz v5, :cond_3

    .line 20328
    iput v2, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    goto :goto_1

    .line 185
    :cond_3
    invoke-direct {p0, v4, p1, v1, v3}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;FZ)V

    .line 21328
    iget p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr p1, v1

    .line 22328
    iput p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 22329
    iput v0, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->c:F

    goto :goto_1

    .line 23328
    :cond_4
    iget v6, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 192
    iget v7, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_5

    .line 24328
    iget p1, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 192
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 25328
    iput p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    goto :goto_1

    .line 193
    :cond_5
    iget v6, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    .line 26328
    iput v6, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    goto :goto_1

    .line 196
    :cond_6
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;FZ)V

    .line 27328
    iget p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    add-float/2addr p1, v1

    .line 28328
    iput p1, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 28329
    iput v0, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->c:F

    .line 203
    :goto_1
    iget p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    .line 29328
    iget v0, v4, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(IF)V

    .line 205
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->invalidate()V

    return v3

    .line 166
    :cond_7
    iget p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    if-ne p1, v1, :cond_8

    return v2

    .line 169
    :cond_8
    invoke-virtual {p0, p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V

    return v3

    .line 10282
    :cond_9
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length p1, p1

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_b

    const/4 v8, -0x1

    goto :goto_5

    .line 10285
    :cond_b
    sget-object p1, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/k;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 10286
    iget v4, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    .line 10288
    iget-object v5, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_3
    if-ge v7, v6, :cond_e

    aget-object v9, v5, v7

    .line 10326
    iget v10, v9, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->d:I

    .line 10289
    sget-object v11, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->LEFT:Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;

    invoke-virtual {v11}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$b;->getIndex()I

    move-result v11

    if-ne v10, v11, :cond_c

    .line 10328
    iget v10, v9, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    goto :goto_4

    .line 11328
    :cond_c
    iget v10, v9, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 10289
    iget v11, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    .line 10292
    :goto_4
    iget v11, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v12, v11

    iget v13, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->e:F

    mul-float v12, v12, v13

    sub-float v12, v10, v12

    int-to-float v11, v11

    mul-float v11, v11, v13

    add-float/2addr v11, v10

    cmpl-float v12, v4, v12

    if-ltz v12, :cond_d

    cmpg-float v11, v4, v11

    if-gtz v11, :cond_d

    sub-float/2addr v10, v4

    .line 10295
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v11, v10, p1

    if-gez v11, :cond_d

    .line 12326
    iget v8, v9, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->d:I

    move p1, v10

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 157
    :cond_e
    :goto_5
    iput v8, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->n:I

    if-ne v8, v1, :cond_f

    return v2

    .line 160
    :cond_f
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    aget-object p1, p1, v8

    .line 12329
    iput v0, p1, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->c:F

    .line 14319
    iget-object p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->b:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/Iterable;

    .line 14338
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lb/video_trimmer_library/a/b;

    .line 14319
    invoke-interface {v0, p0}, Lcom/lb/video_trimmer_library/a/b;->b(Lcom/lb/video_trimmer_library/view/RangeSeekBarView;)V

    goto :goto_6

    :cond_10
    return v3
.end method

.method public final setThumbValue(IF)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    aget-object v0, v0, p1

    .line 44327
    iput p2, v0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->a:F

    .line 45257
    iget-object p2, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->a:[Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;

    array-length v0, p2

    if-ge p1, v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 45258
    aget-object p2, p2, p1

    .line 45327
    iget v0, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->a:F

    .line 46238
    iget v1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->h:F

    mul-float v1, v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    if-nez p1, :cond_1

    .line 46240
    iget p1, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float p1, p1

    mul-float v0, v0, p1

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    goto :goto_1

    :cond_1
    sub-float p1, v2, v0

    .line 46243
    iget v0, p0, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->d:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 46328
    :goto_1
    iput v1, p2, Lcom/lb/video_trimmer_library/view/RangeSeekBarView$a;->b:F

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/lb/video_trimmer_library/view/RangeSeekBarView;->invalidate()V

    return-void
.end method
