.class public Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;


# instance fields
.field private a:I

.field private b:[Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/callapp/contacts/event/bus/EventBus;)V
    .locals 13

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    .line 74
    iput p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a:I

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    .line 76
    new-instance v9, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;

    if-eqz p1, :cond_0

    const v0, 0x7f1207b7

    goto :goto_0

    :cond_0
    const v0, 0x7f1207b5

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f1207b6

    goto :goto_1

    :cond_1
    const v0, 0x7f1207b4

    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1200ea

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1207b3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_2

    const v0, 0x7f0802fd

    const v5, 0x7f0802fd

    goto :goto_2

    :cond_2
    const v0, 0x7f080301

    const v5, 0x7f080301

    :goto_2
    const v6, 0x7f080304

    const/high16 v8, -0x80000000

    const-string v7, "Tutorial Beginning"

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;I)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 79
    sget-object v1, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$cy7BIKShqMmt8w5el5Q0APXfl94;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$cy7BIKShqMmt8w5el5Q0APXfl94;

    const v2, 0x7f120191

    const v3, 0x7f1207be

    const v4, 0x7f1207bf

    const v5, 0x7f0804f9

    const v6, 0x7f0802fa

    const/4 v8, 0x1

    const-string v7, "Caller ID"

    .line 80
    invoke-static/range {v1 .. v8}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIILjava/lang/String;I)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$P_BxH67CF4mb3NAUdKhDaukb5YE;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$P_BxH67CF4mb3NAUdKhDaukb5YE;

    const v4, 0x7f1207b1

    const v5, 0x7f1207b0

    const v6, 0x7f120097

    const v7, 0x7f1207b2

    const v8, 0x7f0804f6

    const v9, 0x7f0802f8

    const/4 v11, 0x2

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Auto Start"

    .line 81
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$J26pDAqi_OMXbmyk5mwXXbJDNtA;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$J26pDAqi_OMXbmyk5mwXXbJDNtA;

    const v4, 0x7f1207ca

    const v5, 0x7f1207c9

    const v7, 0x7f1207cb

    const v8, 0x7f08050b

    const v9, 0x7f080302

    const/4 v11, 0x3

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Huawei Protected Apps"

    .line 82
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;

    const v4, 0x7f1207d5

    const v5, 0x7f1207d4

    const v7, 0x7f1207d6

    const v8, 0x7f080511

    const v9, 0x7f0804ed

    const/4 v11, 0x4

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Xiaomi Show on Lock Screen"

    .line 83
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$cheopprlIKPzdDeKhwMXyzCEyaw;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$cheopprlIKPzdDeKhwMXyzCEyaw;

    const v4, 0x7f1207d3

    const v5, 0x7f1207d2

    const v8, 0x7f080508

    const v9, 0x7f0804ee

    const/16 v11, 0xd

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/MIUIAppBatterSaverCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "MIUI Batter saver"

    .line 84
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$UYwWBmq8GjSsjCcqZfeZAQl5K-U;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$UYwWBmq8GjSsjCcqZfeZAQl5K-U;

    const v4, 0x7f1207c2

    const v5, 0x7f1207c1

    const v6, 0x7f1202dc

    const v7, 0x7f1207c3

    const v8, 0x7f080501

    const v9, 0x7f0802fc

    const/4 v11, 0x5

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Draw over other apps"

    .line 85
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$wxWJnjtqNCL2x9ubW3DgnpFmo8E;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$wxWJnjtqNCL2x9ubW3DgnpFmo8E;

    const v4, 0x7f1207db

    const v5, 0x7f1207da

    const v6, 0x7f120616

    const v7, 0x7f1207c0

    const v8, 0x7f0804fd

    const v9, 0x7f0802fb

    const/4 v11, 0x6

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Set as default"

    .line 86
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$hicsqpVizjX1pzLEvHP3U33fxZE;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$hicsqpVizjX1pzLEvHP3U33fxZE;

    const v4, 0x7f1207d9

    const v5, 0x7f1207d8

    const v6, 0x7f1202dc

    const v7, 0x7f1207d9

    const v8, 0x7f08050e

    const v9, 0x7f080305

    const/4 v11, 0x7

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Run in background"

    .line 87
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x8

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$TW5_dIwkBSDKLuRTmETZ9JvbKyM;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$TW5_dIwkBSDKLuRTmETZ9JvbKyM;

    const v4, 0x7f1207dd

    const v5, 0x7f1207dc

    const v6, 0x7f120225

    const v7, 0x7f1207de

    const v8, 0x7f08050f

    const v9, 0x7f080306

    const/16 v11, 0x8

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Social Sync"

    .line 88
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$QWTxJuEwKZvqo9MuS-5rGzb8lBc;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$QWTxJuEwKZvqo9MuS-5rGzb8lBc;

    const v4, 0x7f1207bc

    const v5, 0x7f1207bb

    const v6, 0x7f120097

    const v7, 0x7f1207bd

    const v8, 0x7f0804f8

    const v9, 0x7f0802f9

    const/16 v11, 0x9

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "CallApp Plus"

    .line 89
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$4NAhLI9Qku0hPXRgWeBc_27Cwr8;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$4NAhLI9Qku0hPXRgWeBc_27Cwr8;

    const v4, 0x7f1207b9

    const v5, 0x7f1207b8

    const v6, 0x7f1207ba

    const v7, 0x7f08050c

    const v8, 0x7f080303

    const/16 v10, 0xa

    const-string v9, "Call Recording"

    .line 90
    invoke-static/range {v3 .. v10}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIILjava/lang/String;I)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xb

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$kaP_y4QeQtY3BSTnxIYlU4W3T3s;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$kaP_y4QeQtY3BSTnxIYlU4W3T3s;

    const v4, 0x7f1207d0

    const v5, 0x7f1207cf

    const v6, 0x7f1202dc

    const v7, 0x7f1207d1

    const v8, 0x7f080507

    const v9, 0x7f080300

    const/16 v11, 0xb

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Location"

    .line 91
    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xc

    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$65kG6WaM2oYF9u7aDLbPfPp3YJc;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$65kG6WaM2oYF9u7aDLbPfPp3YJc;

    const v4, 0x7f1207cd

    const v5, 0x7f1207cc

    const v6, 0x7f1207ce

    const v7, 0x7f080506

    const v8, 0x7f0802ff

    const/16 v10, 0xc

    const-string v9, "Incognito Mode"

    .line 92
    invoke-static/range {v3 .. v10}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIILjava/lang/String;I)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v3

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->b:[Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 95
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 96
    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 99
    :cond_3
    sget-object v3, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$v2b_rk93vFjmc-fQSQTWNZQODeM;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialPageRepository$v2b_rk93vFjmc-fQSQTWNZQODeM;

    if-eqz p1, :cond_4

    const v0, 0x7f1207c7

    const v4, 0x7f1207c7

    goto :goto_4

    :cond_4
    const v0, 0x7f1207c6

    const v4, 0x7f1207c6

    :goto_4
    if-eqz p1, :cond_5

    const v0, 0x7f1207c5

    const v5, 0x7f1207c5

    goto :goto_5

    :cond_5
    const v0, 0x7f1207c4

    const v5, 0x7f1207c4

    :goto_5
    if-eqz p1, :cond_6

    const v0, 0x7f120354

    const v6, 0x7f120354

    goto :goto_6

    :cond_6
    const v0, 0x7f1204cd

    const v6, 0x7f1204cd

    :goto_6
    if-eqz p1, :cond_7

    const v0, 0x7f1207c8

    const v7, 0x7f1207c8

    goto :goto_7

    :cond_7
    const v0, 0x7f1207d7

    const v7, 0x7f1207d7

    :goto_7
    if-eqz p1, :cond_8

    const v0, 0x7f080503

    const v8, 0x7f080503

    goto :goto_8

    :cond_8
    const v0, 0x7f080502

    const v8, 0x7f080502

    :goto_8
    if-eqz p1, :cond_9

    const p1, 0x7f0802fe

    const v9, 0x7f0802fe

    goto :goto_9

    :cond_9
    const p1, 0x7f080308

    const v9, 0x7f080308

    :goto_9
    const v11, 0x7fffffff

    new-instance v12, Lcom/callapp/contacts/widget/tutorial/command/EndTutorialCommand;

    invoke-direct {v12, p2}, Lcom/callapp/contacts/widget/tutorial/command/EndTutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const-string v10, "Tutorial Ending"

    invoke-static/range {v3 .. v12}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/callapp/contacts/util/Predicate;IIIIIILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
    .locals 12

    .line 115
    new-instance v11, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v11

    move-object v1, p0

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;-><init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILcom/callapp/contacts/widget/tutorial/command/TutorialCommand;)V

    return-object v11
