.class Lcom/a/a/a/a/c/m;
.super Lcom/a/a/a/a/c/a;
.source "SwapTargetItemOperator.java"


# static fields
.field private static final o:Landroidx/core/g/z;


# instance fields
.field private c:Landroidx/recyclerview/widget/RecyclerView$w;

.field private d:Landroid/view/animation/Interpolator;

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private j:Z

.field private k:F

.field private l:F

.field private m:Lcom/a/a/a/a/c/i;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/a/a/a/a/c/m$1;

    invoke-direct {v0}, Lcom/a/a/a/a/c/m$1;-><init>()V

    sput-object v0, Lcom/a/a/a/a/c/m;->o:Landroidx/core/g/z;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/i;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/a;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/m;->g:Landroid/graphics/Rect;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/m;->h:Landroid/graphics/Rect;

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/m;->i:Landroid/graphics/Rect;

    .line 69
    iput-object p3, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    .line 71
    iget-object p1, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    iget-object p2, p0, Lcom/a/a/a/a/c/m;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    iget-object p3, p0, Lcom/a/a/a/a/c/m;->i:Landroid/graphics/Rect;

    .line 71
    invoke-static {p1, p2, p3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method

.method private static a(FF)F
    .locals 2

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr p0, v0

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p1

    add-float/2addr p0, v0

    sub-float v0, p0, p1

    .line 80
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;)F
    .locals 6

    .line 136
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v1

    .line 139
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result p2

    .line 141
    iget-object v2, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/a/c/m;->g:Landroid/graphics/Rect;

    .line 141
    invoke-static {v2, v0, v3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 143
    iget-object v2, p0, Lcom/a/a/a/a/c/m;->h:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/a/a/a/a/d/a;->a(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 145
    iget-object v2, p0, Lcom/a/a/a/a/c/m;->h:Landroid/graphics/Rect;

    .line 146
    iget-object v3, p0, Lcom/a/a/a/a/c/m;->g:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 150
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/a/a/a/a/c/m;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 152
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v2, p0, Lcom/a/a/a/a/c/m;->f:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    if-eqz v4, :cond_1

    int-to-float v2, v4

    div-float/2addr p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    .line 157
    :goto_1
    iget-object v2, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v2

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v2, v4, :cond_3

    if-le v1, p2, :cond_2

    goto :goto_2

    :cond_2
    add-float/2addr p1, v5

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    if-le v1, p2, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    add-float p1, v0, v5

    goto :goto_2

    :cond_5
    move p1, v3

    .line 178
    :goto_2
    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;F)V
    .locals 6

    .line 182
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 184
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result p2

    .line 187
    iget-object v1, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    iget-object v1, v1, Lcom/a/a/a/a/c/i;->h:Landroid/graphics/Rect;

    .line 188
    iget-object v2, p0, Lcom/a/a/a/a/c/m;->i:Landroid/graphics/Rect;

    .line 189
    iget-object v3, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->b:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    .line 190
    iget-object v4, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    iget v4, v4, Lcom/a/a/a/a/c/i;->a:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    .line 192
    iget-object v1, p0, Lcom/a/a/a/a/c/m;->d:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v1, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    int-to-float p1, v3

    mul-float/2addr p3, p1

    .line 200
    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    sub-float/2addr p3, v2

    int-to-float p1, v3

    mul-float/2addr p3, p1

    .line 203
    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_4

    int-to-float p1, v4

    mul-float/2addr p3, p1

    .line 209
    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_4
    sub-float/2addr p3, v2

    int-to-float p1, v4

    mul-float/2addr p3, p1

    .line 212
    invoke-virtual {v0, p3}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 219
    iget-boolean v0, p0, Lcom/a/a/a/a/c/m;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/a/a/a/a/c/m;->j:Z

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/a/a/a/a/c/m;->e:I

    .line 257
    iput p2, p0, Lcom/a/a/a/a/c/m;->f:I

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 94
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroidx/core/g/y;->b()V

    const-wide/16 v1, 0xa

    .line 96
    invoke-virtual {v0, v1, v2}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    move-result-object v0

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a/c/m;->o:Landroidx/core/g/z;

    .line 99
    invoke-virtual {v0, v1}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroidx/core/g/y;->c()V

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 105
    iget-object p1, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroidx/core/g/y;->b()V

    :cond_2
    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/a/a/a/a/c/m;->n:Z

    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 229
    iget-boolean v0, p0, Lcom/a/a/a/a/c/m;->j:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->d()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 239
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    iget v3, p0, Lcom/a/a/a/a/c/m;->l:F

    invoke-direct {p0, v0, v2, v3}, Lcom/a/a/a/a/c/m;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;F)V

    .line 242
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p0

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/a/a/a/a/c/m;->a(Landroid/view/View;FFFFZ)V

    .line 243
    iput-object v1, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 246
    :cond_2
    iput-object v1, p0, Lcom/a/a/a/a/c/m;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 p1, 0x0

    .line 247
    iput p1, p0, Lcom/a/a/a/a/c/m;->e:I

    .line 248
    iput p1, p0, Lcom/a/a/a/a/c/m;->f:I

    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/a/a/a/a/c/m;->l:F

    .line 250
    iput v0, p0, Lcom/a/a/a/a/c/m;->k:F

    .line 251
    iput-boolean p1, p0, Lcom/a/a/a/a/c/m;->j:Z

    .line 252
    iput-object v1, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    return-void
.end method

.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/a/a/a/a/c/m;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 262
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/m;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 4

    .line 115
    iget-object p1, p0, Lcom/a/a/a/a/c/m;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 116
    iget-object p2, p0, Lcom/a/a/a/a/c/m;->c:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->getItemId()J

    move-result-wide v0

    iget-object p3, p0, Lcom/a/a/a/a/c/m;->m:Lcom/a/a/a/a/c/i;

    iget-wide v2, p3, Lcom/a/a/a/a/c/i;->c:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/m;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;)F

    move-result p3

    iput p3, p0, Lcom/a/a/a/a/c/m;->k:F

    .line 124
    iget-boolean p3, p0, Lcom/a/a/a/a/c/m;->n:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 125
    iput-boolean p3, p0, Lcom/a/a/a/a/c/m;->n:Z

    .line 126
    iget p3, p0, Lcom/a/a/a/a/c/m;->k:F

    iput p3, p0, Lcom/a/a/a/a/c/m;->l:F

    goto :goto_0

    .line 129
    :cond_1
    iget p3, p0, Lcom/a/a/a/a/c/m;->l:F

    iget v0, p0, Lcom/a/a/a/a/c/m;->k:F

    invoke-static {p3, v0}, Lcom/a/a/a/a/c/m;->a(FF)F

    move-result p3

    iput p3, p0, Lcom/a/a/a/a/c/m;->l:F

    .line 132
    :goto_0
    iget p3, p0, Lcom/a/a/a/a/c/m;->l:F

    invoke-direct {p0, p1, p2, p3}, Lcom/a/a/a/a/c/m;->a(Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/recyclerview/widget/RecyclerView$w;F)V

    :cond_2
    :goto_1
    return-void
.end method
