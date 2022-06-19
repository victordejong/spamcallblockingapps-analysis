.class public Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;",
        "Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method

.method private static synthetic b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    .line 100
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 101
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f120183

    .line 102
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f120184

    .line 103
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 v0, 0x11

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic lambda$jHKS_AtQkCyFMlpAjLmJssNk-74(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->b(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 1

    .line 110
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    const/4 v0, 0x1

    .line 111
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object p2

    .line 112
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 6

    .line 35
    check-cast p2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 1076
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1079
    :cond_0
    check-cast p2, Lcom/callapp/contacts/activity/base/HeaderSectionData;

    .line 1080
    check-cast p1, Lcom/callapp/contacts/activity/base/HeaderViewHolder;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/HeaderSectionData;->getHeaderName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/HeaderViewHolder;->a(Ljava/lang/String;)V

    return-void

    .line 1084
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    .line 1085
    move-object v1, p2

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 1087
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 2

    .line 97
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setStarred(Z)V

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk-74;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppPlus"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 46
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 2059
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060088

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    .line 2060
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0307

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2061
    new-instance v0, Lcom/callapp/contacts/activity/base/HeaderViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/activity/base/HeaderViewHolder;-><init>(Landroid/view/View;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 2064
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CALLAPP_PLUS_LAYOUT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2066
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2068
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    const v0, 0x7f0a076a

    const v1, 0x7f0a076b

    invoke-direct {p2, p1, v0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
