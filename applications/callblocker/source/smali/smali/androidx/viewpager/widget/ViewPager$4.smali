.class Landroidx/viewpager/widget/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroidx/core/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/ViewPager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/ViewPager;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .prologue
    .line 428
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager$4;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 7

    .prologue
    .line 435
    .line 436
    invoke-static {p1, p2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroidx/core/h/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    :goto_0
    return-object v0

    .line 449
    :cond_0
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager$4;->b:Landroid/graphics/Rect;

    .line 450
    invoke-virtual {v0}, Landroidx/core/h/ac;->a()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 451
    invoke-virtual {v0}, Landroidx/core/h/ac;->b()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 452
    invoke-virtual {v0}, Landroidx/core/h/ac;->c()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 453
    invoke-virtual {v0}, Landroidx/core/h/ac;->d()I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 455
    const/4 v1, 0x0

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 456
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager$4;->a:Landroidx/viewpager/widget/ViewPager;

    .line 457
    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Landroidx/core/h/u;->b(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;

    move-result-object v4

    .line 460
    invoke-virtual {v4}, Landroidx/core/h/ac;->a()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {v4}, Landroidx/core/h/ac;->b()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 464
    invoke-virtual {v4}, Landroidx/core/h/ac;->c()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 466
    invoke-virtual {v4}, Landroidx/core/h/ac;->d()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 471
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/core/h/ac;->a(IIII)Landroidx/core/h/ac;

    move-result-object v0

    goto :goto_0
.end method
