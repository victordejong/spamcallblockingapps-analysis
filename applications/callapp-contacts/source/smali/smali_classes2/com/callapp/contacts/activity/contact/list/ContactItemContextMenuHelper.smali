.class public Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 1

    .line 58
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->getContactLoader()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;IZZLcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;IZZ",
            "Lcom/callapp/contacts/action/ActionDoneListener;",
            ")V"
        }
    .end annotation

    .line 67
    new-instance v5, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$1;

    invoke-direct {v5, p5}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$1;-><init>(Lcom/callapp/contacts/action/ActionDoneListener;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteCallLogEntries(Landroid/content/Context;Ljava/util/List;IZZLandroid/content/DialogInterface$OnClickListener;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 185
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$5;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$5;-><init>()V

    invoke-static {p0, v0}, Lcom/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment;->deleteEntireDeviceCallLog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V
    .locals 1

    .line 196
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/CallLogSorter;->a:Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 142
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;-><init>(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/ActionDoneListener;)V

    .line 181
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 200
    invoke-static/range {v0 .. v9}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;Z)V
    .locals 12

    if-eqz p4, :cond_0

    .line 205
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Interact contact from long press"

    const-string v3, "Long Click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-class v0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Phone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", contactId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 208
    new-instance v11, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;

    move-object v0, v11

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/content/Context;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;Z)V

    .line 236
    invoke-virtual {v11}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ">;",
            "Lcom/callapp/contacts/action/ActionDoneListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f120287

    goto :goto_0

    :cond_1
    const v1, 0x7f120288

    .line 89
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    new-instance v11, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v4, 0x7f120289

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f120878

    .line 90
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f1204c5

    .line 91
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;

    invoke-direct {v9, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    new-instance v10, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$3;

    invoke-direct {v10, p2}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$3;-><init>(Lcom/callapp/contacts/action/ActionDoneListener;)V

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 89
    invoke-virtual {v3, p0, v11}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 83
    :cond_2
    :goto_1
    invoke-interface {p2, v0}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    return-void
.end method

.method private static getContactLoader()Lcom/callapp/contacts/loader/api/ContactLoader;
    .locals 6

    .line 241
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->records:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 242
    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/UserSpamLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/UserSpamLoader;-><init>()V

    .line 243
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;-><init>()V

    .line 244
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    .line 245
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationTelegramLoader;-><init>()V

    .line 246
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/external/NotificationViberLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/external/NotificationViberLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    invoke-direct {v1, v4}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/BlockedNumberLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/BlockedNumberLoader;-><init>()V

    .line 248
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/UserCorrectedInfoLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setIterativeLoad()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    return-object v0
.end method
