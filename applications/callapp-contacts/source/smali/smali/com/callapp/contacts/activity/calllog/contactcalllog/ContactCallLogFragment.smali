.class public Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;
.super Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment<",
        "Lcom/callapp/contacts/activity/calllog/SingleCallLogData;",
        ">;",
        "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;"
    }
.end annotation


# instance fields
.field private contactName:Ljava/lang/String;

.field private phones:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Ljava/util/Collection;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->phones:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    return-object p0
.end method

.method private deleteAndRefresh(Landroid/content/Context;Ljava/util/List;ZLcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    new-instance v6, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;

    invoke-direct {v6, p0, p4, p5}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$5;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteCallLogEntries(Landroid/content/Context;Ljava/util/List;IZZLandroid/content/DialogInterface$OnClickListener;)Z

    :cond_0
    return-void
.end method

.method public static deleteCallLogEntries(Landroid/content/Context;Ljava/util/List;IZZLandroid/content/DialogInterface$OnClickListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IZZ",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    const p2, 0x7f1202a1

    .line 65
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f1202a0

    .line 66
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    move-object v3, p2

    move-object v4, p3

    goto :goto_1

    :cond_2
    if-le p2, v1, :cond_3

    const p3, 0x7f120568

    goto :goto_0

    :cond_3
    const p3, 0x7f120565

    .line 69
    :goto_0
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v2, 0x7f120569

    new-array v3, v1, [Ljava/lang/Object;

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    move-object v3, p3

    .line 73
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f120878

    .line 74
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1204c5

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;

    invoke-direct {v7, p4, p1, p5}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$3;-><init>(ZLjava/util/List;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v8, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$4;

    invoke-direct {v8}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$4;-><init>()V

    move-object v2, p3

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 73
    invoke-virtual {p2, p0, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v1
.end method

.method public static deleteEntireDeviceCallLog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 41
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120560

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f120398

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f120878

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1204c5

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$1;

    invoke-direct {v6, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$1;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v7, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$2;

    invoke-direct {v7}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$2;-><init>()V

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method


# virtual methods
.method public deleteAllPresentedCallLogEntries(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->getAllCallLogIds()Ljava/util/List;

    move-result-object v3

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-object v5, v0

    check-cast v5, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteAndRefresh(Landroid/content/Context;Ljava/util/List;ZLcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public deleteSelectedCallLogEntries(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->getSelectedRowsCallLogIds()Ljava/util/List;

    move-result-object v3

    .line 144
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-object v5, v0

    check-cast v5, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteAndRefresh(Landroid/content/Context;Ljava/util/List;ZLcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    return p1
.end method

.method public filterReq(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 190
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 191
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 192
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 193
    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 0

    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getNewAdapter(Ljava/util/List;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected getNewAdapter(Ljava/util/List;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 2

    .line 98
    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;-><init>(Lcom/callapp/contacts/activity/base/ScrollEvents;Ljava/util/List;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->contactName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast p1, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->contactName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->setContactName(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 126
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->phones:Ljava/util/Collection;

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->refreshData()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 118
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseMultiSelectListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f120130

    .line 119
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f12012f

    .line 120
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a037d

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f08033a

    const v2, 0x7f08033b

    invoke-static {p1, v1, v2, p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshData()V
    .locals 1

    .line 170
    new-instance v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;-><init>(Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;)V

    .line 184
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public setContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 203
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->contactName:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter;->setContactName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSingleContactPhone(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 138
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->phones:Ljava/util/Collection;

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->refreshData()V

    return-void
.end method
