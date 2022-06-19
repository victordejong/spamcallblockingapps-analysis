.class abstract Lcom/a/a/a/a/c/b;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "BaseEdgeEffectDecorator.java"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/EdgeEffect;

.field private c:Landroid/widget/EdgeEffect;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/a/a/a/a/c/b;->e:I

    invoke-static {p1, v0, v1}, Lcom/a/a/a/a/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EdgeEffect;I)V

    return-void
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EdgeEffect;I)V
    .locals 5

    .line 177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 178
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 180
    invoke-static {p0}, Lcom/a/a/a/a/c/b;->c(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    sub-int/2addr v1, v2

    :cond_0
    const/4 p0, 0x0

    .line 185
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    move v0, p0

    move p0, v4

    .line 195
    :cond_2
    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;ILandroid/widget/EdgeEffect;)Z
    .locals 4

    .line 63
    invoke-virtual {p3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 68
    invoke-static {p1}, Lcom/a/a/a/a/c/b;->c(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    if-eq p2, v3, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/high16 p2, 0x43340000    # 180.0f

    .line 77
    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_3
    const/high16 p2, 0x42b40000    # 90.0f

    .line 93
    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_6
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 85
    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v1, :cond_7

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p2

    neg-int p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 89
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    :cond_8
    :goto_0
    invoke-virtual {p3, p0}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    .line 104
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p1
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/a/a/a/a/c/b;->f:I

    invoke-static {p1, v0, v1}, Lcom/a/a/a/a/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/EdgeEffect;I)V

    return-void
.end method

.method private static c(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    .line 199
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->getClipToPadding()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public a()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/a/a/a/a/c/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/b;->a(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/b;->e:I

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/c/b;->a(I)I

    move-result v1

    iput v1, p0, Lcom/a/a/a/a/c/b;->f:I

    .line 115
    iget-object v1, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 116
    iput-boolean v0, p0, Lcom/a/a/a/a/c/b;->d:Z

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/a/a/a/a/c/b;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 131
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V

    .line 132
    iget-object p1, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 148
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 153
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 157
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public b(F)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/a/a/a/a/c/b;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 138
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, p1, v1}, Landroidx/core/widget/d;->a(Landroid/widget/EdgeEffect;FF)V

    .line 139
    iget-object p1, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/a/a/a/a/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 205
    iget-object v0, p0, Lcom/a/a/a/a/c/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 2

    .line 49
    iget-object p3, p0, Lcom/a/a/a/a/c/b;->b:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 50
    iget v1, p0, Lcom/a/a/a/a/c/b;->e:I

    invoke-static {p1, p2, v1, p3}, Lcom/a/a/a/a/c/b;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;ILandroid/widget/EdgeEffect;)Z

    move-result p3

    or-int/2addr v0, p3

    .line 53
    :cond_0
    iget-object p3, p0, Lcom/a/a/a/a/c/b;->c:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_1

    .line 54
    iget v1, p0, Lcom/a/a/a/a/c/b;->f:I

    invoke-static {p1, p2, v1, p3}, Lcom/a/a/a/a/c/b;->a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;ILandroid/widget/EdgeEffect;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 58
    invoke-static {p2}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    :cond_2
    return-void
.end method
