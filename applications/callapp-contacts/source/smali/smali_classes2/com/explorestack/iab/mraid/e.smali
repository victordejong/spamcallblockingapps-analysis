.class public final Lcom/explorestack/iab/mraid/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/Rect;

.field final b:Landroid/graphics/Rect;

.field final c:Landroid/graphics/Rect;

.field final d:Landroid/graphics/Rect;

.field final e:Landroid/graphics/Rect;

.field final f:Landroid/graphics/Rect;

.field final g:Landroid/graphics/Rect;

.field final h:Landroid/graphics/Rect;

.field private final i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/explorestack/iab/mraid/e;->i:F

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->a:Landroid/graphics/Rect;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->b:Landroid/graphics/Rect;

    .line 41
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->c:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->d:Landroid/graphics/Rect;

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->e:Landroid/graphics/Rect;

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->f:Landroid/graphics/Rect;

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->g:Landroid/graphics/Rect;

    .line 48
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/e;->h:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .line 53
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/explorestack/iab/mraid/e;->i:F

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->a(FF)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/explorestack/iab/mraid/e;->i:F

    .line 54
    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->a(FF)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/explorestack/iab/mraid/e;->i:F

    .line 55
    invoke-static {v2, v3}, Lcom/explorestack/iab/utils/Utils;->a(FF)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget v3, p0, Lcom/explorestack/iab/mraid/e;->i:F

    .line 56
    invoke-static {p1, v3}, Lcom/explorestack/iab/utils/Utils;->a(FF)I

    move-result p1

    .line 53
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method final a(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Z
    .locals 2

    .line 151
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, p4, :cond_1

    add-int v0, p3, p5

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_1

    add-int v0, p4, p6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    add-int/2addr p5, p3

    add-int/2addr p6, p4

    .line 153
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/mraid/e;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method
