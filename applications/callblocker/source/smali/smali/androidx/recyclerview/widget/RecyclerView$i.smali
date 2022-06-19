.class public abstract Landroidx/recyclerview/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$i$b;,
        Landroidx/recyclerview/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/q$b;

.field private final b:Landroidx/recyclerview/widget/q$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Landroidx/recyclerview/widget/b;

.field q:Landroidx/recyclerview/widget/RecyclerView;

.field r:Landroidx/recyclerview/widget/q;

.field s:Landroidx/recyclerview/widget/q;

.field t:Landroidx/recyclerview/widget/RecyclerView$t;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7590
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/q$b;

    .line 7626
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->b:Landroidx/recyclerview/widget/q$b;

    .line 7666
    new-instance v0, Landroidx/recyclerview/widget/q;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->a:Landroidx/recyclerview/widget/q$b;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/q$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->r:Landroidx/recyclerview/widget/q;

    .line 7667
    new-instance v0, Landroidx/recyclerview/widget/q;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->b:Landroidx/recyclerview/widget/q$b;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/q$b;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->s:Landroidx/recyclerview/widget/q;

    .line 7672
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 7674
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 7680
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    .line 7686
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    .line 7688
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .prologue
    .line 7876
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 7877
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7878
    sparse-switch v1, :sswitch_data_0

    .line 7885
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 7882
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 7878
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 9446
    sub-int v1, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9449
    if-eqz p4, :cond_4

    .line 9450
    if-ltz p3, :cond_1

    move p1, v2

    move v1, p3

    .line 9487
    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    .line 9453
    :cond_1
    if-ne p3, v5, :cond_3

    .line 9454
    sparse-switch p1, :sswitch_data_0

    :cond_2
    move p1, v0

    move v1, v0

    goto :goto_0

    :sswitch_1
    move p1, v0

    move v1, v0

    .line 9462
    goto :goto_0

    .line 9465
    :cond_3
    if-ne p3, v4, :cond_2

    move p1, v0

    move v1, v0

    .line 9467
    goto :goto_0

    .line 9470
    :cond_4
    if-ltz p3, :cond_5

    move p1, v2

    move v1, p3

    .line 9472
    goto :goto_0

    .line 9473
    :cond_5
    if-eq p3, v5, :cond_0

    .line 9476
    if-ne p3, v4, :cond_2

    .line 9478
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    move p1, v3

    .line 9479
    goto :goto_0

    :cond_7
    move p1, v0

    .line 9481
    goto :goto_0

    .line 9454
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$i$b;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10635
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$i$b;-><init>()V

    .line 10636
    sget-object v1, Landroidx/recyclerview/a$c;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10638
    sget v2, Landroidx/recyclerview/a$c;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->a:I

    .line 10640
    sget v2, Landroidx/recyclerview/a$c;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->b:I

    .line 10641
    sget v2, Landroidx/recyclerview/a$c;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->c:Z

    .line 10642
    sget v2, Landroidx/recyclerview/a$c;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$i$b;->d:Z

    .line 10643
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10644
    return-object v0
.end method

