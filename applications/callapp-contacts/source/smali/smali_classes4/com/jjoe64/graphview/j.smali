.class public final Lcom/jjoe64/graphview/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/j$a;,
        Lcom/jjoe64/graphview/j$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private E:Ljava/lang/Integer;

.field private F:Landroid/graphics/Paint;

.field protected a:D

.field protected b:D

.field protected c:Z

.field d:Lcom/jjoe64/graphview/g;

.field final e:Lcom/jjoe64/graphview/GraphView;

.field protected f:Lcom/jjoe64/graphview/g;

.field protected g:D

.field protected h:D

.field protected i:Lcom/jjoe64/graphview/g;

.field protected j:Z

.field k:Z

.field l:Z

.field m:Z

.field protected n:Landroid/view/GestureDetector;

.field protected o:Landroid/view/ScaleGestureDetector;

.field protected p:Landroid/widget/OverScroller;

.field q:Landroidx/core/widget/d;

.field r:Landroidx/core/widget/d;

.field s:Landroidx/core/widget/d;

.field t:Landroidx/core/widget/d;

.field protected u:Lcom/jjoe64/graphview/j$a;

.field protected v:Lcom/jjoe64/graphview/j$a;

.field protected w:Lcom/jjoe64/graphview/j$b;

.field private final x:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final y:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private z:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 11

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 55
    iput-wide v0, p0, Lcom/jjoe64/graphview/j;->a:D

    .line 62
    iput-wide v0, p0, Lcom/jjoe64/graphview/j;->b:D

    .line 76
    new-instance v0, Lcom/jjoe64/graphview/g;

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/jjoe64/graphview/g;-><init>(DDDD)V

    iput-object v0, p0, Lcom/jjoe64/graphview/j;->d:Lcom/jjoe64/graphview/g;

    .line 119
    new-instance v0, Lcom/jjoe64/graphview/j$1;

    invoke-direct {v0, p0}, Lcom/jjoe64/graphview/j$1;-><init>(Lcom/jjoe64/graphview/j;)V

    iput-object v0, p0, Lcom/jjoe64/graphview/j;->x:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 293
    new-instance v1, Lcom/jjoe64/graphview/j$2;

    invoke-direct {v1, p0}, Lcom/jjoe64/graphview/j$2;-><init>(Lcom/jjoe64/graphview/j;)V

    iput-object v1, p0, Lcom/jjoe64/graphview/j;->y:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 496
    new-instance v2, Lcom/jjoe64/graphview/g;

    invoke-direct {v2}, Lcom/jjoe64/graphview/g;-><init>()V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    const-wide/16 v2, 0x0

    .line 503
    iput-wide v2, p0, Lcom/jjoe64/graphview/j;->g:D

    .line 510
    iput-wide v2, p0, Lcom/jjoe64/graphview/j;->h:D

    .line 517
    new-instance v2, Lcom/jjoe64/graphview/g;

    invoke-direct {v2}, Lcom/jjoe64/graphview/g;-><init>()V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    .line 632
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->p:Landroid/widget/OverScroller;

    .line 633
    new-instance v2, Landroidx/core/widget/d;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->q:Landroidx/core/widget/d;

    .line 634
    new-instance v2, Landroidx/core/widget/d;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->r:Landroidx/core/widget/d;

    .line 635
    new-instance v2, Landroidx/core/widget/d;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->s:Landroidx/core/widget/d;

    .line 636
    new-instance v2, Landroidx/core/widget/d;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->t:Landroidx/core/widget/d;

    .line 637
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/jjoe64/graphview/j;->n:Landroid/view/GestureDetector;

    .line 638
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/jjoe64/graphview/GraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/jjoe64/graphview/j;->o:Landroid/view/ScaleGestureDetector;

    .line 640
    iput-object p1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 641
    sget-object p1, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    iput-object p1, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    .line 642
    sget-object p1, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    iput-object p1, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    const/4 p1, 0x0

    .line 643
    iput p1, p0, Lcom/jjoe64/graphview/j;->C:I

    .line 644
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jjoe64/graphview/j;->z:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected final a()D
    .locals 2

    .line 2133
    iget-boolean v0, p0, Lcom/jjoe64/graphview/j;->A:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 2236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 2448
    iget-boolean v0, v0, Lcom/jjoe64/graphview/c;->g:Z

    if-nez v0, :cond_1

    .line 87
    iget-wide v0, p0, Lcom/jjoe64/graphview/j;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jjoe64/graphview/j;->b:D

    .line 90
    :cond_0
    iget-wide v0, p0, Lcom/jjoe64/graphview/j;->b:D

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(Z)D
    .locals 2

    if-eqz p1, :cond_0

    .line 838
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->a:D

    return-wide v0

    .line 840
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->a:D

    return-wide v0
