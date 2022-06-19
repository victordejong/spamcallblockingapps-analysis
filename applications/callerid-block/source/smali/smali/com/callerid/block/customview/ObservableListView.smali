.class public Lcom/callerid/block/customview/ObservableListView;
.super Landroid/widget/ListView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/customview/ObservableListView$SavedState;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/util/SparseIntArray;

.field private h:Lcom/callerid/block/customview/c;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/customview/c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/callerid/block/customview/ScrollState;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/view/MotionEvent;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/AbsListView$OnScrollListener;

.field private q:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    new-instance p1, Lcom/callerid/block/customview/ObservableListView$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/customview/ObservableListView$a;-><init>(Lcom/callerid/block/customview/ObservableListView;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    new-instance p1, Lcom/callerid/block/customview/ObservableListView$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/customview/ObservableListView$a;-><init>(Lcom/callerid/block/customview/ObservableListView;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    new-instance p1, Lcom/callerid/block/customview/ObservableListView$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/customview/ObservableListView$a;-><init>(Lcom/callerid/block/customview/ObservableListView;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/customview/ObservableListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/ObservableListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/customview/ObservableListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->h()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->h:Lcom/callerid/block/customview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callerid/block/customview/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/c;

    invoke-interface {v1}, Lcom/callerid/block/customview/c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->h:Lcom/callerid/block/customview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/callerid/block/customview/c;->c(IZZ)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/c;

    invoke-interface {v1, p1, p2, p3}, Lcom/callerid/block/customview/c;->c(IZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lcom/callerid/block/customview/ScrollState;)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->h:Lcom/callerid/block/customview/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/callerid/block/customview/c;->b(Lcom/callerid/block/customview/ScrollState;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/customview/c;

    invoke-interface {v1, p1}, Lcom/callerid/block/customview/c;->b(Lcom/callerid/block/customview/ScrollState;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->h:Lcom/callerid/block/customview/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private h()V
    .locals 6

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v1, v4, :cond_3

    iget-object v4, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v3, p0, Lcom/callerid/block/customview/ObservableListView;->b:I

    const/4 v4, 0x1

    if-ge v3, v0, :cond_7

    sub-int v3, v0, v3

    if-eq v3, v4, :cond_5

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/callerid/block/customview/ObservableListView;->b:I

    if-le v3, v5, :cond_6

    iget-object v5, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_2
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    iget v3, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    iget v5, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    :goto_3
    iput v3, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    goto :goto_6

    :cond_7
    if-ge v0, v3, :cond_b

    sub-int v5, v3, v0

    if-eq v5, v4, :cond_9

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_4
    if-le v3, v0, :cond_a

    iget-object v5, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    :goto_5
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :cond_a
    iget v3, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    goto :goto_3

    :cond_b
    if-nez v0, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    iput v2, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    :cond_c
    :goto_6
    iget v3, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    if-gez v3, :cond_d

    iput v2, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    :cond_d
    iget v3, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    mul-int v1, v1, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lcom/callerid/block/customview/ObservableListView;->f:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->b:I

    iget-boolean v0, p0, Lcom/callerid/block/customview/ObservableListView;->k:Z

    iget-boolean v1, p0, Lcom/callerid/block/customview/ObservableListView;->l:Z

    invoke-direct {p0, v3, v0, v1}, Lcom/callerid/block/customview/ObservableListView;->d(IZZ)V

    iget-boolean v0, p0, Lcom/callerid/block/customview/ObservableListView;->k:Z

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/callerid/block/customview/ObservableListView;->k:Z

    :cond_e
    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->e:I

    iget v1, p0, Lcom/callerid/block/customview/ObservableListView;->f:I

    if-ge v0, v1, :cond_f

    sget-object v0, Lcom/callerid/block/customview/ScrollState;->c:Lcom/callerid/block/customview/ScrollState;

    :goto_7
    iput-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->j:Lcom/callerid/block/customview/ScrollState;

    goto :goto_8

    :cond_f
    if-ge v1, v0, :cond_10

    sget-object v0, Lcom/callerid/block/customview/ScrollState;->d:Lcom/callerid/block/customview/ScrollState;

    goto :goto_7

    :cond_10
    sget-object v0, Lcom/callerid/block/customview/ScrollState;->b:Lcom/callerid/block/customview/ScrollState;

    goto :goto_7

    :goto_8
    iput v1, p0, Lcom/callerid/block/customview/ObservableListView;->e:I

    :cond_11
    return-void
.end method


# virtual methods
.method public getCurrentScrollY()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->f:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/customview/ObservableListView;->l:Z

    iput-boolean v0, p0, Lcom/callerid/block/customview/ObservableListView;->k:Z

    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->c()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/callerid/block/customview/ObservableListView$SavedState;

    iget v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->b:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->b:I

    iget v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->c:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    iget v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->d:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    iget v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->e:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->e:I

    iget v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->f:I

    iput v0, p0, Lcom/callerid/block/customview/ObservableListView;->f:I

    iget-object v0, p1, Lcom/callerid/block/customview/ObservableListView$SavedState;->g:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/customview/ObservableListView$SavedState;

    invoke-direct {v1, v0}, Lcom/callerid/block/customview/ObservableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->b:I

    iput v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->b:I

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->c:I

    iput v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->c:I

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->d:I

    iput v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->d:I

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->e:I

    iput v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->e:I

    iget v0, p0, Lcom/callerid/block/customview/ObservableListView;->f:I

    iput v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->f:I

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->g:Landroid/util/SparseIntArray;

    iput-object v0, v1, Lcom/callerid/block/customview/ObservableListView$SavedState;->g:Landroid/util/SparseIntArray;

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    :try_start_0
    invoke-direct {p0}, Lcom/callerid/block/customview/ObservableListView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->n:Landroid/view/MotionEvent;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->n:Landroid/view/MotionEvent;

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/callerid/block/customview/ObservableListView;->n:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/callerid/block/customview/ObservableListView;->n:Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/callerid/block/customview/ObservableListView;->getCurrentScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/4 v0, 0x0

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_8

    iget-boolean v3, p0, Lcom/callerid/block/customview/ObservableListView;->m:Z

    if-eqz v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/callerid/block/customview/ObservableListView;->o:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_4
    const/4 v4, 0x0

    move-object v5, p0

    :goto_0
    if-eqz v5, :cond_5

    if-eq v5, v3, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v4, v6

    :try_start_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_5
    :try_start_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/callerid/block/customview/ObservableListView;->m:Z

    invoke-virtual {v5, v2}, Landroid/view/MotionEvent;->setAction(I)V

    new-instance v0, Lcom/callerid/block/customview/ObservableListView$b;

    invoke-direct {v0, p0, v3, v5}, Lcom/callerid/block/customview/ObservableListView$b;-><init>(Lcom/callerid/block/customview/ObservableListView;Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    iput-boolean v2, p0, Lcom/callerid/block/customview/ObservableListView;->m:Z

    iput-boolean v2, p0, Lcom/callerid/block/customview/ObservableListView;->l:Z

    iget-object v0, p0, Lcom/callerid/block/customview/ObservableListView;->j:Lcom/callerid/block/customview/ScrollState;

    invoke-direct {p0, v0}, Lcom/callerid/block/customview/ObservableListView;->e(Lcom/callerid/block/customview/ScrollState;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setScrollViewCallbacks(Lcom/callerid/block/customview/c;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->h:Lcom/callerid/block/customview/c;

    return-void
.end method

.method public setTouchInterceptionViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ObservableListView;->o:Landroid/view/ViewGroup;

    return-void
.end method
