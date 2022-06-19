.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addPoint(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $globalPhoneNumber:Ljava/lang/String;

.field final synthetic $notifyUser:Z

.field final synthetic $points:I

.field final synthetic $referId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$referId:Ljava/lang/String;

    iput p2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$points:I

    iput-object p3, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$globalPhoneNumber:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$notifyUser:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 12

    .line 151
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->access$getBoxReferAndEarnData$cp()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnData_;->referId:Lio/objectbox/g;

    iget-object v2, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$referId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    if-eqz v0, :cond_e

    .line 153
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "ReferAndEarn"

    const-string v3, "InviterReferInstall"

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$points:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v1, :cond_5

    .line 156
    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getEarnedPoints()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->setEarnedPoints(I)V

    if-nez v6, :cond_4

    .line 158
    sget-object v6, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferAndEarnRewardsData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    invoke-virtual {v9}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v10

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getEarnedPoints()I

    move-result v11

    if-ne v10, v11, :cond_1

    invoke-virtual {v9}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_0

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    check-cast v8, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    move-object v6, v8

    goto :goto_3

    :cond_3
    move-object v6, v4

    .line 160
    :cond_4
    :goto_3
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->ht:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2039
    invoke-virtual {v8, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    :cond_5
    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getReferAndEarnUserDataToMany()Lio/objectbox/relation/ToMany;

    move-result-object v1

    const-string v5, "referAndEarnUserDataToMany"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    const-string v9, "it"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getGlobalPhoneNumber()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$globalPhoneNumber:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    check-cast v5, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    if-eqz v5, :cond_8

    .line 164
    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->INSTALLED:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v5, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->setStatus(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->setDate(J)V

    .line 166
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->access$getBoxReferAndEarnUserData$cp()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 169
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->access$getBoxReferAndEarnData$cp()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 171
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updatePointsFromInvites()V

    .line 173
    iget-boolean v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$notifyUser:Z

    if-eqz v0, :cond_d

    if-eqz v6, :cond_9

    .line 175
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v3, "CallAppApplication.get()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->onStageReachedDialog(Landroid/content/Context;)V

    .line 176
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v3, "milestone.title"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v3, Lkotlin/h/l;

    const-string v4, "\\s"

    invoke-direct {v3, v4}, Lkotlin/h/l;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "InviteStoreStatusChange"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 179
    :cond_9
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addPoint$1;->$globalPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 180
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->access$getBoxReferAndEarnUserData$cp()Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData_;->globalPhoneNumber:Lio/objectbox/g;

    invoke-virtual {v1, v5, v0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    goto :goto_5

    :cond_a
    move-object v0, v4

    .line 182
    :goto_5
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v4

    .line 2572
    :cond_b
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const-class v6, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "EXTRA_ENTRY_POINT"

    const-string v6, "ClickInviteInstallNotification"

    .line 2573
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x10008000

    .line 2574
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2575
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-static {v5, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2577
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    const v4, 0x7f1205c4

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2578
    :goto_6
    sget-object v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REFER_AND_EARN_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v5

    const v6, 0x7f0804a6

    .line 2579
    invoke-virtual {v5, v6}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v5

    const v6, 0x7f1205b8

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v3

    .line 2580
    invoke-static {v6, v8}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    const v4, 0x7f1205b7

    .line 2581
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v3

    .line 3275
    iput v7, v3, Landroidx/core/app/g$e;->l:I

    .line 2582
    sget-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REFER_AND_EARN_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 2583
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->name()Ljava/lang/String;

    move-result-object v4

    .line 3319
    iput-object v4, v3, Landroidx/core/app/g$e;->u:Ljava/lang/String;

    .line 3975
    iput-object v0, v3, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 2585
    invoke-virtual {v3, v7}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v0

    .line 2587
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->a:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 185
    :cond_d
    :goto_7
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ht:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "InvitePointsStatusChange"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method
