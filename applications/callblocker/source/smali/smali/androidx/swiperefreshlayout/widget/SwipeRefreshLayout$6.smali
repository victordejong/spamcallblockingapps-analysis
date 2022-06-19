.class Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 1120
    .line 1122
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-boolean v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:Z

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:I

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1127
    :goto_0
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:I

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v2, v2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 1128
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:Landroidx/swiperefreshlayout/widget/a;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/a;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1129
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 1130
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:Landroidx/swiperefreshlayout/widget/b;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/b;->b(F)V

    .line 1131
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$6;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:I

    goto :goto_0
.end method
