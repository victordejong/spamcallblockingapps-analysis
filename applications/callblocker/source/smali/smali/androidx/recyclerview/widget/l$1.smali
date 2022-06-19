.class Landroidx/recyclerview/widget/l$1;
.super Landroidx/recyclerview/widget/h;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/l;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/recyclerview/widget/l;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/l;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Landroidx/recyclerview/widget/l$1;->f:Landroidx/recyclerview/widget/l;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 187
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Landroidx/recyclerview/widget/l$1;->f:Landroidx/recyclerview/widget/l;

    iget-object v1, p0, Landroidx/recyclerview/widget/l$1;->f:Landroidx/recyclerview/widget/l;

    iget-object v1, v1, Landroidx/recyclerview/widget/l;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/l;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 178
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 179
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/l$1;->a(I)I

    move-result v2

    .line 180
    if-lez v2, :cond_0

    .line 181
    iget-object v3, p0, Landroidx/recyclerview/widget/l$1;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected b(I)I
    .locals 2

    .prologue
    .line 192
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/h;->b(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