.method private a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 8791
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->e(I)V

    .line 8792
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 8563
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    .line 8564
    if-nez p3, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8566
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/r;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 8575
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 8576
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8577
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8578
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->j()V

    .line 8582
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3, v4}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8607
    :cond_2
    :goto_2
    iget-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    if-eqz v2, :cond_3

    .line 8611
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 8612
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    .line 8614
    :cond_3
    return-void

    .line 8573
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/r;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0

    .line 8580
    :cond_5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->l()V

    goto :goto_1

    .line 8586
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, v3, :cond_9

    .line 8588
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/b;->b(Landroid/view/View;)I

    move-result v2

    .line 8589
    if-ne p2, v5, :cond_7

    .line 8590
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b;->b()I

    move-result p2

    .line 8592
    :cond_7
    if-ne v2, v5, :cond_8

    .line 8593
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8595
    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8597
    :cond_8
    if-eq v2, p2, :cond_2

    .line 8598
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v3, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->e(II)V

    goto :goto_2

    .line 8601
    :cond_9
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, p1, p2, v4}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;IZ)V

    .line 8602
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 8603
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8604
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->b(Landroid/view/View;)V

    goto :goto_2
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 9200
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 9201
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9216
    :goto_0
    return-void

    .line 9207
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 9208
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9209
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->g(I)V

    .line 9210
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0

    .line 9212
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->h(I)V

    .line 9213
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 9214
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/r;->h(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0
.end method

.method private static b(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9342
    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    move v0, v1

    .line 9353
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 9345
    :cond_1
    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 9353
    goto :goto_0

    .line 9349
    :sswitch_1
    if-ge v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9351
    :sswitch_2
    if-eq v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 9345
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 13

    .prologue
    .line 9834
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 9835
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v4

    .line 9836
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v5

    .line 9837
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v1

    sub-int v6, v0, v1

    .line 9838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int v7, v0, v1

    .line 9839
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int v8, v0, v1

    .line 9840
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int v9, v0, v1

    .line 9841
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int v10, v8, v0

    .line 9842
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int v11, v9, v0

    .line 9844
    const/4 v0, 0x0

    sub-int v1, v8, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9845
    const/4 v0, 0x0

    sub-int v2, v9, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9846
    const/4 v0, 0x0

    sub-int v12, v10, v6

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9847
    const/4 v12, 0x0

    sub-int v7, v11, v7

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 9853
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->v()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 9854
    if-eqz v0, :cond_0

    :goto_0
    move v1, v0

    .line 9863
    :goto_1
    if-eqz v2, :cond_3

    move v0, v2

    .line 9865
    :goto_2
    const/4 v2, 0x0

    aput v1, v3, v2

    .line 9866
    const/4 v1, 0x1

    aput v0, v3, v1

    .line 9867
    return-object v3

    .line 9854
    :cond_0
    sub-int v0, v10, v6

    .line 9855
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 9857
    :cond_1
    if-eqz v1, :cond_2

    move v0, v1

    :goto_3
    move v1, v0

    .line 9858
    goto :goto_1

    .line 9857
    :cond_2
    sub-int v1, v8, v4

    .line 9858
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 9863
    :cond_3
    sub-int v0, v9, v5

    .line 9864
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2
.end method

.method private d(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 9966
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 9967
    if-nez v1, :cond_1

    .line 9981
    :cond_0
    :goto_0
    return v0

    .line 9970
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v2

    .line 9971
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v3

    .line 9972
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9973
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9974
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9975
    invoke-virtual {p0, v1, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9977
    iget v1, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p2

    if-ge v1, v4, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p2

    if-le v1, v2, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p3

    if-ge v1, v5, :cond_0

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p3

    if-le v1, v3, :cond_0

    .line 9981
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 8967
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 8983
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    return v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 8999
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 9009
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 9019
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 9029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 9039
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9089
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 9096
    :cond_0
    :goto_0
    return-object v0

    .line 9092
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 9093
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 9096
    goto :goto_0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 9112
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 9113
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    :goto_1
    return v0

    .line 9112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 9113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public J()I
    .locals 1

    .prologue
    .line 10275
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/h/u;->k(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 1

    .prologue
    .line 10283
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/h/u;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method L()V
    .locals 1

    .prologue
    .line 10306
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    .line 10307
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    .line 10309
    :cond_0
    return-void
.end method

.method public M()V
    .locals 1

    .prologue
    .line 10472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->u:Z

    .line 10473
    return-void
.end method

.method N()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 10669
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v2

    move v1, v0

    .line 10670
    :goto_0
    if-ge v1, v2, :cond_0

    .line 10671
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v3

    .line 10672
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10673
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    .line 10674
    const/4 v0, 0x1

    .line 10677
    :cond_0
    return v0

    .line 10670
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 8388
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10508
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 10511
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    .prologue
    .line 9800
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a()Landroidx/recyclerview/widget/RecyclerView$j;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 8371
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .prologue
    .line 8347
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz v0, :cond_0

    .line 8348
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 8352
    :goto_0
    return-object v0

    .line 8349
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8350
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 8352
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    .prologue
    .line 8082
    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$i$a;)V
    .locals 0

    .prologue
    .line 8110
    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .prologue
    .line 8911
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8912
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(I)V

    .line 8913
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    .line 8914
    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    .prologue
    .line 7836
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v1

    add-int/2addr v0, v1

    .line 7837
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v2

    add-int/2addr v1, v2

    .line 7838
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->J()I

    move-result v2

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result v0

    .line 7839
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->K()I

    move-result v2

    invoke-static {p3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(III)I

    move-result v1

    .line 7840
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->f(II)V

    .line 7841
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 10303
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8518
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;I)V

    .line 8519
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8536
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    .line 8537
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 7

    .prologue
    .line 9369
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9371
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9372
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    .line 9373
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 9375
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->z()I

    move-result v4

    .line 9376
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    .line 9378
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v6

    .line 9375
    invoke-static {v3, v4, v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->a(IIIIZ)I

    move-result v2

    .line 9379
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->A()I

    move-result v4

    .line 9380
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    .line 9382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v6

    .line 9379
    invoke-static {v3, v4, v1, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->a(IIIIZ)I

    move-result v1

    .line 9383
    invoke-virtual {p0, p1, v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9384
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 9386
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 9585
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 9586
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9587
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 9590
    return-void
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 2

    .prologue
    .line 8804
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 8805
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8806
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/r;->e(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 8810
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8814
    return-void

    .line 8808
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/recyclerview/widget/r;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/r;->f(Landroidx/recyclerview/widget/RecyclerView$x;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 9638
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9639
    return-void
.end method

.method a(Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 2

    .prologue
    .line 10428
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 10430
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10431
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/h/a/c;)V

    .line 10434
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .prologue
    .line 8900
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)V

    .line 8901
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    .line 8902
    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 9605
    if-eqz p2, :cond_1

    .line 9606
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9607
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 9608
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    .line 9607
    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9613
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9614
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 9615
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9616
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9617
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9618
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9619
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    .line 9620
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 9621
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    .line 9622
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    .line 9623
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 9619
    invoke-virtual {p3, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9627
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 9628
    return-void

    .line 9610
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 10397
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10398
    return-void
.end method

.method a(Landroidx/core/h/a/c;)V
    .locals 2

    .prologue
    .line 10348
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/core/h/a/c;)V

    .line 10349
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$a;Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 0

    .prologue
    .line 10031
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .prologue
    .line 9192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v0

    .line 9193
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9194
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 9195
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    .line 9193
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9197
    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 1

    .prologue
    .line 10256
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 10257
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroidx/core/h/a/c;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 10453
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v0

    .line 10454
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 10456
    invoke-static/range {v0 .. v5}, Landroidx/core/h/a/c$c;->a(IIIIZZ)Landroidx/core/h/a/c$c;

    move-result-object v0

    .line 10458
    invoke-virtual {p4, v0}, Landroidx/core/h/a/c;->b(Ljava/lang/Object;)V

    .line 10459
    return-void

    :cond_0
    move v0, v4

    .line 10453
    goto :goto_0

    :cond_1
    move v2, v4

    .line 10454
    goto :goto_1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 10413
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 10424
    :cond_0
    :goto_0
    return-void

    .line 10416
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 10417
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 10418
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 10419
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10416
    :cond_2
    :goto_1
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 10421
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 10422
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    .line 10419
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/core/h/a/c;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 10378
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10379
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroidx/core/h/a/c;->a(I)V

    .line 10380
    invoke-virtual {p3, v1}, Landroidx/core/h/a/c;->i(Z)V

    .line 10382
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10383
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroidx/core/h/a/c;->a(I)V

    .line 10384
    invoke-virtual {p3, v1}, Landroidx/core/h/a/c;->i(Z)V

    .line 10388
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v0

    .line 10389
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v1

    .line 10390
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Z

    move-result v2

    .line 10391
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I

    move-result v3

    .line 10388
    invoke-static {v0, v1, v2, v3}, Landroidx/core/h/a/c$b;->a(IIZI)Landroidx/core/h/a/c$b;

    move-result-object v0

    .line 10392
    invoke-virtual {p3, v0}, Landroidx/core/h/a/c;->a(Ljava/lang/Object;)V

    .line 10393
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 2

    .prologue
    .line 8465
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 8466
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8467
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    .line 8469
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 8470
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 8471
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 8300
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10070
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 10083
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .prologue
    .line 10138
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 10120
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 10121
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .prologue
    .line 8221
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8222
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 2

    .prologue
    .line 8451
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8452
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 7897
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7898
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7900
    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 10550
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 2

    .prologue
    .line 9293
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_0

    .line 9294
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9295
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {v0, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9293
    :goto_0
    return v0

    .line 9295
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 10598
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9944
    const/16 v2, 0x6003

    .line 9946
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->r:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1, v2}, Landroidx/recyclerview/widget/q;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$i;->s:Landroidx/recyclerview/widget/q;

    .line 9948
    invoke-virtual {v3, p1, v2}, Landroidx/recyclerview/widget/q;->a(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 9949
    :goto_0
    if-eqz p2, :cond_2

    move v0, v2

    .line 9952
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 9948
    goto :goto_0

    .line 9952
    :cond_2
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 1

    .prologue
    .line 8330
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 10566
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 10592
    :cond_0
    :goto_0
    return v3

    .line 10570
    :cond_1
    sparse-switch p3, :sswitch_data_0

    move v1, v3

    move v2, v3

    .line 10588
    :goto_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    .line 10591
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    move v3, v5

    .line 10592
    goto :goto_0

    .line 10572
    :sswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10573
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    .line 10575
    :goto_2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10576
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    move v2, v0

    goto :goto_1

    .line 10580
    :sswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10581
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v1

    sub-int/2addr v0, v1

    .line 10583
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v0

    goto :goto_1

    :cond_3
    move v1, v3

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2

    .line 10570
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 10619
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    .prologue
    .line 9886
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9906
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object v2

    .line 9908
    aget v3, v2, v0

    .line 9909
    aget v2, v2, v1

    .line 9910
    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9911
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 9912
    :cond_1
    if-eqz p4, :cond_3

    .line 9913
    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :goto_0
    move v0, v1

    .line 9920
    :cond_2
    return v0

    .line 9915
    :cond_3
    invoke-virtual {p1, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9991
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 10013
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 10059
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 8164
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8165
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    .line 8167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 8405
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10528
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-nez v1, :cond_1

    .line 10531
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10183
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8547
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroid/view/View;I)V

    .line 8548
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8559
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;IZ)V

    .line 8560
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9707
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9708
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9713
    :goto_0
    return-void

    .line 9711
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 9712
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9228
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e()I

    move-result v1

    .line 9230
    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 9231
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->e(I)Landroid/view/View;

    move-result-object v2

    .line 9232
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    .line 9233
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9230
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9241
    :cond_0
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Z)V

    .line 9242
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9243
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9245
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eqz v4, :cond_2

    .line 9246
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$x;)V

    .line 9248
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$x;->a(Z)V

    .line 9249
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    goto :goto_1

    .line 9251
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->f()V

    .line 9252
    if-lez v1, :cond_4

    .line 9253
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 9255
    :cond_4
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 1

    .prologue
    .line 10312
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-ne v0, p1, :cond_0

    .line 10313
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 10315
    :cond_0
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 7741
    if-nez p1, :cond_0

    .line 7742
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 7743
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 7744
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7745
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    .line 7752
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    .line 7753
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    .line 7754
    return-void

    .line 7747
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 7748
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    .line 7749
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7750
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 10094
    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .prologue
    .line 8118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 8119
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    .line 8120
    return-void
.end method

.method b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$j;)Z
    .locals 2

    .prologue
    .line 9307
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->c:Z

    if-eqz v0, :cond_0

    .line 9309
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9310
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$j;->height:I

    invoke-static {v0, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 9307
    :goto_0
    return v0

    .line 9310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10228
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 8731
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v2

    .line 8732
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 8733
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8734
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v3

    .line 8735
    if-nez v3, :cond_1

    .line 8732
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8738
    :cond_1
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->d()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    .line 8739
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$x;->q()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8743
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7757
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7758
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    .line 7759
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 7760
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->g:I

    .line 7763
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    .line 7764
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    .line 7765
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->f:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 7766
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->h:I

    .line 7768
    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8625
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(Landroid/view/View;)V

    .line 8626
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 8825
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$j;)V

    .line 8826
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .prologue
    .line 10338
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 10339
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v1

    .line 10340
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10341
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    .line 10338
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10344
    :cond_1
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 8285
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 8113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    .line 8114
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 8115
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 10107
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 8017
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 8673
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$j;->f()I

    move-result v0

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10492
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10168
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 9821
    const/4 v0, 0x0

    return-object v0
.end method

.method d(II)V
    .locals 8

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    .line 7784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v7

    .line 7785
    if-nez v7, :cond_0

    .line 7786
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7813
    :goto_0
    return-void

    .line 7794
    :cond_0
    const/4 v4, 0x0

    move v3, v5

    move v1, v5

    move v2, v6

    move v0, v6

    :goto_1
    if-ge v4, v7, :cond_5

    .line 7795
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v5

    .line 7796
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7797
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7798
    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_1

    .line 7799
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 7801
    :cond_1
    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_2

    .line 7802
    iget v1, v6, Landroid/graphics/Rect;->right:I

    .line 7804
    :cond_2
    iget v5, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v2, :cond_3

    .line 7805
    iget v2, v6, Landroid/graphics/Rect;->top:I

    .line 7807
    :cond_3
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_4

    .line 7808
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 7794
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7811
    :cond_5
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 7812
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 8185
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 7991
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->w:Z

    return v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10213
    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 10297
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8703
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 8713
    :cond_0
    :goto_0
    return-object v0

    .line 8706
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 8707
    if-eqz v1, :cond_0

    .line 8710
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 8713
    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 8438
    return-void
.end method

.method public e(II)V
    .locals 3

    .prologue
    .line 8856
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8857
    if-nez v0, :cond_0

    .line 8858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot move a child from non-existing index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 8859
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8861
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->h(I)V

    .line 8862
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;I)V

    .line 8863
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8194
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 10545
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 9500
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9501
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public f(II)V
    .locals 1

    .prologue
    .line 10267
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 10268
    return-void
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 10648
    .line 10649
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10650
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10648
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(II)V

    .line 10652
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 8415
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 9514
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    .line 9515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10153
    const/4 v0, 0x0

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 8637
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    .line 8638
    if-eqz v0, :cond_0

    .line 8639
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->a(I)V

    .line 8641
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 8425
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9650
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->n(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 10198
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 1

    .prologue
    .line 8784
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->a(ILandroid/view/View;)V

    .line 8785
    return-void
.end method

.method public i(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9662
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->l(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public i(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 8933
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9674
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->o(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 9123
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9124
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 9126
    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 9686
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->m(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 9135
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9136
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 9138
    :cond_0
    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9727
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 10323
    return-void
.end method

.method public m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9742
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9757
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 10665
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 9772
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 7847
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7848
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 7850
    :cond_0
    return-void
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 8058
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->d:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 8130
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->v:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 8230
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 8477
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 8489
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 8649
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->y()I

    move-result v0

    .line 8650
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8651
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/b;->a(I)V

    .line 8650
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8653
    :cond_0
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 8662
    const/4 v0, -0x1

    return v0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 8923
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->p:Landroidx/recyclerview/widget/b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()I
    .locals 1

    .prologue
    .line 8950
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$i;->e:I

    return v0
.end method
