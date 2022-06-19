.class public Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;

.field public static final v:Ljava/lang/String;

.field public static final w:Ljava/lang/String;

.field public static final x:Ljava/lang/String;


# instance fields
.field private y:Lcom/google/firebase/remoteconfig/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactDetailsBigAdMultiSizeUnitIdTest"

    goto :goto_0

    :cond_0
    const-string v0, "ContactDetailsBigAdMultiSizeUnitId"

    :goto_0
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ContactDetailsSmallAdMultiSizeUnitIdTest"

    goto :goto_1

    :cond_1
    const-string v0, "ContactDetailsSmallAdMultiSizeUnitId"

    :goto_1
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ContactAnalyticsDetailsSmallAdMultiSizeUnitIdTest"

    goto :goto_2

    :cond_2
    const-string v0, "ContactAnalyticsDetailsSmallAdMultiSizeUnitId"

    :goto_2
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MissedCallAdMultiSizeUnitId"

    if-eqz v0, :cond_3

    const-string v0, "MissedCallAdMultiSizeUnitIdTest"

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->d:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NotAnsweredAdMultiSizeUnitIdTest"

    goto :goto_4

    :cond_4
    const-string v0, "NotAnsweredAdMultiSizeUnitId"

    :goto_4
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->e:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "CallAppPlusSummaryAdMultiSizeUnitIdTest"

    :cond_5
    sput-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->f:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SmsSmallAd1189MultiSizeUnitIdTest"

    goto :goto_5

    :cond_6
    const-string v0, "SmsSmallAd1189MultiSizeUnitId"

    :goto_5
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->g:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "CallRecorderContactAdMultiSizeUnitIdTest"

    goto :goto_6

    :cond_7
    const-string v0, "CallRecorderContactAdMultiSizeUnitId"

    :goto_6
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->h:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_8

    move-object v0, v1

    goto :goto_7

    :cond_8
    const-string v0, "ContactDetailsBigAdMultiSizeBidding"

    :goto_7
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->i:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_8

    :cond_9
    const-string v0, "ContactDetailsSmallAdMultiSizeBidding"

    :goto_8
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->j:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    goto :goto_9

    :cond_a
    const-string v0, "ContactAnalyticsDetailsSmallAdMultiSizeBidding"

    :goto_9
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->k:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_a

    :cond_b
    const-string v0, "InsightsSmallAdMultiSizeBidding"

    :goto_a
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->l:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    goto :goto_b

    :cond_c
    const-string v0, "InsightsBigAdMultiSizeBidding"

    :goto_b
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->m:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    goto :goto_c

    :cond_d
    const-string v0, "MissedCallAdMultiSizeBidding"

    :goto_c
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->n:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    goto :goto_d

    :cond_e
    const-string v0, "NotAnsweredAdMultiSizeBidding"

    :goto_d
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->o:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    goto :goto_e

    :cond_f
    const-string v0, "CallAppPlusSummaryAdMultiSizeBidding"

    :goto_e
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->p:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    goto :goto_f

    :cond_10
    const-string v0, "SmsSmallAd1189MultiSizeBidding"

    :goto_f
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->q:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_10

    :cond_11
    const-string v1, "CallRecorderContactAdMultiSizeBidding"

    :goto_10
    sput-object v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->r:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "ContactListMultiSizeUnitIdTest"

    goto :goto_11

    :cond_12
    const-string v0, "ContactListMultiSizeUnitId"

    :goto_11
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->s:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "CallLogMultiSizeUnitIdTest"

    goto :goto_12

    :cond_13
    const-string v0, "CallLogMultiSizeUnitId"

    :goto_12
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->t:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "ImMultiSizeUnitIdTest"

    goto :goto_13

    :cond_14
    const-string v0, "ImMultiSizeUnitId"

    :goto_13
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->u:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "CallRecorderAllMultiSizeUnitIdTest"

    goto :goto_14

    :cond_15
    const-string v0, "CallRecorderAllMultiSizeUnitId"

    :goto_14
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->v:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "SpamMultiSizeUnitIdTest"

    goto :goto_15

    :cond_16
    const-string v0, "SpamMultiSizeUnitId"

    :goto_15
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->w:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gj:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "CDInterstitialAdUnitIdTest"

    goto :goto_16

    :cond_17
    const-string v0, "CDInterstitialAdUnitId"

    :goto_16
    sput-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;)Lcom/google/firebase/remoteconfig/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    return-object p0
