.class public Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 26
    iput-object p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    .line 1031
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->getViewType()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 1032
    check-cast p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;->a(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_0

    .line 1050
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0308

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1051
    new-instance p2, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewHolder;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