.end method

.method public final a(D)V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide p1, v0, Lcom/jjoe64/graphview/g;->c:D

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1034
    iget v0, p0, Lcom/jjoe64/graphview/j;->C:I

    if-eqz v0, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->z:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1036
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1037
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1038
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1039
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1040
    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/jjoe64/graphview/j;->z:Landroid/graphics/Paint;

    move-object v1, p1

    .line 1036
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1044
    :cond_0
    iget-boolean v0, p0, Lcom/jjoe64/graphview/j;->D:Z

    if-eqz v0, :cond_3

    .line 1046
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->F:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1049
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->z:Landroid/graphics/Paint;

    .line 8222
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->E:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 8223
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 8225
    :cond_2
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 8236
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 8225
    invoke-virtual {v1}, Lcom/jjoe64/graphview/c;->h()I

    move-result v1

    .line 1050
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1052
    :goto_1
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1053
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1054
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1055
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1056
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v2, p1

    move-object v7, v0

    .line 1052
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1059
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1060
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1061
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1062
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1063
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v2, p1

    .line 1059
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1067
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v1, :cond_3

    .line 1068
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1069
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v3, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1070
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1071
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->a()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->d()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 1072
    invoke-virtual {v1}, Lcom/jjoe64/graphview/GraphView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/GraphView;->c()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v2, p1

    move-object v7, v0

    .line 1068
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/jjoe64/graphview/j$a;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->o:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 656
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->n:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 657
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 2656
    iget-boolean v1, v1, Lcom/jjoe64/graphview/GraphView;->e:Z

    if-eqz v1, :cond_2

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 3652
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    .line 659
    invoke-virtual {v1, p1}, Lcom/jjoe64/graphview/a;->a(Landroid/view/MotionEvent;)V

    or-int/lit8 v0, v0, 0x1

    .line 662
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 663
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 4652
    iget-object v1, v1, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    .line 663
    invoke-virtual {v1, p1}, Lcom/jjoe64/graphview/a;->b(Landroid/view/MotionEvent;)V

    or-int/lit8 v0, v0, 0x1

    .line 666
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 667
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 5652
    iget-object p1, p1, Lcom/jjoe64/graphview/GraphView;->f:Lcom/jjoe64/graphview/a;

    .line 667
    invoke-virtual {p1}, Lcom/jjoe64/graphview/a;->a()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public final b(Z)D
    .locals 2

    if-eqz p1, :cond_0

    .line 851
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->b:D

    return-wide v0

    .line 853
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->b:D

    return-wide v0
.end method