.end method

.method static synthetic b()V
    .locals 0

    .line 5538
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a()V

    .line 5541
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b()V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;
    .locals 1

    .line 478
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCallAppRemoteConfigManager()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ba:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    .line 2486
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/callapp/contacts/manager/task/Task$DoneListener;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 490
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ba:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/a;->a()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 499
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;-><init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;Lcom/google/android/gms/tasks/h;ZLcom/callapp/contacts/manager/task/Task$DoneListener;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 548
    :catch_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->getDefaults()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 574
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 575
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 5215
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 576
    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 577
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 578
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 580
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p2

    const-class v1, Ljava/lang/String;

    const v2, 0x7f0b002c

    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    return-object v0

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public final b(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    .line 3402
    iget-object v2, v2, Lcom/google/firebase/remoteconfig/a;->f:Lcom/google/firebase/remoteconfig/internal/l;

    .line 4234
    iget-object v3, v2, Lcom/google/firebase/remoteconfig/internal/l;->e:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v3, p1}, Lcom/google/firebase/remoteconfig/internal/l;->a(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4236
    iget-object v4, v2, Lcom/google/firebase/remoteconfig/internal/l;->e:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v4}, Lcom/google/firebase/remoteconfig/internal/l;->a(Lcom/google/firebase/remoteconfig/internal/a;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/google/firebase/remoteconfig/internal/l;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    .line 4237
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4240
    :cond_0
    iget-object v2, v2, Lcom/google/firebase/remoteconfig/internal/l;->f:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v2, p1}, Lcom/google/firebase/remoteconfig/internal/l;->a(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4242
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v2, "Long"

    .line 4245
    invoke-static {p1, v2}, Lcom/google/firebase/remoteconfig/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 557
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->getDefaults()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 568
    :catch_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->getDefaults()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected getDefaults()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AdRefreshDelta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ReferAndEarnPointValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ReferAndEarnFeature"

    const-string v2, "false"

    .line 252
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdRefreshContinueIfNotVisible"

    const-string v3, "true"

    .line 253
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "StopOnFirstPostBidderResult"

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PriceBasedPostBidderResult"

    .line 255
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RefreshAdsOnChangingTabs"

    .line 256
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SmallAdCardShowInterval"

    const-string v4, "1"

    .line 257
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SMSShowInterval"

    .line 258
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FreeGiftEnabled"

    .line 259
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UpgradeGiftEnabled"

    .line 260
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ButtonSetGifUrlPrefix"

    const-string v4, "https://dm22bu6mtmcsb.cloudfront.net/Call-screen-themes/Button-sets/Animated_gifs/"

    .line 261
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "webViewUserAgent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36"

    .line 262
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactListAdExperiments"

    const-string/jumbo v4, "{\"positioning\":{\"fixed\":[2,8],\"interval\":\"8\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"1\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"2\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"3\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"4\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"5\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"6\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"7\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"8\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"9\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"10\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"11\",\"layout\":\"15\",\"animation\":\"3\",\"closeButton\":\"true\"}]}"

    .line 263
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallLogAdExperiments"

    const-string/jumbo v4, "{\"positioning\":{\"fixed\":[1,6],\"interval\":\"6\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"1\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"2\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"3\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"4\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"5\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"6\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"7\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"8\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"9\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"10\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"},{\"group\":\"11\",\"layout\":\"13\",\"animation\":\"3\",\"closeButton\":\"true\"}]}"

    .line 264
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "IMLogAdExperiments"

    const-string/jumbo v4, "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"layout\":\"10\"},{\"group\":\"1\",\"layout\":\"10\"},{\"group\":\"2\",\"layout\":\"10\"},{\"group\":\"3\",\"layout\":\"10\"},{\"group\":\"4\",\"layout\":\"10\"},{\"group\":\"5\",\"layout\":\"10\"},{\"group\":\"6\",\"layout\":\"10\"},{\"group\":\"7\",\"layout\":\"10\"},{\"group\":\"8\",\"layout\":\"10\"},{\"group\":\"9\",\"layout\":\"10\"},{\"group\":\"10\",\"layout\":\"10\"},{\"group\":\"11\",\"layout\":\"10\"}]}"

    .line 265
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SMSExperiments"

    const-string/jumbo v4, "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"17\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"17\"}]}"

    .line 266
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SpamListExperiments"

    const-string/jumbo v5, "{\"positioning\":{\"fixed\":[1,8],\"interval\":\"9\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"11\"},{\"group\":\"1\",\"layout\":\"11\"},{\"group\":\"2\",\"layout\":\"11\"},{\"group\":\"3\",\"layout\":\"11\"},{\"group\":\"4\",\"layout\":\"11\"},{\"group\":\"5\",\"layout\":\"11\"},{\"group\":\"6\",\"layout\":\"11\"},{\"group\":\"7\",\"layout\":\"11\"},{\"group\":\"8\",\"layout\":\"11\"},{\"group\":\"9\",\"layout\":\"11\"},{\"group\":\"10\",\"layout\":\"11\"},{\"group\":\"11\",\"layout\":\"11\"}]}"

    .line 267
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AllRecordingsListExperiments"

    const-string/jumbo v5, "{\"positioning\":{\"fixed\":[1,6],\"interval\":\"6\"},\"experiments\":[{\"group\":\"0\",\"layout\":\"10\"},{\"group\":\"1\",\"layout\":\"10\"},{\"group\":\"2\",\"layout\":\"10\"},{\"group\":\"3\",\"layout\":\"10\"},{\"group\":\"4\",\"layout\":\"10\"},{\"group\":\"5\",\"layout\":\"10\"},{\"group\":\"6\",\"layout\":\"10\"},{\"group\":\"7\",\"layout\":\"10\"},{\"group\":\"8\",\"layout\":\"10\"},{\"group\":\"9\",\"layout\":\"10\"},{\"group\":\"10\",\"layout\":\"10\"},{\"group\":\"11\",\"layout\":\"10\"}]}"

    .line 268
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallRecorderContactExperiments"

    const-string/jumbo v5, "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"2\"},{\"group\":\"1\",\"animation\":\"2\"},{\"group\":\"2\",\"animation\":\"2\"},{\"group\":\"2\",\"animation\":\"2\"},{\"group\":\"4\",\"animation\":\"2\"},{\"group\":\"5\",\"animation\":\"2\"},{\"group\":\"6\",\"animation\":\"2\"},{\"group\":\"7\",\"animation\":\"2\"},{\"group\":\"8\",\"animation\":\"2\"},{\"group\":\"9\",\"animation\":\"2\"},{\"group\":\"10\",\"animation\":\"2\"},{\"group\":\"11\",\"animation\":\"2\"}]}"

    .line 269
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CDLargeExperiments"

    const-string/jumbo v5, "{\"positioning\":{},\"experiments\":[{\"group\":\"0\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"1\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"2\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"3\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"4\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"5\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"6\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"7\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"8\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"9\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"10\",\"animation\":\"3\",\"layout\":\"18\"},{\"group\":\"11\",\"animation\":\"3\",\"layout\":\"18\"}]}"

    .line 270
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CDSmallExperiments"

    .line 271
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallExperiments"

    .line 272
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NotAnsweredExperiments"

    .line 273
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallSummaryExperiments"

    .line 274
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NotAnsweredSummaryExperiments"

    .line 275
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SmsSmallAd1189MultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"fd5b15fa594c4c35a326f9b6a47cd854\",\"adType\":\"0\"},{\"adUnitId\":\"71a568e4b049404e97525adc6ebbe4ff\",\"adType\":\"1\"},{\"adUnitId\":\"ad2be0637a4944e69dcbb7758874cf38\",\"adType\":\"0\"},{\"adUnitId\":\"9ae10d3c0a814a58a04d3d7829cf44a8\",\"adType\":\"1\"},{\"adUnitId\":\"7947c87b40c849a197ec029c6ff1037d\",\"adType\":\"0\"},{\"adUnitId\":\"4ce4d957372c4209a93d3b4014beb349\",\"adType\":\"1\"}]"

    .line 276
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallRecorderContactAdMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"cb9d62d7a3684434b215d501f100f8b2\",\"adType\":\"0\"},{\"adUnitId\":\"deb31ef985d34668b97a0acabef159a0\",\"adType\":\"1\"},{\"adUnitId\":\"5c3124f93dae4f31a116248d8c6ea905\",\"adType\":\"0\"},{\"adUnitId\":\"6c8b2161b59b4c7eaddb80bd11bbb1f7\",\"adType\":\"1\"},{\"adUnitId\":\"77c74b5ea1c84224936b4043525f458a\",\"adType\":\"0\"},{\"adUnitId\":\"fc3cd4fc93dd4c7cbfaaffb27de5be51\",\"adType\":\"1\"}]"

    .line 277
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactDetailsSmallAdMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"0195ea31df514ac8a86d0dc6cc34704e\",\"adType\":\"0\"},{\"adUnitId\":\"753f5e4073fc4e11ac56131e6a79a5a5\",\"adType\":\"1\"},{\"adUnitId\":\"5b5ea3499bad4f8493d8d01a9495732b\",\"adType\":\"0\"},{\"adUnitId\":\"8ab705b9be434111b9647157e26addac\",\"adType\":\"1\"},{\"adUnitId\":\"4773fe61cbf74b1d8b748076c428adde\",\"adType\":\"0\"},{\"adUnitId\":\"20e44667276347bea1007932137c3871\",\"adType\":\"1\"}]"

    .line 278
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactDetailsBigAdMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"3308f93ec1c44070b6d3b91c58f47863\",\"adType\":\"0\"},{\"adUnitId\":\"abef4c8f3de04ae78275640b0b911093\",\"adType\":\"1\"},{\"adUnitId\":\"da783e83ee3e4962a03eedd25fb7db95\",\"adType\":\"0\"},{\"adUnitId\":\"f52104d2c6a74ba0b74224ef07fe77be\",\"adType\":\"1\"},{\"adUnitId\":\"13426b803fe74e348003e8dea768afb4\",\"adType\":\"0\"},{\"adUnitId\":\"4258201c7b844296a0405a19a69ef430\",\"adType\":\"1\"}]"

    .line 279
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallAdMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"436fcd01b61c4f9583fe142f81b721f8\",\"adType\":\"0\"},{\"adUnitId\":\"26fa6797f1a542f0b30ed97af8e78dc7\",\"adType\":\"0\"},{\"adUnitId\":\"7970015a475948e1a8891de3143937e2\",\"adType\":\"0\"}]"

    .line 280
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallSummaryAdMultiSizeUnitId"

    .line 281
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactListMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"b5bbff7d5d6842fd99fad62808035415\",\"adType\":\"0\"}]"

    .line 282
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallLogMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"5af3e5a582da420f84aef05f32058479\",\"adType\":\"0\"}]"

    .line 283
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallRecorderAllMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"7b167ffe287c4e3fb69ddf351f630285\",\"adType\":\"0\"}]"

    .line 284
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SpamMultiSizeUnitId"

    const-string v4, "[{\"adUnitId\":\"21393b5c1efe4e869e45df6598ffad91\",\"adType\":\"0\"}]"

    .line 285
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CDInterstitialAdUnitId"

    const-string v4, "661fa2c0cd43493a9f8c6179879b1d8b"

    .line 286
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CDInterstitialWakeScreenWhenNeedToShow"

    .line 287
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SmsSmallAd1189MultiSizeUnitIdTest"

    const-string v4, "[{\"adUnitId\":\"751976f593ed405ead135759a937fe2d\",\"adType\":\"0\"},{\"adUnitId\":\"85239175c5214c7883758fbeffc7a78b\",\"adType\":\"1\"}]"

    .line 289
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallRecorderContactAdMultiSizeUnitIdTest"

    const-string v4, "[{\"adUnitId\":\"da5348c8955a45488fdd3f49bcf935ee\",\"adType\":\"0\"},{\"adUnitId\":\"9b413cc4b8bf42048378eea9eb4c211e\",\"adType\":\"1\"}]"

    .line 290
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactDetailsSmallAdMultiSizeUnitIdTest"

    const-string v4, "[{\"adUnitId\":\"03e8e02479f34905846ee4b7015fa6bf\",\"adType\":\"0\"},{\"adUnitId\":\"c26bd478b48849198a92f7afdf32a22a\",\"adType\":\"1\"}]"

    .line 291
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactDetailsBigAdMultiSizeUnitIdTest"

    const-string v5, "[{\"adUnitId\":\"ede6624ca9294df49c75d8d65a2c47c0\",\"adType\":\"0\"},{\"adUnitId\":\"b61e0562160d4b48bf59f77917f22c8b\",\"adType\":\"1\"}]"

    .line 292
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ContactListMultiSizeUnitIdTest"

    const-string v5, "[{\"adUnitId\":\"a83133eb854a4af4b264663b06bcd3d9\",\"adType\":\"0\"}]"

    .line 293
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallLogMultiSizeUnitIdTest"

    const-string v5, "[{\"adUnitId\":\"22f6c1a7edca4a4b828c524a7b3cb664\",\"adType\":\"0\"}]"

    .line 294
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallRecorderAllMultiSizeUnitIdTest"

    const-string v5, "[{\"adUnitId\":\"9b4f0e8950714ff5883c46badf77d502\",\"adType\":\"0\"}]"

    .line 295
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SpamMultiSizeUnitIdTest"

    const-string v5, "[{\"adUnitId\":\"aa30cefe891245a19e6c2aa709dd4b5e\",\"adType\":\"0\"}]"

    .line 296
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallAdMultiSizeUnitIdTest"

    .line 297
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedCallSummaryAdMultiSizeUnitIdTest"

    .line 298
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CDInterstitialAdUnitIdTest"

    const-string v4, "e3db509d4cb146ac9bbab06ff05b3cbe"

    .line 299
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "InCallAutoScroll"

    const-string v4, "2"

    .line 300
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cdTimesToAutoScroll"

    const-string v5, "3"

    .line 301
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cdSecondsToWaitBeforeNextAutoScroll"

    const-string v5, "45"

    .line 302
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postCallEnabled"

    .line 303
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showMarketplaceWidget"

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tutorialPagesNumber"

    const-string v5, "5"

    .line 305
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showTutorialWidget"

    .line 306
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CallappIMDefaultImagesValues"

    const-string/jumbo v5, "{\"com.whatsapp\": [214,230,220,240,220,240],\"com.whatsapp.dark\": [100,110,110,120,120,123],\"com.viber.voip\": [160,240,160,240,160,240],\"org.thoughtcrime.securesms\": [90,130,90,130,110,140]}"

    .line 307
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "twilioTrustedCommCPSEnabled"

    .line 308
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "whitePagesEnabled"

    .line 309
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UpdatedFromPlayDifference"

    const-string v5, "20"

    .line 310
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UpdatedFromPlayEnabled"

    .line 311
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UpdatedFromPlayIntervals"

    .line 312
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "restrictedCountries"

    const-string v5, "IL,KR,KO"

    .line 313
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uploadConfiguration"

    const-string/jumbo v5, "{\"disabled_store_names\":[\"Google Play\"]}"

    .line 314
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storesShowBillingWithoutPlay"

    const-string v5, "dev"

    .line 315
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amazonPricePoints"

    const-string/jumbo v5, "{\"m320x50p1\":\"0.1\",\"m320x50p2\":\"0.2\",\"m320x50p3\":\"0.3\",\"m320x50p4\":\"0.4\",\"m320x50p5\":\"0.5\",\"m320x50p6\":\"0.6\",\"m320x50p7\":\"0.7\",\"m320x50p8\":\"0.8\",\"m320x50p9\":\"0.9\",\"m320x50p10\":\"1\",\"m320x50p11\":\"1.1\",\"m320x50p12\":\"1.2\",\"m320x50p13\":\"1.3\",\"m320x50p14\":\"1.4\",\"m320x50p15\":\"1.5\",\"m320x50p16\":\"1.6\",\"m320x50p17\":\"1.7\",\"m320x50p18\":\"1.8\",\"m320x50p19\":\"1.9\",\"m320x50p20\":\"2\",\"m320x50p21\":\"2.1\",\"m320x50p22\":\"2.2\",\"m320x50p23\":\"2.3\",\"m320x50p24\":\"2.4\",\"m320x50p25\":\"2.5\",\"m320x50p26\":\"2.6\",\"m320x50p27\":\"2.7\",\"m320x50p28\":\"2.8\",\"m320x50p29\":\"2.9\",\"m320x50p30\":\"3\",\"m320x50p31\":\"3.1\",\"m320x50p32\":\"3.2\",\"m320x50p33\":\"3.3\",\"m320x50p34\":\"3.4\",\"m320x50p35\":\"3.5\",\"m320x50p36\":\"3.6\",\"m320x50p37\":\"3.7\",\"m320x50p38\":\"3.8\",\"m320x50p39\":\"3.9\",\"m320x50p40\":\"4\",\"m320x50p41\":\"4.1\",\"m320x50p42\":\"4.2\",\"m320x50p43\":\"4.3\",\"m320x50p44\":\"4.4\",\"m320x50p45\":\"4.5\",\"m320x50p46\":\"4.6\",\"m320x50p47\":\"4.7\",\"m320x50p48\":\"4.8\",\"m320x50p49\":\"4.9\",\"m320x50p50\":\"5\",\"m320x50p51\":\"5.1\",\"m320x50p52\":\"5.2\",\"m320x50p53\":\"5.3\",\"m320x50p54\":\"5.4\",\"m320x50p55\":\"5.5\",\"m320x50p56\":\"5.6\",\"m320x50p57\":\"5.7\",\"m320x50p58\":\"5.8\",\"m320x50p59\":\"5.9\",\"m320x50p60\":\"6\",\"m320x50p61\":\"6.1\",\"m320x50p62\":\"6.2\",\"m320x50p63\":\"6.3\",\"m320x50p64\":\"6.4\",\"m320x50p65\":\"6.5\",\"m320x50p66\":\"6.6\",\"m320x50p67\":\"6.7\",\"m320x50p68\":\"6.8\",\"m320x50p69\":\"6.9\",\"m320x50p70\":\"7\",\"m320x50p71\":\"7.2\",\"m320x50p72\":\"7.4\",\"m320x50p73\":\"7.6\",\"m320x50p74\":\"7.8\",\"m320x50p75\":\"8\",\"m320x50p76\":\"8.2\",\"m320x50p77\":\"8.4\",\"m320x50p78\":\"8.6\",\"m320x50p80\":\"9\",\"m320x50p81\":\"9.2\",\"m320x50p82\":\"9.4\",\"m320x50p83\":\"9.6\",\"m320x50p84\":\"9.8\",\"m320x50p85\":\"10\",\"m300x250p1\":\"0.1\",\"m300x250p2\":\"0.2\",\"m300x250p3\":\"0.3\",\"m300x250p4\":\"0.4\",\"m300x250p5\":\"0.5\",\"m300x250p6\":\"0.6\",\"m300x250p7\":\"0.7\",\"m300x250p8\":\"0.8\",\"m300x250p9\":\"0.9\",\"m300x250p10\":\"1\",\"m300x250p11\":\"1.1\",\"m300x250p12\":\"1.2\",\"m300x250p13\":\"1.3\",\"m300x250p14\":\"1.4\",\"m300x250p15\":\"1.5\",\"m300x250p16\":\"1.6\",\"m300x250p17\":\"1.7\",\"m300x250p18\":\"1.8\",\"m300x250p19\":\"1.9\",\"m300x250p20\":\"2\",\"m300x250p21\":\"2.1\",\"m300x250p22\":\"2.2\",\"m300x250p23\":\"2.3\",\"m300x250p24\":\"2.4\",\"m300x250p25\":\"2.5\",\"m300x250p26\":\"2.6\",\"m300x250p27\":\"2.7\",\"m300x250p28\":\"2.8\",\"m300x250p29\":\"2.9\",\"m300x250p30\":\"3\",\"m300x250p31\":\"3.1\",\"m300x250p32\":\"3.2\",\"m300x250p33\":\"3.3\",\"m300x250p34\":\"3.4\",\"m300x250p35\":\"3.5\",\"m300x250p36\":\"3.6\",\"m300x250p37\":\"3.7\",\"m300x250p38\":\"3.8\",\"m300x250p39\":\"3.9\",\"m300x250p40\":\"4\",\"m300x250p41\":\"4.1\",\"m300x250p42\":\"4.2\",\"m300x250p43\":\"4.3\",\"m300x250p44\":\"4.4\",\"m300x250p45\":\"4.5\",\"m300x250p46\":\"4.6\",\"m300x250p47\":\"4.7\",\"m300x250p48\":\"4.8\",\"m300x250p49\":\"4.9\",\"m300x250p50\":\"5\",\"m300x250p51\":\"5.1\",\"m300x250p52\":\"5.2\",\"m300x250p53\":\"5.3\",\"m300x250p54\":\"5.4\",\"m300x250p55\":\"5.5\",\"m300x250p56\":\"5.6\",\"m300x250p57\":\"5.7\",\"m300x250p58\":\"5.8\",\"m300x250p59\":\"5.9\",\"m300x250p60\":\"6\",\"m300x250p61\":\"6.1\",\"m300x250p62\":\"6.2\",\"m300x250p63\":\"6.3\",\"m300x250p64\":\"6.4\",\"m300x250p65\":\"6.5\",\"m300x250p66\":\"6.6\",\"m300x250p67\":\"6.7\",\"m300x250p68\":\"6.8\",\"m300x250p69\":\"6.9\",\"m300x250p70\":\"7\",\"m300x250p71\":\"7.2\",\"m300x250p72\":\"7.4\",\"m300x250p73\":\"7.6\",\"m300x250p74\":\"7.8\",\"m300x250p75\":\"8\",\"m300x250p76\":\"8.2\",\"m300x250p77\":\"8.4\",\"m300x250p78\":\"8.6\",\"m300x250p79\":\"8.8\",\"m300x250p80\":\"9\",\"m300x250p81\":\"9.2\",\"m300x250p82\":\"9.4\",\"m300x250p83\":\"9.6\",\"m300x250p84\":\"9.8\",\"m300x250p85\":\"10\",\"mFSp1\":\"0.2\",\"mFSp2\":\"0.4\",\"mFSp3\":\"0.6\",\"mFSp4\":\"0.8\",\"mFSp5\":\"1\",\"mFSp6\":\"1.2\",\"mFSp7\":\"1.4\",\"mFSp8\":\"1.6\",\"mFSp9\":\"1.8\",\"mFSp10\":\"2\",\"mFSp11\":\"2.2\",\"mFSp12\":\"2.4\",\"mFSp13\":\"2.6\",\"mFSp14\":\"2.8\",\"mFSp15\":\"3\",\"mFSp16\":\"3.2\",\"mFSp17\":\"3.4\",\"mFSp18\":\"3.6\",\"mFSp19\":\"3.8\",\"mFSp20\":\"4\",\"mFSp21\":\"4.2\",\"mFSp22\":\"4.4\",\"mFSp23\":\"4.6\",\"mFSp24\":\"4.8\",\"mFSp25\":\"5\",\"mFSp26\":\"5.2\",\"mFSp27\":\"5.4\",\"mFSp28\":\"5.6\",\"mFSp29\":\"5.8\",\"mFSp30\":\"6\",\"mFSp31\":\"6.2\",\"mFSp32\":\"6.4\",\"mFSp33\":\"6.6\",\"mFSp34\":\"6.8\",\"mFSp35\":\"7\",\"mFSp36\":\"7.2\",\"mFSp37\":\"7.4\",\"mFSp38\":\"7.6\",\"mFSp39\":\"7.8\",\"mFSp40\":\"8\",\"mFSp41\":\"8.2\",\"mFSp42\":\"8.4\",\"mFSp43\":\"8.6\",\"mFSp44\":\"8.8\",\"mFSp45\":\"9\",\"mFSp46\":\"9.2\",\"mFSp47\":\"9.4\",\"mFSp48\":\"9.6\",\"mFSp49\":\"9.8\",\"mFSp50\":\"10\",\"mFSp51\":\"10.2\",\"mFSp52\":\"10.4\",\"mFSp53\":\"10.6\",\"mFSp54\":\"10.8\",\"mFSp55\":\"11\",\"mFSp56\":\"11.2\",\"mFSp57\":\"11.4\",\"mFSp58\":\"11.6\",\"mFSp59\":\"11.8\",\"mFSp60\":\"12\",\"mFSp61\":\"12.2\",\"mFSp62\":\"12.4\",\"mFSp63\":\"12.6\",\"mFSp64\":\"12.8\",\"mFSp65\":\"13\",\"mFSp66\":\"13.2\",\"mFSp67\":\"13.4\",\"mFSp68\":\"13.6\",\"mFSp69\":\"13.8\",\"mFSp70\":\"14\",\"mFSp71\":\"14.2\",\"mFSp72\":\"14.4\",\"mFSp73\":\"14.6\",\"mFSp74\":\"14.8\",\"mFSp75\":\"15\",\"mFSp76\":\"16\",\"mFSp77\":\"17\",\"mFSp78\":\"18\",\"mFSp79\":\"19\",\"mFSp80\":\"20\",\"mFSp81\":\"21\",\"mFSp82\":\"22\",\"mFSp83\":\"23\",\"mFSp84\":\"24\",\"mFSp85\":\"25\"}"

    .line 316
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promotionShowDialogInterval"

    .line 317
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amazonFromDfpEnabled"

    .line 318
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timerSendSms"

    const-string v4, "20000"

    .line 319
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "timerCallMe"

    const-string v4, "30000"

    .line 320
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sinchBlockedCountries"

    const-string v4, "+231,+252,+257,+261,+269,+256,+244,+242,+675,+677,+239,+685,+236,+505"

    .line 321
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookCTAOnlyClick"

    .line 322
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookAudienceNetworkBiddingKitWaitForNotifyWin"

    .line 323
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebookAccessToken"

    const-string v4, "389565261068314|d1e2731fec3cb6200d2865485917a757"

    .line 324
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "searchNearbyEnabled"

    .line 325
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "GoogleAdaptiveBannerEnabled"

    .line 326
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MissedNotAnsweredPreloadTimeoutSec"

    const-string v4, "15"

    .line 327
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onlyNativeSocialLogin"

    .line 328
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cdInterstitialShowAnalytics"

    .line 329
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amazona9_app_id"

    const-string v3, "71c4388391f84f4ebea7911d4f9a10ac"

    .line 332
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "verizon_app_id"

    const-string v3, "8a8094180154547739867aee791b0018"

    .line 333
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inmobi_app_id"

    const-string v3, "1021337"

    .line 334
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "criteo_app_id"

    const-string v3, "B-057613"

    .line 335
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pubnative_app_id"

    const-string v3, "4a6a181ee15f4e5a8056205acccd1bf1"

    .line 336
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bid_machine_app_id"

    const-string v3, "134"

    .line 337
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pangle_app_id"

    const-string v3, "5074172"

    .line 338
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "callappDomain"

    const-string v3, "callapp.com"

    .line 341
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "domain_certs_pinning"

    const-string/jumbo v3, "{\"s.callapp.com\":[\"sha256/Tzggqd6QHcDgu8Zwt0ZLaYZSLJvdNKJo+5B4eqFba+U=\",\"sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=\",\"sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=\"],\"s.call.app\":[\"sha256/gOyeolCMK+90F0dyfLWGIx8WqRrPjYieKMNEr4P87k0=\",\"sha256/8Rw90Ej3Ttt8RRkrg+WYDS9n7IS03bk5bjP/UXPtaY8=\",\"sha256/Ko8tivDrEjiY90yGasP6ZpBU4jwXvHqVvQI0GS3GNdA=\"]}"

    .line 342
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RecorderTestRecordTime"

    const-string v3, "15000"

    .line 345
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "loginCallMeFirst"

    .line 349
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "usePayWall"

    .line 350
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "skipSocialNetwork"

    .line 351
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 215
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/b;->a(Landroid/content/Context;)Lcom/google/firebase/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {v0}, Lcom/google/firebase/remoteconfig/a;->a(Lcom/google/firebase/b;)Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setDefaultsIfNeeded(Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 6

    .line 234
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gl:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->y:Lcom/google/firebase/remoteconfig/a;

    if-eqz v0, :cond_3

    .line 235
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->getDefaults()Ljava/util/Map;

    move-result-object v1

    .line 1498
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1499
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1500
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1501
    instance-of v5, v4, [B

    if-eqz v5, :cond_1

    .line 1502
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1504
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1508
    :cond_2
    invoke-virtual {v0, v2}, Lcom/google/firebase/remoteconfig/a;->a(Ljava/util/Map;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;-><init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void

    .line 243
    :cond_3
    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    return-void
.end method
