.class Landroidx/swiperefreshlayout/widget/b$a;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/swiperefreshlayout/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/graphics/RectF;

.field final b:Landroid/graphics/Paint;

.field final c:Landroid/graphics/Paint;

.field final d:Landroid/graphics/Paint;

.field e:F

.field f:F

.field g:F

.field h:F

.field i:[I

.field j:I

.field k:F

.field l:F

.field m:F

.field n:Z

.field o:Landroid/graphics/Path;

.field p:F

.field q:F

.field r:I

.field s:I

.field t:I

.field u:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->a:Landroid/graphics/RectF;

    .line 624
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    .line 625
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    .line 626
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->d:Landroid/graphics/Paint;

    .line 628
    iput v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->e:F

    .line 629
    iput v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->f:F

    .line 630
    iput v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->g:F

    .line 631
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    .line 643
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    .line 647
    const/16 v0, 0xff

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->t:I

    .line 651
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 652
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 653
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 655
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 656
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 658
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->i:[I

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/b$a;->b()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 842
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    .line 843
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 844
    return-void
.end method

.method a(FF)V
    .locals 1

    .prologue
    .line 668
    float-to-int v0, p1

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->r:I

    .line 669
    float-to-int v0, p2

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->s:I

    .line 670
    return-void
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 778
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->u:I

    .line 779
    return-void
.end method

.method a(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 724
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->n:Z

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 726
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    .line 727
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 731
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v6

    .line 732
    iget v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->r:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    .line 737
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 738
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->r:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 739
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->r:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v6

    iget v4, p0, Landroidx/swiperefreshlayout/widget/b$a;->s:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v0, v3

    sub-float/2addr v0, v1

    .line 742
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    .line 741
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 743
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 745
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 746
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    add-float v0, p2, p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 749
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 748
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 750
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 753
    :cond_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 692
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->a:Landroid/graphics/RectF;

    .line 693
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->q:F

    iget v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    .line 694
    iget v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->q:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 696
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    iget v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->r:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v0, v2

    .line 699
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 700
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 701
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    .line 702
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    .line 699
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 704
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->e:F

    iget v2, p0, Landroidx/swiperefreshlayout/widget/b$a;->g:F

    add-float/2addr v0, v2

    mul-float v2, v0, v6

    .line 705
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->f:F

    iget v3, p0, Landroidx/swiperefreshlayout/widget/b$a;->g:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v6

    .line 706
    sub-float v3, v0, v2

    .line 708
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/swiperefreshlayout/widget/b$a;->u:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 709
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/swiperefreshlayout/widget/b$a;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 712
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->h:F

    div-float/2addr v0, v7

    .line 713
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 714
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    iget-object v7, p0, Landroidx/swiperefreshlayout/widget/b$a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 716
    neg-float v4, v0

    neg-float v0, v0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 718
    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 720
    invoke-virtual {p0, p1, v2, v3, v1}, Landroidx/swiperefreshlayout/widget/b$a;->a(Landroid/graphics/Canvas;FFLandroid/graphics/RectF;)V

    .line 721
    return-void
.end method

.method a(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 822
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->n:Z

    if-eq v0, p1, :cond_0

    .line 902
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->n:Z

    .line 904
    :cond_0
    return-void
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 761
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->i:[I

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/b$a;->b(I)V

    .line 764
    return-void
.end method

.method b()I
    .locals 2

    .prologue
    .line 809
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->j:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->i:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method b(F)V
    .locals 0

    .prologue
    .line 851
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->e:F

    .line 852
    return-void
.end method

.method b(I)V
    .locals 2

    .prologue
    .line 797
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->j:I

    .line 798
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->i:[I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->j:I

    aget v0, v0, v1

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->u:I

    .line 799
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/b$a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/b$a;->b(I)V

    .line 818
    return-void
.end method

.method c(F)V
    .locals 0

    .prologue
    .line 871
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->f:F

    .line 872
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 828
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->t:I

    .line 829
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->t:I

    return v0
.end method

.method d(F)V
    .locals 0

    .prologue
    .line 879
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->g:F

    .line 880
    return-void
.end method

.method e()F
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->e:F

    return v0
.end method

.method e(F)V
    .locals 0

    .prologue
    .line 890
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->q:F

    .line 891
    return-void
.end method

.method f()F
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->k:F

    return v0
.end method

.method f(F)V
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 915
    iput p1, p0, Landroidx/swiperefreshlayout/widget/b$a;->p:F

    .line 917
    :cond_0
    return-void
.end method

.method g()F
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->l:F

    return v0
.end method

.method h()I
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->i:[I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/b$a;->j:I

    aget v0, v0, v1

    return v0
.end method

.method i()F
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->f:F

    return v0
.end method

.method j()F
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->m:F

    return v0
.end method

.method k()V
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->e:F

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->k:F

    .line 936
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->f:F

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->l:F

    .line 937
    iget v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->g:F

    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->m:F

    .line 938
    return-void
.end method

.method l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 944
    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->k:F

    .line 945
    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->l:F

    .line 946
    iput v0, p0, Landroidx/swiperefreshlayout/widget/b$a;->m:F

    .line 947
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/b$a;->b(F)V

    .line 948
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/b$a;->c(F)V

    .line 949
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/b$a;->d(F)V

    .line 950
    return-void
.end method