.method public final b()V
    .locals 12

    .line 734
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 6259
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 735
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 7259
    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->a:Ljava/util/List;

    .line 735
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 736
    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphView;->d:Lcom/jjoe64/graphview/h;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/jjoe64/graphview/g;->a(DDDD)V

    .line 740
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v3

    if-nez v3, :cond_9

    .line 741
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v3

    .line 742
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/a/h;

    .line 743
    invoke-interface {v6}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v7

    cmpl-double v9, v3, v7

    if-lez v9, :cond_1

    .line 744
    invoke-interface {v6}, Lcom/jjoe64/graphview/a/h;->b()D

    move-result-wide v3

    goto :goto_0

    .line 747
    :cond_2
    iget-object v5, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iput-wide v3, v5, Lcom/jjoe64/graphview/g;->a:D

    .line 749
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v3}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v3

    .line 750
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 751
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_3

    .line 752
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->c()D

    move-result-wide v3

    goto :goto_1

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iput-wide v3, v1, Lcom/jjoe64/graphview/g;->b:D

    .line 757
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v1}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v1

    if-nez v1, :cond_9

    .line 758
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v1}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v3

    .line 759
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 760
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v6

    cmpl-double v8, v3, v6

    if-lez v8, :cond_5

    .line 761
    invoke-interface {v5}, Lcom/jjoe64/graphview/a/h;->d()D

    move-result-wide v3

    goto :goto_2

    .line 764
    :cond_6
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iput-wide v3, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 766
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/h;

    invoke-interface {v1}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v1

    .line 767
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jjoe64/graphview/a/h;

    .line 768
    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->h()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v5

    cmpg-double v7, v1, v5

    if-gez v7, :cond_7

    .line 769
    invoke-interface {v4}, Lcom/jjoe64/graphview/a/h;->e()D

    move-result-wide v1

    goto :goto_3

    .line 772
    :cond_8
    iget-object v3, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iput-wide v1, v3, Lcom/jjoe64/graphview/g;->c:D

    .line 777
    :cond_9
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    sget-object v2, Lcom/jjoe64/graphview/j$a;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

    if-ne v1, v2, :cond_a

    .line 778
    sget-object v1, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    iput-object v1, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    .line 780
    :cond_a
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    sget-object v2, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    if-ne v1, v2, :cond_b

    .line 781
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v2, v2, Lcom/jjoe64/graphview/g;->c:D

    iput-wide v2, v1, Lcom/jjoe64/graphview/g;->c:D

    .line 782
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v2, v2, Lcom/jjoe64/graphview/g;->d:D

    iput-wide v2, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 785
    :cond_b
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    sget-object v2, Lcom/jjoe64/graphview/j$a;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

    if-ne v1, v2, :cond_c

    .line 786
    sget-object v1, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    iput-object v1, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    .line 788
    :cond_c
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    sget-object v2, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    if-ne v1, v2, :cond_d

    .line 789
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v1, v1, Lcom/jjoe64/graphview/g;->a:D

    iput-wide v1, v0, Lcom/jjoe64/graphview/g;->a:D

    .line 790
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v1, v1, Lcom/jjoe64/graphview/g;->b:D

    iput-wide v1, v0, Lcom/jjoe64/graphview/g;->b:D

    goto/16 :goto_6

    .line 791
    :cond_d
    iget-boolean v1, p0, Lcom/jjoe64/graphview/j;->A:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/jjoe64/graphview/j;->B:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/g;->a()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_15

    .line 795
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v4, v2

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/a/h;

    .line 796
    iget-object v7, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v7, v7, Lcom/jjoe64/graphview/g;->a:D

    iget-object v9, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v9, v9, Lcom/jjoe64/graphview/g;->b:D

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/jjoe64/graphview/a/h;->a(DD)Ljava/util/Iterator;

    move-result-object v6

    .line 797
    :cond_f
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 798
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v7}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v7

    cmpl-double v9, v4, v7

    if-lez v9, :cond_f

    move-wide v4, v7

    goto :goto_4

    :cond_10
    cmpl-double v1, v4, v2

    if-eqz v1, :cond_11

    .line 806
    iget-object v1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v4, v1, Lcom/jjoe64/graphview/g;->d:D

    .line 811
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jjoe64/graphview/a/h;

    .line 812
    iget-object v6, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v6, v6, Lcom/jjoe64/graphview/g;->a:D

    iget-object v8, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v8, v8, Lcom/jjoe64/graphview/g;->b:D

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/jjoe64/graphview/a/h;->a(DD)Ljava/util/Iterator;

    move-result-object v5

    .line 813
    :cond_13
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 814
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jjoe64/graphview/a/d;

    invoke-interface {v6}, Lcom/jjoe64/graphview/a/d;->b()D

    move-result-wide v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_13

    move-wide v3, v6

    goto :goto_5

    :cond_14
    cmpl-double v0, v3, v1

    if-eqz v0, :cond_15

    .line 822
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide v3, v0, Lcom/jjoe64/graphview/g;->c:D

    .line 827
    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, v0, Lcom/jjoe64/graphview/g;->a:D

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v2, v2, Lcom/jjoe64/graphview/g;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v0, v2

    if-nez v6, :cond_16

    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v1, v0, Lcom/jjoe64/graphview/g;->b:D

    add-double/2addr v1, v4

    iput-wide v1, v0, Lcom/jjoe64/graphview/g;->b:D

    .line 828
    :cond_16
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, v0, Lcom/jjoe64/graphview/g;->c:D

    iget-object v2, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v2, v2, Lcom/jjoe64/graphview/g;->d:D

    cmpl-double v6, v0, v2

    if-nez v6, :cond_17

    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v1, v0, Lcom/jjoe64/graphview/g;->c:D

    add-double/2addr v1, v4

    iput-wide v1, v0, Lcom/jjoe64/graphview/g;->c:D

    :cond_17
    return-void
