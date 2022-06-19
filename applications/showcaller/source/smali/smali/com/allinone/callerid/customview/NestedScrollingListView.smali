.class public Lcom/allinone/callerid/customview/NestedScrollingListView;
.super Landroid/widget/ListView;
.source "NestedScrollingListView.java"

# interfaces
.implements Lb/h/l/k;


# instance fields
.field private d:Lb/h/l/l;

.field private e:[I

.field private f:[I

.field private g:[I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    new-array v0, p1, [I

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->f:[I

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    .line 6
    invoke-direct {p0}, Lcom/allinone/callerid/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 8
    iput-object p2, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    new-array p2, p1, [I

    .line 9
    iput-object p2, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->f:[I

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    .line 12
    invoke-direct {p0}, Lcom/allinone/callerid/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 14
    iput-object p2, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    new-array p2, p1, [I

    .line 15
    iput-object p2, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->f:[I

    new-array p1, p1, [I

    .line 16
    iput-object p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    .line 18
    invoke-direct {p0}, Lcom/allinone/callerid/customview/NestedScrollingListView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Lb/h/l/l;

    invoke-direct {v0, p0}, Lb/h/l/l;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/customview/NestedScrollingListView;->setNestedScrollingEnabled(Z)V

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

    .line 1
    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->l:I

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    aput v0, v1, v0

    .line 3
    invoke-static {p1, v0}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->h:I

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->i:I

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->j:I

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/customview/NestedScrollingListView;->startNestedScroll(I)Z

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0, p1, p2, p3}, Lb/h/l/l;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0, p1, p2}, Lb/h/l/l;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/h/l/l;->c(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lb/h/l/l;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0}, Lb/h/l/l;->j()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0}, Lb/h/l/l;->l()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lb/h/l/j;->c(Landroid/view/MotionEvent;)I

    move-result v1

    .line 3
    invoke-static {p1}, Lb/h/l/j;->b(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 4
    iget-object v5, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

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

    .line 6
    :cond_1
    invoke-static {p1, v2}, Lb/h/l/j;->d(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->h:I

    .line 7
    invoke-static {p1, v2}, Lb/h/l/j;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->i:I

    .line 8
    invoke-static {p1, v2}, Lb/h/l/j;->f(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->j:I

    goto/16 :goto_0

    .line 9
    :cond_2
    iget v1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->h:I

    invoke-static {p1, v1}, Lb/h/l/j;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    if-gez v1, :cond_3

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NestedListView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 11
    :cond_3
    invoke-static {p1, v1}, Lb/h/l/j;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 12
    invoke-static {p1, v1}, Lb/h/l/j;->f(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 13
    iget v5, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->i:I

    sub-int/2addr v5, v2

    .line 14
    iget v6, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->j:I

    sub-int/2addr v6, v1

    .line 15
    iget-boolean v7, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    const-string v8, "pyt"

    if-eqz v7, :cond_4

    const-string v0, "FIRST"

    .line 16
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-boolean v3, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    .line 18
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/NestedScrollingListView;->c(Landroid/view/MotionEvent;)V

    return v4

    .line 19
    :cond_4
    iget v7, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->l:I

    invoke-direct {p0, v7, v6}, Lcom/allinone/callerid/customview/NestedScrollingListView;->b(II)Z

    move-result v7

    if-nez v7, :cond_8

    .line 20
    iput v6, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->l:I

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "move lastY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->j:I

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

    .line 22
    iget-object v7, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->f:[I

    iget-object v8, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/allinone/callerid/customview/NestedScrollingListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    iget-object v5, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->e:[I

    aget v5, v0, v3

    iget-object v6, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    aget v7, v6, v3

    add-int/2addr v5, v7

    aput v5, v0, v3

    .line 25
    aget v5, v0, v4

    aget v6, v6, v4

    add-int/2addr v5, v6

    aput v5, v0, v4

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->g:[I

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->i:I

    .line 27
    aget v0, v0, v4

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->j:I

    goto :goto_0

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/allinone/callerid/customview/NestedScrollingListView;->stopNestedScroll()V

    .line 29
    iput-boolean v4, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->k:Z

    goto :goto_0

    .line 30
    :cond_7
    invoke-direct {p0, p1}, Lcom/allinone/callerid/customview/NestedScrollingListView;->c(Landroid/view/MotionEvent;)V

    .line 31
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0, p1}, Lb/h/l/l;->m(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0, p1}, Lb/h/l/l;->o(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/customview/NestedScrollingListView;->d:Lb/h/l/l;

    invoke-virtual {v0}, Lb/h/l/l;->q()V

    return-void
.end method
