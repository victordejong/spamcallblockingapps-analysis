.class public Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
.super Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;,
        Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;
    }
.end annotation


# instance fields
.field public Q:Z

.field public R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

.field public S:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

.field private W:Z

.field private final aa:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->Q:Z

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->aa:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0601d2

    invoke-static {p2, p3}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 54
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private static a(Lit/gmariotti/cardslib/library/view/a/a;)Landroid/view/View;
    .locals 0

    .line 135
    invoke-interface {p0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->S:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->W:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    return-object v0
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 5

    .line 66
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;

    .line 74
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isAllowedExpandAnimation()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 80
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->a(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    goto :goto_2

    .line 83
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 86
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 87
    invoke-virtual {p2, v2, v4}, Landroid/view/View;->measure(II)V

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {p2, v2}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 91
    invoke-interface {p1, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setExpanded(Z)V

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    .line 1182
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1184
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, p2, :cond_3

    .line 1173
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1175
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->notifyItemChanged(I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getOnExpandAnimatorEndListener()Lit/gmariotti/cardslib/library/a/b$d;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 99
    invoke-interface {p2}, Lit/gmariotti/cardslib/library/a/b$d;->a()V

    .line 104
    :cond_4
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isCardVisibleOnScreen()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result p2

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->W:Z

    if-nez p2, :cond_5

    .line 105
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->b(I)V

    .line 109
    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lit/gmariotti/cardslib/library/view/a/a;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 111
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xb4

    invoke-static {p1, v3, p2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;II)V

    :cond_6
    return-void
.end method

.method public final a_(II)V
    .locals 0

    return-void
.end method

.method public final b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V
    .locals 1

    .line 118
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->b(Lit/gmariotti/cardslib/library/view/a/a;Landroid/view/View;)V

    .line 128
    invoke-static {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Lit/gmariotti/cardslib/library/view/a/a;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 130
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0xb4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 60
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->aa:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->e()V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->W:Z

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    :cond_0
    return-void
.end method

.method public isAutoScrolling()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->W:Z

    return v0
.end method

.method public isUserTouchedItOrItsChildrenOnce()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->Q:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->i()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->S:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 211
    invoke-super {p0}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->onDetachedFromWindow()V

    .line 212
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->j()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->Q:Z

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setToInitialState()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->b(I)V

    .line 167
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->Q:Z

    return-void
.end method
