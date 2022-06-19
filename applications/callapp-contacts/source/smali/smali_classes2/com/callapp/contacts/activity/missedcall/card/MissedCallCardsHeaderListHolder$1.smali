.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;Ljava/util/List;Z)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    new-instance v7, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    move-result-object v4

    iget-object v6, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    move-object v1, v7

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;Ljava/util/List;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;)V

    iput-object v7, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {v2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 189
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->c:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;->b:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->setOnlyPromotions(Z)V

    return-void

    .line 191
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
