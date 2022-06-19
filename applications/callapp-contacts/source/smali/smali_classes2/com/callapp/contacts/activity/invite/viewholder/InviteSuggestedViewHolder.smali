.class public Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;
    }
.end annotation


# instance fields
.field public final s:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;

.field public v:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;)V
    .locals 4

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->s:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    const v1, 0x7f0a04a6

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 35
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p1

    .line 36
    instance-of v1, p1, Landroidx/recyclerview/widget/n;

    if-eqz v1, :cond_0

    .line 37
    check-cast p1, Landroidx/recyclerview/widget/n;

    .line 1071
    iput-boolean v3, p1, Landroidx/recyclerview/widget/n;->l:Z

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 41
    iput-object p2, p0, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->v:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    return-void
.end method
