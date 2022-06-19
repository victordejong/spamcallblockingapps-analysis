.class public Lcom/allinone/callerid/customview/FlowLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "FlowLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/customview/FlowLayoutManager$b;,
        Lcom/allinone/callerid/customview/FlowLayoutManager$a;
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/String; = "FlowLayoutManager"


# instance fields
.field private A:I

.field private B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

.field private C:I

.field private D:Landroid/content/Context;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->z:I

    .line 3
    iput v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    .line 4
    new-instance v0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;-><init>(Lcom/allinone/callerid/customview/FlowLayoutManager;)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->D:Landroid/content/Context;

    return-void
.end method

.method private N1()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    iget-object v0, v0, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/FlowLayoutManager$a;

    iget-object v4, v2, Lcom/allinone/callerid/customview/FlowLayoutManager$a;->b:Landroid/view/View;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/FlowLayoutManager$a;

    iget v2, v2, Lcom/allinone/callerid/customview/FlowLayoutManager$a;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    iget v3, v3, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->Q(Landroid/view/View;)I

    move-result v5

    iget-object v2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    iget v3, v2, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a:F

    iget v2, v2, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b:F

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->R(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->T(Landroid/view/View;)I

    move-result v7

    iget-object v3, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    iget v8, v3, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a:F

    iget v3, v3, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b:F

    .line 7
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->R(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v3, v9

    div-float/2addr v3, v6

    add-float/2addr v8, v3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->R(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v8, v3

    float-to-int v8, v8

    move-object v3, p0

    move v6, v2

    .line 8
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$o;->z0(Landroid/view/View;IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    invoke-virtual {v0}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b()V

    return-void
.end method

.method private O1()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->u:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->d0()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->g0()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public D()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public X0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$y;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$o;->w(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->o0()I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->t:I

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->u:I

    const/4 v7, 0x0

    .line 5
    iput v7, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e0()I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->v:I

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->f0()I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->x:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->g0()I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->w:I

    .line 9
    iget v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->t:I

    iget v2, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->v:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->x:I

    sub-int/2addr v1, v2

    iput v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->y:I

    .line 10
    iget-object v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    invoke-virtual {v1}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->b()V

    move v8, v0

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->Y()I

    move-result v1

    if-ge v9, v1, :cond_4

    move-object/from16 v11, p1

    .line 12
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;

    move-result-object v12

    .line 13
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->d(Landroid/view/View;)V

    const/16 v1, 0x8

    .line 14
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 15
    :cond_1
    invoke-virtual {v6, v12, v7, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->A0(Landroid/view/View;II)V

    .line 16
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->S(Landroid/view/View;)I

    move-result v1

    .line 17
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/RecyclerView$o;->R(Landroid/view/View;)I

    move-result v2

    .line 18
    sget-object v3, Lcom/allinone/callerid/customview/FlowLayoutManager;->s:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "childHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget v4, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->C:I

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "topMargin:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v3, v1, v4

    add-int v13, v3, v4

    add-int v3, v2, v4

    add-int v14, v3, v4

    add-int v15, v0, v13

    .line 21
    iget v3, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->y:I

    if-gt v15, v3, :cond_2

    .line 22
    iget v3, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->v:I

    add-int/2addr v3, v0

    add-int/2addr v3, v4

    add-int/2addr v4, v8

    add-int v5, v3, v1

    add-int v13, v4, v2

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v13

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->z0(Landroid/view/View;IIII)V

    .line 24
    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    iget-object v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    new-instance v2, Lcom/allinone/callerid/customview/FlowLayoutManager$a;

    invoke-direct {v2, v14, v12}, Lcom/allinone/callerid/customview/FlowLayoutManager$a;-><init>(ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a(Lcom/allinone/callerid/customview/FlowLayoutManager$a;)V

    .line 26
    iget-object v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    int-to-float v2, v8

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c(F)V

    .line 27
    iget-object v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->d(F)V

    move v10, v0

    move v0, v15

    goto :goto_1

    .line 28
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;->N1()V

    add-int/2addr v8, v10

    .line 29
    iget v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    add-int/2addr v0, v10

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    add-int v3, v8, v4

    .line 30
    iget v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->v:I

    add-int/2addr v4, v0

    add-int v5, v4, v1

    add-int v10, v3, v2

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v4

    move v4, v5

    move v5, v10

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->z0(Landroid/view/View;IIII)V

    .line 32
    iget-object v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    new-instance v1, Lcom/allinone/callerid/customview/FlowLayoutManager$a;

    invoke-direct {v1, v14, v12}, Lcom/allinone/callerid/customview/FlowLayoutManager$a;-><init>(ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->a(Lcom/allinone/callerid/customview/FlowLayoutManager$a;)V

    .line 33
    iget-object v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    int-to-float v1, v8

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->c(F)V

    .line 34
    iget-object v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->B:Lcom/allinone/callerid/customview/FlowLayoutManager$b;

    int-to-float v1, v14

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/FlowLayoutManager$b;->d(F)V

    move v0, v13

    move v10, v14

    .line 35
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->Y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v9, v1, :cond_3

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;->N1()V

    .line 37
    iget v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    add-int/2addr v1, v10

    iput v1, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 38
    :cond_4
    iget v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;->O1()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    return-void
.end method

.method public Z0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;II)V
    .locals 2

    const-string p1, "TAG"

    const-string p2, "onMeasure"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    .line 4
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 5
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    .line 6
    iput p3, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->t:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->D:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->t:I

    :goto_0
    if-ne v0, v1, :cond_1

    .line 8
    iput p4, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->u:I

    const-string p2, "\u89c4\u5219\u7684"

    .line 9
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p2, "\u4e0d\u89c4\u5219\u7684"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->D:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 12
    iget p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->g0()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->d0()I

    move-result p3

    add-int/2addr p2, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->u:I

    .line 13
    :goto_1
    iget p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->t:I

    iget p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->u:I

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->C1(II)V

    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "totalHeight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TAG"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->z:I

    add-int p3, p2, p1

    if-gez p3, :cond_0

    neg-int p1, p2

    goto :goto_0

    :cond_0
    add-int/2addr p2, p1

    .line 3
    iget p3, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    invoke-direct {p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;->O1()I

    move-result v0

    sub-int/2addr p3, v0

    if-le p2, p3, :cond_1

    .line 4
    iget p1, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->A:I

    invoke-direct {p0}, Lcom/allinone/callerid/customview/FlowLayoutManager;->O1()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->z:I

    sub-int/2addr p1, p2

    .line 5
    :cond_1
    :goto_0
    iget p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->z:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/allinone/callerid/customview/FlowLayoutManager;->z:I

    neg-int p2, p1

    .line 6
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->D0(I)V

    return p1
.end method
