.class Landroidx/recyclerview/widget/p$2;
.super Landroidx/recyclerview/widget/h;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/p;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/recyclerview/widget/p;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/p;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Landroidx/recyclerview/widget/p$2;->f:Landroidx/recyclerview/widget/p;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 246
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Landroidx/recyclerview/widget/p$2;->f:Landroidx/recyclerview/widget/p;

    iget-object v0, v0, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/p$2;->f:Landroidx/recyclerview/widget/p;

    iget-object v1, p0, Landroidx/recyclerview/widget/p$2;->f:Landroidx/recyclerview/widget/p;

    iget-object v1, v1, Landroidx/recyclerview/widget/p;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/p;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I

    move-result-object v0

    .line 236
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 237
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 238
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/p$2;->a(I)I

    move-result v2

    .line 239
    if-lez v2, :cond_0

    .line 240
    iget-object v3, p0, Landroidx/recyclerview/widget/p$2;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method
