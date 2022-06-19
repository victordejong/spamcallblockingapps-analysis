.class public Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;,
        Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;,
        Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;
    }
.end annotation


# instance fields
.field Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

.field R:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;

.field S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

.field T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

.field U:Lcom/callapp/contacts/activity/favorites/DragItem;

.field V:J

.field W:I

.field aa:Z

.field ab:Z

.field ac:Z

.field private ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

.field private ae:Landroid/graphics/drawable/Drawable;

.field private af:Landroid/graphics/drawable/Drawable;

.field private ag:Z

.field private ah:I

.field private ai:F

.field private aj:Z

.field private ak:Z

.field private al:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object p1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ak:Z

    .line 74
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ac:Z

    .line 78
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object p1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ak:Z

    .line 74
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ac:Z

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object p1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    const-wide/16 p1, -0x1

    .line 64
    iput-wide p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ak:Z

    .line 74
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ac:Z

    .line 88
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ae:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->af:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private b(FF)Landroid/view/View;
    .locals 5

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 257
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 261
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 263
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItemAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V
    .locals 3

    .line 9460
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDragItemId(J)V

    .line 9461
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDropTargetId(J)V

    .line 9462
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->notifyDataSetChanged()V

    .line 9464
    sget-object v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    .line 9465
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

    if-eqz v0, :cond_0

    .line 9466
    invoke-interface {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;->b()V

    .line 9469
    :cond_0
    iput-wide v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    .line 9470
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItem;->a()V

    const/4 v0, 0x1

    .line 9471
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setEnabled(Z)V

    .line 9472
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->invalidate()V

    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItem;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    return-object p0
.end method

.method private f(I)Z
    .locals 3

    .line 274
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aa:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ab:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_3

    :cond_2
    return v1

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->R:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;->b(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method private k()V
    .locals 2

    .line 92
    new-instance v0, Lcom/callapp/contacts/activity/favorites/AutoScroller;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/callapp/contacts/activity/favorites/AutoScroller;-><init>(Landroid/content/Context;Lcom/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    .line 93
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ah:I

    .line 95
    new-instance v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$1;-><init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V

    const/4 v1, -0x1

    .line 5665
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    return-void
.end method


# virtual methods
.method final a(FF)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    if-ne v0, v1, :cond_0

    return-void

    .line 405
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAGGING:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    iget-wide v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->V:J

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(J)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    .line 407
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItem;->a(FF)V

    .line 409
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->isAutoScrolling()Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->i()V

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

    if-eqz p1, :cond_2

    .line 414
    invoke-interface {p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;->a()V

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->invalidate()V

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->scrollBy(II)V

    .line 240
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->i()V

    return-void

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    const/4 p2, 0x0

    .line 6064
    iput-boolean p2, p1, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    return-void
.end method

.method final i()V
    .locals 10

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItem;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragItem;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->b(FF)Landroid/view/View;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->e(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    if-nez v0, :cond_0

    goto/16 :goto_c

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v6, v2

    div-int/lit8 v2, v5, 0x2

    add-int/2addr v6, v2

    .line 302
    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->e(Landroid/view/View;)I

    move-result v7

    if-ge v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 303
    iget-object v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/favorites/DragItem;->getY()F

    move-result v2

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/favorites/DragItem;->getY()F

    move-result v2

    int-to-float v6, v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 306
    :goto_3
    iget-object v6, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/favorites/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-le v5, v6, :cond_5

    if-nez v2, :cond_5

    .line 307
    iget v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    .line 311
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 312
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->f(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 313
    iget-boolean v5, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->al:Z

    if-eqz v5, :cond_6

    .line 314
    iget-object v5, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v5, v1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDropTargetId(J)V

    .line 315
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 317
    :cond_6
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->i()I

    move-result v5

    .line 318
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v6

    .line 319
    iget-object v7, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    iget v8, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    invoke-virtual {v7, v8, v1}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(II)V

    .line 320
    iput v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    .line 323
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 324
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 325
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(II)V

    goto :goto_4

    .line 327
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 328
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->e(II)V

    .line 335
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aj:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getPaddingTop()I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 336
    :goto_5
    iget-boolean v5, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aj:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getHeight()I

    move-result v5

    .line 337
    :goto_6
    iget-boolean v6, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aj:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getPaddingLeft()I

    move-result v6

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    .line 338
    :goto_7
    iget-boolean v7, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aj:Z

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getWidth()I

    move-result v7

    .line 339
    :goto_8
    iget-object v8, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v3

    .line 6076
    invoke-virtual {p0, v8, v4}, Landroidx/recyclerview/widget/RecyclerView;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v8

    .line 7076
    invoke-virtual {p0, v4, v4}, Landroidx/recyclerview/widget/RecyclerView;->a(IZ)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v9

    .line 343
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-ne v2, v3, :cond_e

    if-eqz v8, :cond_d

    .line 344
    iget-object v2, v8, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt v2, v5, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    if-eqz v9, :cond_10

    .line 347
    iget-object v5, v9, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v1, :cond_10

    goto :goto_b

    :cond_e
    if-eqz v8, :cond_f

    .line 351
    iget-object v1, v8, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    if-gt v1, v7, :cond_f

    const/4 v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-eqz v9, :cond_10

    .line 354
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt v1, v6, :cond_10

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    .line 361
    :goto_b
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragItem;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_11

    if-nez v2, :cond_11

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->LEFT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;)V

    return-void

    .line 363
    :cond_11
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragItem;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_12

    if-nez v3, :cond_12

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;->RIGHT:Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(Lcom/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection;)V

    return-void

    .line 366
    :cond_12
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    .line 8064
    iput-boolean v4, v0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    :cond_13
    :goto_c
    return-void
.end method

.method isDragging()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final j()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->S:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragState;

    if-ne v0, v1, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ad:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    const/4 v1, 0x0

    .line 9064
    iput-boolean v1, v0, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a:Z

    .line 426
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setEnabled(Z)V

    .line 428
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->al:Z

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->getDropTargetId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->a(II)V

    .line 432
    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->W:I

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDropTargetId(J)V

    .line 438
    :cond_2
    new-instance v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;-><init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 127
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ak:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ai:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    .line 137
    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ah:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ai:F

    .line 143
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 204
    instance-of v0, p1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Adapter must extend DragItemAdapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 209
    instance-of v0, p1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    if-eqz v0, :cond_2

    .line 210
    check-cast p1, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->T:Lcom/callapp/contacts/activity/favorites/DragItemAdapter;

    :cond_2
    return-void
.end method

.method setCanNotDragAboveTopItem(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aa:Z

    return-void
.end method

.method setCanNotDragBelowBottomItem(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ab:Z

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 198
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->aj:Z

    return-void
.end method

.method setDisableReorderWhenDragging(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->al:Z

    return-void
.end method

.method setDragEnabled(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ac:Z

    return-void
.end method

.method setDragItem(Lcom/callapp/contacts/activity/favorites/DragItem;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->U:Lcom/callapp/contacts/activity/favorites/DragItem;

    return-void
.end method

.method setDragItemCallback(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->R:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;

    return-void
.end method

.method setDragItemListener(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->Q:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;

    return-void
.end method

.method public setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ae:Landroid/graphics/drawable/Drawable;

    .line 172
    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->af:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 230
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 231
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Layout must be an instance of LinearLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setScrollingEnabled(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->ak:Z

    return-void
.end method
