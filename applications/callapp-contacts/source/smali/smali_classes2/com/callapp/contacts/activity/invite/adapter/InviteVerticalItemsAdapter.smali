.class public Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;
.implements Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;",
        "Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;",
        "Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/base/ScrollEvents;

.field private d:Z

.field private e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->d:Z

    .line 39
    iput-object p2, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 40
    iput-object p3, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    return-void
.end method

.method private f()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;->c()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 4

    .line 83
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 85
    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    .line 1094
    invoke-virtual {p2}, Lcom/callapp/contacts/model/SectionData;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x14

    .line 2035
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2036
    iget-object p1, p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;->s:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 87
    check-cast p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/invite/MultipleContactsData;

    .line 2099
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->d:Z

    .line 3048
    iget-object v2, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3049
    new-instance v0, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/invite/MultipleContactsData;->getMultipleContactsData()Ljava/util/List;

    move-result-object p2

    iget-object v2, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->v:Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;

    iget-object v3, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->s:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0, p2, v2, v3}, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;)V

    iput-object v0, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->u:Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;

    .line 3050
    iget-object p2, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->u:Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 3052
    iget-object p1, p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;->u:Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/invite/adapter/InviteHorizontalItemsAdapter;->notifyDataSetChanged()V

    .line 2100
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->d:Z

    return-void

    :cond_3
    if-eqz v0, :cond_4

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    .line 89
    :cond_4
    check-cast p1, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 3104
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;->a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/widget/CallAppCheckBox;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/widget/ProfilePictureView;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->e:Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Landroid/view/View;)V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->notifyDataSetChanged()V

    .line 112
    invoke-direct {p0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->f()V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->d:Z

    .line 125
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->notifyItemChanged(I)V

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->f()V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    .line 4059
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p2, :cond_3

    const/16 v1, 0x18

    if-eq p2, v1, :cond_2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const p2, 0x7f0d0305

    .line 4066
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4067
    new-instance p2, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/invite/viewholder/InviteSuggestedViewHolder$OnSuggestionClickListener;)V

    return-object p2

    :cond_1
    const p2, 0x7f0d016e

    .line 4062
    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4063
    new-instance p2, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/SectionViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 4073
    :cond_2
    new-instance p2, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;

    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6074
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4073
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6079
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4074
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_BUTTONS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 6084
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4075
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;)V

    return-object p2

    .line 4069
    :cond_3
    new-instance p2, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;

    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5074
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4069
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5079
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4070
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 5084
    iput-object p1, v0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 4071
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/invite/viewholder/InviteVerticalViewHolder$OnInviteCheckChangeListener;)V

    return-object p2
.end method

.method public setForceNotifyHorizontalItems(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;->d:Z

    return-void
.end method