.end method

.method private static a(Lcom/callapp/contacts/util/Predicate;IIIIILjava/lang/String;I)Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
    .locals 10

    .line 111
    new-instance v9, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move-object v1, p0

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;-><init>(Lcom/callapp/contacts/util/Predicate;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;I)V

    return-object v9
.end method

.method private static a(I)Z
    .locals 4

    .line 221
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fV:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Z
    .locals 2

    .line 201
    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->f()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 131
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    array-length v1, v0

    new-array v1, v1, [Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    const/4 v2, 0x0

    .line 133
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static e()Z
    .locals 3

    .line 205
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fV:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 210
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "Tutorial Beginning"

    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 211
    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static f()Z
    .locals 2

    .line 215
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 216
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Tutorial Beginning"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 217
    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic i()Z
    .locals 1

    .line 91
    sget-object v0, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->arePermissionsGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic j()Z
    .locals 2

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic k()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic l()Z
    .locals 1

    .line 88
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$4NAhLI9Qku0hPXRgWeBc_27Cwr8()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->j()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$65kG6WaM2oYF9u7aDLbPfPp3YJc()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->h()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$QWTxJuEwKZvqo9MuS-5rGzb8lBc()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->k()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$TW5_dIwkBSDKLuRTmETZ9JvbKyM()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->l()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$UYwWBmq8GjSsjCcqZfeZAQl5K-U()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->o()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$cheopprlIKPzdDeKhwMXyzCEyaw()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->p()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$cy7BIKShqMmt8w5el5Q0APXfl94()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->q()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$hicsqpVizjX1pzLEvHP3U33fxZE()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->m()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$kaP_y4QeQtY3BSTnxIYlU4W3T3s()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->i()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$v2b_rk93vFjmc-fQSQTWNZQODeM()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$wxWJnjtqNCL2x9ubW3DgnpFmo8E()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->n()Z

    move-result v0

    return v0
.end method

.method private static synthetic m()Z
    .locals 2

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isIgnoringBatteryOptimizations()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic n()Z
    .locals 2

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic o()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic p()Z
    .locals 1

    .line 84
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/miui/MIUIHelper;->getMIUIBatterSaverIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static synthetic q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .line 167
    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;)V"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 152
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "@@@"

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 2197
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 183
    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c()Z

    move-result v0

    return v0
.end method

.method public getBeginningTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    const-string v1, "Tutorial Beginning"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;

    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->a:I

    return v0
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 1

    .line 178
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEndingTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c:Ljava/util/Map;

    const-string v1, "Tutorial Ending"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    return-object v0
.end method

.method public getTutorialPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->d()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->b:[Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentPagePosition(Ljava/lang/String;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    return-void
.end method
