.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
        "Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;",
        ">;",
        "Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;"
    }
.end annotation


# instance fields
.field private final c:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 33
    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 3

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "CallAppPlus"

    const-string v2, "remove from favorites"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    .line 67
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic lambda$zSkaznmn4hFg7rkv5QkmMmq_Ab8(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 1

    .line 73
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    const/4 v0, 0x1

    .line 74
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object p2

    .line 75
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 6

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    move-object v1, p2

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 1048
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 1

    .line 63
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setStarred(Z)V

    .line 64
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredAdapter$zSkaznmn4hFg7rkv5QkmMmq_Ab8;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusStarredAdapter$zSkaznmn4hFg7rkv5QkmMmq_Ab8;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getContextMenuAnalyticsTag()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppPlus"

    return-object v0
.end method

.method public getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 53
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_STARRED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2039
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CALLAPP_PLUS_LAYOUT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2041
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2043
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    const v0, 0x7f0a076a

    const v1, 0x7f0a076b

    invoke-direct {p2, p1, v0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V

    return-object p2
.end method
