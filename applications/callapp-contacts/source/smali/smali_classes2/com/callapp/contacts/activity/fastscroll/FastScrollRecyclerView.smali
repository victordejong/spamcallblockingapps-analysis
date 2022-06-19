.class public Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 157
    new-instance v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .line 132
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    .line 1180
    iput-object p0, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1181
    iget-object v1, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 1182
    iget-object v1, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 137
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 138
    check-cast v0, Landroid/view/ViewGroup;

    .line 139
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setLayoutParams(Landroid/view/ViewGroup;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    .line 1187
    iget-object v1, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const/4 v1, 0x0

    .line 1189
    iput-object v1, v0, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public setBubbleColor(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setBubbleColor(I)V

    return-void
.end method

.method public setBubbleTextColor(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setBubbleTextColor(I)V

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setEnabled(Z)V

    return-void
.end method

.method public setFastScrollStateChangeListener(Lcom/callapp/contacts/activity/fastscroll/FastScrollStateChangeListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setFastScrollStateChangeListener(Lcom/callapp/contacts/activity/fastscroll/FastScrollStateChangeListener;)V

    return-void
.end method

.method public setFastScrollerIndexer(Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setSectionIndexer(Lcom/callapp/contacts/activity/fastscroll/FastScroller$SectionIndexer;)V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHandleColor(I)V

    return-void
.end method

.method public setHideScrollbar(Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setHideScrollbar(Z)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setTrackColor(I)V

    return-void
.end method

.method public setTrackVisible(Z)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setTrackVisible(Z)V

    return-void
.end method

.method public setWideClickArea(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScrollRecyclerView;->Q:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->setFastScrollWidePadding(Z)V

    return-void
.end method
