.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"

# interfaces
.implements La/a/a/a/a/b;
.implements Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
        "Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;",
        ">;",
        "La/a/a/a/a/b<",
        "Lcom/callapp/contacts/activity/base/SectionViewHolder;",
        ">;",
        "Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 41
    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->c:Ljava/util/Map;

    .line 42
    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "CallAppPlus"

    const-string v2, "Add to favorites"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcom/callapp/contacts/manager/contacts/ContactPlusUtils;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    .line 101
    sget-object p0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 4091
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic lambda$a2ieTpzGf_4CcmOex2D5X2rSkTQ(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    .line 4067
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d016e

    const/4 v2, 0x0

    .line 4068
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4069
    new-instance v0, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/base/SectionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 1

    .line 107
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p2

    const/4 v0, 0x1

    .line 108
    invoke-static {p2, v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Z)Landroid/content/Intent;

    move-result-object p2

    .line 109
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic a(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 1

    .line 34
    check-cast p1, Lcom/callapp/contacts/activity/base/SectionViewHolder;

    .line 3075
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 3076
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getSectionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/SectionData;

    .line 3077
    invoke-virtual {p2}, Lcom/callapp/contacts/model/SectionData;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 3078
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060111

    .line 3079
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setBackgroundColor(I)V

    return-void

    :cond_0
    const p2, 0x7f0600ab

    .line 3081
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/SectionViewHolder;->setBackgroundColor(I)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 6

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    move-object v1, p2

    check-cast v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    .line 1057
    iget-object v2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->d:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->getContextMenuType()Lcom/callapp/contacts/action/Action$ContextType;

    move-result-object v4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->getContextMenuAnalyticsTag()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;->a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;Z)V
    .locals 1

    .line 97
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->setStarred(Z)V

    .line 98
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusAdapter$a2ieTpzGf_4CcmOex2D5X2rSkTQ;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/callappplus/-$$Lambda$CallAppPlusAdapter$a2ieTpzGf_4CcmOex2D5X2rSkTQ;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

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

    .line 87
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusAdapter;->getItemAt(I)Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;->getSectionId()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2048
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CALLAPP_PLUS_LAYOUT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2050
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2052
    new-instance p2, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    const v0, 0x7f0a076a

    const v1, 0x7f0a076b

    invoke-direct {p2, p1, v0, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;II)V

    return-object p2
.end method