.end method

.method public final b(D)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide p1, v0, Lcom/jjoe64/graphview/g;->d:D

    return-void
.end method

.method public final b(Lcom/jjoe64/graphview/j$a;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    return-void
.end method

.method public final c(Z)D
    .locals 2

    if-eqz p1, :cond_0

    .line 864
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->d:D

    return-wide v0

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->d:D

    return-wide v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    .line 1142
    iput-boolean v0, p0, Lcom/jjoe64/graphview/j;->A:Z

    .line 1144
    sget-object v0, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    iput-object v0, p0, Lcom/jjoe64/graphview/j;->u:Lcom/jjoe64/graphview/j$a;

    return-void
.end method

.method public final c(D)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide p1, v0, Lcom/jjoe64/graphview/g;->b:D

    return-void
.end method

.method public final d(Z)D
    .locals 2

    if-eqz p1, :cond_0

    .line 877
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->i:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->c:D

    return-wide v0

    .line 879
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iget-wide v0, p1, Lcom/jjoe64/graphview/g;->c:D

    return-wide v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    .line 1161
    iput-boolean v0, p0, Lcom/jjoe64/graphview/j;->B:Z

    .line 1163
    sget-object v0, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    iput-object v0, p0, Lcom/jjoe64/graphview/j;->v:Lcom/jjoe64/graphview/j$a;

    return-void
.end method

.method public final d(D)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->f:Lcom/jjoe64/graphview/g;

    iput-wide p1, v0, Lcom/jjoe64/graphview/g;->a:D

    return-void
.end method

.method protected final e()D
    .locals 2

    .line 9152
    iget-boolean v0, p0, Lcom/jjoe64/graphview/j;->B:Z

    if-eqz v0, :cond_1

    .line 1266
    iget-object v0, p0, Lcom/jjoe64/graphview/j;->e:Lcom/jjoe64/graphview/GraphView;

    .line 9236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 9458
    iget-boolean v0, v0, Lcom/jjoe64/graphview/c;->f:Z

    if-nez v0, :cond_1

    .line 1267
    iget-wide v0, p0, Lcom/jjoe64/graphview/j;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jjoe64/graphview/j;->a:D

    .line 1270
    :cond_0
    iget-wide v0, p0, Lcom/jjoe64/graphview/j;->a:D

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method
