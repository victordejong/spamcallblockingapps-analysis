.class Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;
.super Landroidx/recyclerview/widget/g;
.source "StickyHeaderLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic f:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

.field private final g:F

.field private final h:F


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;Landroid/content/Context;I)V
    .locals 0

    .line 867
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->f:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    .line 868
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    int-to-float p1, p3

    .line 869
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->g:F

    .line 870
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->a(Landroid/util/DisplayMetrics;)F

    move-result p1

    const/16 p2, 0x2710

    if-ge p3, p2, :cond_0

    .line 872
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x447a0000    # 1000.0f

    :goto_0
    iput p1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->h:F

    return-void
.end method


# virtual methods
.method protected b(I)I
    .locals 1

    int-to-float p1, p1

    .line 882
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->g:F

    div-float/2addr p1, v0

    .line 883
    iget v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->h:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 2

    .line 877
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager$c;->f:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    invoke-static {v1, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->a(Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
