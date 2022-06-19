.class public Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

.field private c:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;",
            "Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;",
            "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->a:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 2

    .line 17
    check-cast p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;

    .line 1038
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->b:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    iget-object v1, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2031
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d02fd

    const/4 v1, 0x0

    .line 2032
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2033
    new-instance p2, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/invite/viewholder/InviteHorizontalItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
