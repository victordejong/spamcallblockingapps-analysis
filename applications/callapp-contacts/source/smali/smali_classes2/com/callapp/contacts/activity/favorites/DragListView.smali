.class public Lcom/callapp/contacts/activity/favorites/DragListView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallbackAdapter;,
        Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;,
        Lcom/callapp/contacts/activity/favorites/DragListView$DragListListenerAdapter;,
        Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

.field private b:Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

.field private c:Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

.field private d:Lcom/callapp/contacts/activity/favorites/DragItem;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->b:Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->e:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->f:F

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragListView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->a(FF)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->j()V

    :goto_0
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->c:Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/favorites/DragListView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->e:F

    return p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/favorites/DragListView;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->f:F

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/favorites/DragListView;)Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    return-object p0
.end method


# virtual methods
.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    new-instance v0, Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->d:Lcom/callapp/contacts/activity/favorites/DragItem;

    .line 1134
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    .line 1135
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setMotionEventSplittingEnabled(Z)V

    .line 1136
    new-instance v1, Landroidx/recyclerview/widget/c;

    invoke-direct {v1}, Landroidx/recyclerview/widget/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 1137
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 1138
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 1139
    new-instance v1, Lcom/callapp/contacts/activity/favorites/DragListView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/favorites/DragListView$1;-><init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDragItemListener(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemListener;)V

    .line 1165
    new-instance v1, Lcom/callapp/contacts/activity/favorites/DragListView$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/favorites/DragListView$2;-><init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDragItemCallback(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$DragItemCallback;)V

    .line 97
    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    .line 98
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->d:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDragItem(Lcom/callapp/contacts/activity/favorites/DragItem;)V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->d:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/favorites/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/favorites/DragListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/DragListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAdapter(Lcom/callapp/contacts/activity/favorites/DragItemAdapter;Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setHasFixedSize(Z)V

    .line 194
    iget-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 195
    new-instance p2, Lcom/callapp/contacts/activity/favorites/DragListView$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/favorites/DragListView$3;-><init>(Lcom/callapp/contacts/activity/favorites/DragListView;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemAdapter;->setDragStartedListener(Lcom/callapp/contacts/activity/favorites/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public setCanDragHorizontally(Z)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->d:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItem;->setCanDragHorizontally(Z)V

    return-void
.end method

.method public setCanNotDragAboveTopItem(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setCanNotDragAboveTopItem(Z)V

    return-void
.end method

.method public setCanNotDragBelowBottomItem(Z)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setCanNotDragBelowBottomItem(Z)V

    return-void
.end method

.method public setDisableReorderWhenDragging(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDisableReorderWhenDragging(Z)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDragEnabled(Z)V

    return-void
.end method

.method public setDragListCallback(Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->c:Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallback;

    return-void
.end method

.method public setDragListListener(Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->b:Lcom/callapp/contacts/activity/favorites/DragListView$DragListListener;

    return-void
.end method

.method public setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->setScrollingEnabled(Z)V

    return-void
.end method

.method public setSnapDragItemToTouch(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragListView;->d:Lcom/callapp/contacts/activity/favorites/DragItem;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/favorites/DragItem;->setSnapToTouch(Z)V

    return-void
.end method
