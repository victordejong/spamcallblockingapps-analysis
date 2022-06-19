.class public Lcom/callapp/contacts/activity/blocked/BlockedAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;,
        Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;,
        Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

.field private d:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;",
            "Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 53
    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    .line 54
    iput-object p3, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 3

    .line 82
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    check-cast p2, Lcom/callapp/contacts/model/ReminderData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    .line 86
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    .line 85
    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;ILcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V

    :goto_0
    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Block and Spam"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 93
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->BLOCKED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1061
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0120

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1062
    new-instance p2, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V

    return-object p2

    .line 1065
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0164

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1066
    new-instance p2, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V

    return-object p2

    .line 1069
    :cond_2
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 1079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 1070
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 1071
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CUSTOM_TWO_IMAGES:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 1073
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 1074
    new-instance p2, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method
