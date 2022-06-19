.class public Lcom/callapp/contacts/activity/blocked/SpamFragment;
.super Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        ">;",
        "Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a:Ljava/util/Set;

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->setData(Ljava/util/List;)V

    .line 106
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->toggleEmptyViewIfNeeded()V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->hideLoadingProgress()V

    return-void
.end method

.method private synthetic a(Ljava/util/Set;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContacts()Ljava/util/List;

    move-result-object v3

    .line 73
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/ReminderData;

    .line 75
    iget-object v5, v5, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager;->getAllSpamData()Ljava/util/List;

    move-result-object v3

    .line 80
    invoke-static {}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->getAllUserSpam()Ljava/util/List;

    move-result-object v5

    .line 83
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/objectbox/UserSpamData;

    .line 84
    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->isSpam()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v9

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/UserSpamData;->getPhone()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 87
    new-instance v9, Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    const-wide/16 v11, -0x1

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v7, v8}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    sget-object v18, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    const/16 v20, 0x1

    move-object v10, v9

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v20}, Lcom/callapp/contacts/activity/blocked/SpamReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;ZZ)V

    .line 88
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/SpamData;

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v6

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/SpamData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 98
    new-instance v6, Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    const-wide/16 v10, -0x1

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v7, v8}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    sget-object v17, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    const/16 v19, 0x0

    move-object v9, v6

    move-object v15, v5

    invoke-direct/range {v9 .. v19}, Lcom/callapp/contacts/activity/blocked/SpamReminderData;-><init>(JLjava/util/Date;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderType;ZZ)V

    .line 99
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$778lfUWbxsAtUgG00f8N_YCRrJI;

    invoke-direct {v3, v0, v2}, Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$778lfUWbxsAtUgG00f8N_YCRrJI;-><init>(Lcom/callapp/contacts/activity/blocked/SpamFragment;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic d()V
    .locals 2

    .line 122
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$-L4egDtANqGcjdt7u9cLdfsKWW4()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->d()V

    return-void
.end method

.method public static synthetic lambda$778lfUWbxsAtUgG00f8N_YCRrJI(Lcom/callapp/contacts/activity/blocked/SpamFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$jPEX8Gl6KAYvdFi7cO6ypdGSPxI(Lcom/callapp/contacts/activity/blocked/SpamFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 115
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->isDataLoaded:Z

    .line 160
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 3091
    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public getAdUnitIdsConfiguration()Ljava/lang/String;
    .locals 2

    .line 143
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataChangeOrigin()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getEmptyViewData()Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;
    .locals 3

    .line 148
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;

    const v1, 0x7f12067d

    .line 149
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080296

    invoke-direct {v0, v2, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$EmptyViewData;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "SpamListExperiments"

    return-object v0
.end method

.method public getFragmentType()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 54
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v1}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getHintBuilder()Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
    .locals 2

    .line 120
    new-instance v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;-><init>()V

    const v1, 0x7f08049f

    .line 1090
    iput v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->a:I

    .line 121
    sget-object v1, Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$-L4egDtANqGcjdt7u9cLdfsKWW4;->INSTANCE:Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$-L4egDtANqGcjdt7u9cLdfsKWW4;

    .line 1100
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->e:Ljava/lang/Runnable;

    const v1, 0x7f12067c

    .line 123
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2080
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->b:Ljava/lang/CharSequence;

    const v1, 0x7f12067b

    .line 124
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2085
    iput-object v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->c:Ljava/lang/CharSequence;

    const v1, 0x7f0601ec

    .line 2095
    iput v1, v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->d:I

    return-object v0
.end method

.method public getHintType()Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;
    .locals 1

    .line 170
    sget-object v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;->REGULAR:Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint$HintType;

    return-object v0
.end method

.method public synthetic getNewAdapter(Ljava/lang/Object;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;
    .locals 2

    .line 42
    check-cast p1, Ljava/util/List;

    .line 3130
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->getScrollEvents()Lcom/callapp/contacts/activity/base/ScrollEvents;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 3132
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->getAdUnitIdsConfiguration()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    .line 3133
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->originalAdapter:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/app/Activity;Lcom/callapp/contacts/util/ads/AdSettings;Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;)Lcom/callapp/contacts/activity/base/CallAppMoPubRecyclerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public isPartOfViewPagerActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppFragmentWithHint;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->refreshData()V

    return-void
.end method

.method public refreshData()V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->isDataLoaded:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/blocked/SpamFragment;->isDataLoaded:Z

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/SpamFragment;->showLoadingProgress()V

    .line 70
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$jPEX8Gl6KAYvdFi7cO6ypdGSPxI;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/blocked/-$$Lambda$SpamFragment$jPEX8Gl6KAYvdFi7cO6ypdGSPxI;-><init>(Lcom/callapp/contacts/activity/blocked/SpamFragment;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
