.class public Lcom/callerid/block/customview/NestedScrollingListView;
.super Landroid/widget/ListView;
.source ""

# interfaces
.implements Ld/h/m/j;


# instance fields
.field private b:Ld/h/m/k;

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    invoke-direct {p0}, Lcom/callerid/block/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/callerid/block/customview/NestedScrollingListView;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    invoke-direct {p0}, Lcom/callerid/block/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/callerid/block/customview/NestedScrollingListView;->d:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    invoke-direct {p0}, Lcom/callerid/block/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Ld/h/m/k;

    invoke-direct {v0, p0}, Ld/h/m/k;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/callerid/block/customview/NestedScrollingListView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private b(II)Z
    .locals 0

    if-lez p1, :cond_0

    if-ltz p2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-lez p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->j:I

    iget-object v1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    aput v0, v1, v0

    invoke-static {p1, v0}, Ld/h/m/i;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->h:I

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/callerid/block/customview/NestedScrollingListView;->startNestedScroll(I)Z

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0, p1, p2, p3}, Ld/h/m/k;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0, p1, p2}, Ld/h/m/k;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Ld/h/m/k;->c(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ld/h/m/k;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0}, Ld/h/m/k;->j()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0}, Ld/h/m/k;->l()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1}, Ld/h/m/i;->c(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-static {p1}, Ld/h/m/i;->b(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    aput v3, v5, v4

    aput v3, v5, v3

    :cond_0
    iget-object v5, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v1, v5, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p1, v2}, Ld/h/m/i;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->f:I

    invoke-static {p1, v2}, Ld/h/m/i;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->g:I

    invoke-static {p1, v2}, Ld/h/m/i;->f(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->h:I

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->f:I

    invoke-static {p1, v1}, Ld/h/m/i;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedListView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    invoke-static {p1, v1}, Ld/h/m/i;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    invoke-static {p1, v1}, Ld/h/m/i;->f(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget v5, p0, Lcom/callerid/block/customview/NestedScrollingListView;->g:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/callerid/block/customview/NestedScrollingListView;->h:I

    sub-int/2addr v6, v1

    iget-boolean v7, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    const-string v8, "pyt"

    if-eqz v7, :cond_4

    const-string v0, "FIRST"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    invoke-direct {p0, p1}, Lcom/callerid/block/customview/NestedScrollingListView;->c(Landroid/view/MotionEvent;)V

    return v4

    :cond_4
    iget v7, p0, Lcom/callerid/block/customview/NestedScrollingListView;->j:I

    invoke-direct {p0, v7, v6}, Lcom/callerid/block/customview/NestedScrollingListView;->b(II)Z

    move-result v7

    if-nez v7, :cond_8

    iput v6, p0, Lcom/callerid/block/customview/NestedScrollingListView;->j:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "move lastY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/callerid/block/customview/NestedScrollingListView;->h:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",y="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",dy="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/callerid/block/customview/NestedScrollingListView;->d:[I

    iget-object v8, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/callerid/block/customview/NestedScrollingListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->c:[I

    aget v5, v0, v3

    iget-object v6, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    aget v7, v6, v3

    add-int/2addr v5, v7

    aput v5, v0, v3

    aget v5, v0, v4

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->e:[I

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/callerid/block/customview/NestedScrollingListView;->g:I

    aget v0, v0, v4

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/callerid/block/customview/NestedScrollingListView;->h:I

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/callerid/block/customview/NestedScrollingListView;->stopNestedScroll()V

    iput-boolean v4, p0, Lcom/callerid/block/customview/NestedScrollingListView;->i:Z

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lcom/callerid/block/customview/NestedScrollingListView;->c(Landroid/view/MotionEvent;)V

    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0, p1}, Ld/h/m/k;->m(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0, p1}, Ld/h/m/k;->o(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/NestedScrollingListView;->b:Ld/h/m/k;

    invoke-virtual {v0}, Ld/h/m/k;->q()V

    return-void
.end method
