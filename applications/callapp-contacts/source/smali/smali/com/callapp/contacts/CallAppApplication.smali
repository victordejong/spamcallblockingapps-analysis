.class public Lcom/callapp/contacts/CallAppApplication;
.super Lcom/google/android/play/core/splitcompat/SplitCompatApplication;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:I

.field public static c:Ljava/lang/String;

.field private static final e:Landroid/os/HandlerThread;

.field private static f:Landroid/os/Handler;

.field private static final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/os/Handler;

.field private g:Lio/objectbox/BoxStore;

.field private h:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private i:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private j:Z

.field private final k:Ljava/lang/Object;

.field private l:Landroid/app/Service;

.field private final m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    :try_start_0
    const-string v0, "ccr"

    .line 187
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 188
    sput-boolean v0, Lcom/callapp/contacts/CallAppApplication;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 190
    const-class v1, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_0
    const/16 v0, 0x42e

    .line 195
    sput v0, Lcom/callapp/contacts/CallAppApplication;->b:I

    const-string v0, "CallAppApplication.leakCanaryEnabled"

    .line 196
    sput-object v0, Lcom/callapp/contacts/CallAppApplication;->c:Ljava/lang/String;

    .line 201
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StartCallAppService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/CallAppApplication;->e:Landroid/os/HandlerThread;

    .line 213
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.facebook.ads.AudienceNetworkActivity"

    const-string v2, "com.mopub.common.MoPubBrowser"

    const-string v3, "com.mopub.mobileads.MoPubActivity"

    const-string v4, "com.mopub.mobileads.MraidActivity"

    const-string v5, "com.mopub.mobileads.RewardedMraidActivity"

    const-string v6, "com.mopub.mobileads.MraidVideoPlayerActivity"

    const-string v7, "com.google.android.gms.ads.AdActivity"

    const-string v8, "com.inmobi.ads.rendering.InMobiAdActivity"

    const-string v9, "com.amazon.device.ads.DTBActivity"

    const-string v10, "com.criteo.view.InterstialHtmlAdActivity"

    const-string v11, "com.criteo.publisher.CriteoInterstitialActivity"

    const-string v12, "com.verizon.ads.interstitialwebadapter.WebViewActivity"

    const-string v13, "net.pubnative.lite.sdk.interstitial.activity.MraidInterstitialActivity"

    const-string v14, "net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity"

    const-string v15, "io.bidmachine.ads.networks.mraid.MraidActivity"

    const-string v16, "io.bidmachine.nativead.view.VideoPlayerActivity"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/callapp/contacts/CallAppApplication;->n:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;-><init>()V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/callapp/contacts/CallAppApplication;->j:Z

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->k:Ljava/lang/Object;

    .line 212
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    invoke-direct {v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/CallAppApplication;Landroid/app/Service;)Landroid/app/Service;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication;->l:Landroid/app/Service;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/CallAppApplication;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication;->i:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/CallAppApplication;)Lio/objectbox/BoxStore;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 1539
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fb:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 1540
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1541
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private a(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 751
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dg:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->b(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "LIGHT"

    if-nez v3, :cond_0

    .line 753
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dg:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 756
    :cond_0
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ai:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 757
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 759
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ad:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 761
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fF:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 762
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 763
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 764
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->f:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 765
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 768
    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->c()V

    .line 771
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 772
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_1
    const/16 v3, 0x40b

    const/16 v7, 0x40d

    if-gt v1, v3, :cond_3

    .line 777
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aH:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 8667
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8668
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 8669
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 8670
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 8671
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    goto :goto_0

    .line 8673
    :cond_2
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 8674
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 8675
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 8676
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 8677
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    .line 8678
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    goto :goto_0

    :cond_3
    if-gt v1, v7, :cond_4

    .line 783
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 784
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 785
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 786
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 787
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 788
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    .line 789
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aQ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 790
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    :cond_4
    :goto_0
    if-gt v1, v7, :cond_5

    .line 795
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ak:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v7, Lcom/callapp/contacts/util/AppRater$UserRating;->NOT_YET:Lcom/callapp/contacts/util/AppRater$UserRating;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 796
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->Y:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_5
    const/16 v3, 0x414

    if-gt v1, v3, :cond_6

    .line 802
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 803
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->LINK_SOCIAL_NETWORKS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v7

    if-le v3, v7, :cond_6

    .line 804
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    :cond_6
    const/16 v3, 0x418

    if-gt v1, v3, :cond_9

    .line 809
    sget-object v3, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v7, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_8

    aget-object v9, v3, v8

    .line 810
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 811
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 812
    invoke-virtual {v9}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->j()V

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 818
    :cond_8
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 819
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v7, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->LINK_SOCIAL_NETWORKS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v7

    if-le v3, v7, :cond_9

    .line 820
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 825
    :cond_9
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 828
    invoke-direct {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->setWhatsNewPrefs(Z)V

    const/16 v7, 0x425

    if-gt v1, v7, :cond_b

    .line 832
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 833
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 835
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 836
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 838
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 839
    invoke-static {v8}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 840
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    move-object v7, v8

    .line 846
    :cond_a
    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 847
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 852
    :cond_b
    sget v7, Lcom/callapp/contacts/CallAppApplication;->b:I

    const-string v8, ""

    if-gt v1, v7, :cond_d

    .line 853
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 855
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x62

    if-ge v9, v10, :cond_d

    .line 856
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    .line 857
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-virtual {v11}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->getDigit()I

    move-result v11

    add-int/2addr v11, v3

    add-int/2addr v9, v3

    :goto_2
    if-ge v9, v10, :cond_c

    .line 859
    new-instance v12, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-direct {v12, v11, v8, v8}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 862
    :cond_c
    invoke-static {v7}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Ljava/util/List;)V

    :cond_d
    const/16 v7, 0x430

    if-gt v1, v7, :cond_e

    .line 867
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "Verifying speed dial isn\'t corrupted..."

    invoke-static {v7, v9}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 869
    :try_start_0
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {v7}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a([Ljava/lang/String;)Ljava/util/List;

    .line 870
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "speed dial loadeded succesfully!"

    invoke-static {v7, v9}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 873
    :catchall_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v9, "speed dial corrupted, resetting pref..."

    invoke-static {v7, v9}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 874
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v7, v5}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    :cond_e
    :goto_3
    const/16 v7, 0x44f

    if-gt v1, v7, :cond_f

    .line 879
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->a:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_f
    const/16 v7, 0x453

    const/16 v9, -0x2710

    if-gt v1, v7, :cond_10

    .line 884
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 885
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_10
    const/16 v7, 0x454

    if-gt v1, v7, :cond_11

    .line 889
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v10, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_11
    const/16 v7, 0x48a

    if-gt v1, v7, :cond_12

    .line 893
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/sim/SimManager;->a()V

    .line 894
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v10, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_2_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    if-ne v7, v10, :cond_12

    .line 895
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->bP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v10, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->AFTER_5_SEC:Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    :cond_12
    const/16 v7, 0x4a0

    if-gt v1, v7, :cond_13

    .line 901
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->b()V

    .line 903
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->dg:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v7, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_13
    const/16 v4, 0x4af

    if-gt v1, v4, :cond_14

    .line 908
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->c()V

    :cond_14
    const/16 v4, 0x4b3

    const/4 v7, 0x2

    if-gt v1, v4, :cond_15

    .line 912
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v9, :cond_15

    .line 913
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 914
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v9

    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v9

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070326

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v9, v10

    .line 916
    div-int/2addr v9, v7

    add-int/2addr v4, v9

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07032b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v4, v9

    .line 918
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->N:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_15
    const/16 v4, 0x4c8

    if-gt v1, v4, :cond_16

    .line 923
    invoke-static {}, Lcom/callapp/contacts/activity/identify/IdentifyContactsTaskManager;->a()V

    :cond_16
    const/16 v4, 0x4cf

    if-gt v1, v4, :cond_17

    .line 927
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 928
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_17
    const/16 v4, 0x4d3

    if-gt v1, v4, :cond_18

    .line 934
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->az:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    if-eqz v4, :cond_18

    .line 936
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->aA:Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;

    new-instance v10, Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {v10, v4}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {v9, v10}, Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;->set(Ljava/lang/Object;)V

    :cond_18
    const/16 v4, 0x4da

    if-gt v1, v4, :cond_1a

    .line 941
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v4

    const-class v9, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v4, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    .line 942
    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v9

    sget-object v10, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    sget-object v11, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v11}, Lcom/callapp/contacts/model/contact/DataSource;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v9

    invoke-virtual {v9}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v9

    .line 943
    invoke-static {v9}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 944
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 945
    invoke-virtual {v11, v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 946
    invoke-virtual {v11, v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 949
    :cond_19
    invoke-virtual {v4, v9}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_1a
    const/16 v4, 0x4de

    if-gt v1, v4, :cond_1b

    .line 955
    iget-object v4, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v9, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v4, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v9, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    invoke-virtual {v4, v9, v8}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    .line 956
    sget-object v9, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const-string v10, "zaPersonLookup"

    invoke-virtual {v4, v9, v10}, Lio/objectbox/query/Query;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/Query;

    move-result-object v9

    invoke-virtual {v9}, Lio/objectbox/query/Query;->f()J

    .line 957
    sget-object v9, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const-string v11, "nzPersonLookup"

    invoke-virtual {v4, v9, v11}, Lio/objectbox/query/Query;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->f()J

    .line 959
    iget-object v4, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v9, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v4, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v9, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v4, v9, v8}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    .line 960
    sget-object v8, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v4, v8, v10}, Lio/objectbox/query/Query;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/Query;

    move-result-object v8

    invoke-virtual {v8}, Lio/objectbox/query/Query;->f()J

    .line 961
    sget-object v8, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v4, v8, v11}, Lio/objectbox/query/Query;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->f()J

    :cond_1b
    const/16 v4, 0x4e3

    const/16 v8, 0x4e4

    if-ne v1, v4, :cond_1c

    if-ne v2, v8, :cond_1c

    .line 965
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_1c
    if-gt v1, v8, :cond_1d

    .line 969
    new-instance v4, Lcom/callapp/contacts/CallAppApplication$19;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/CallAppApplication$19;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 983
    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication$19;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_1d
    const/16 v4, 0x502

    if-gt v1, v4, :cond_1e

    .line 987
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->b()V

    :cond_1e
    const/16 v4, 0x50c

    const/16 v8, 0x1a

    if-gt v1, v4, :cond_1f

    .line 991
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_1f

    .line 992
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    :cond_1f
    const/16 v4, 0x50e

    if-gt v1, v4, :cond_21

    .line 997
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 998
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 999
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 1000
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 1001
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bI:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 1003
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1004
    sget-object v4, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v4}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    goto :goto_5

    .line 1006
    :cond_20
    sget-object v4, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v4}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    :cond_21
    :goto_5
    const/16 v4, 0x52e

    if-gt v1, v4, :cond_22

    .line 1011
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->dZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->dK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_22
    const/16 v4, 0x530

    if-gt v1, v4, :cond_23

    .line 1015
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_23

    .line 1016
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v9, 0x522

    if-ge v4, v9, :cond_23

    .line 1017
    iget-object v4, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v9, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData;

    invoke-virtual {v4, v9}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v9, Lcom/callapp/contacts/model/objectbox/UserNegativeSocialData_;->socialNetworkId:Lio/objectbox/g;

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v9, v10, v11}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->f()J

    move-result-wide v9

    .line 1018
    const-class v4, Lcom/callapp/contacts/CallAppApplication;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Removed "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " Facebook negatives"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v12

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    long-to-double v9, v9

    new-array v4, v6, [Ljava/lang/String;

    const-string v13, "Social profile"

    const-string v14, "Removed Facebook negatives"

    move-wide/from16 v16, v9

    move-object/from16 v18, v4

    invoke-virtual/range {v12 .. v18}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_23
    const/16 v4, 0x532

    const-wide/16 v9, 0x0

    if-gt v1, v4, :cond_28

    .line 1024
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v4

    const-class v11, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v4, v11}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v4

    .line 1025
    invoke-virtual {v4}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v11

    invoke-virtual {v11}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v11

    .line 1026
    invoke-static {v11}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 1027
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1028
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_25

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1029
    invoke-virtual {v14}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v15

    .line 1030
    new-instance v8, Lcom/callapp/contacts/model/contact/PhotoUrls;

    invoke-virtual {v14}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhotoDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v3

    invoke-direct {v8, v15, v3}, Lcom/callapp/contacts/model/contact/PhotoUrls;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)V

    invoke-virtual {v14, v8}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoUrls(Lcom/callapp/contacts/model/contact/PhotoUrls;)V

    .line 1031
    invoke-virtual {v14, v5}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoUrl(Ljava/lang/String;)V

    .line 1032
    invoke-static {v15}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1033
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    const/4 v3, 0x1

    const/16 v8, 0x1a

    goto :goto_6

    .line 1037
    :cond_25
    invoke-virtual {v4, v11}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 1039
    invoke-static {v12}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1040
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$20;

    invoke-direct {v3, v0, v12}, Lcom/callapp/contacts/CallAppApplication$20;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/util/Set;)V

    .line 1047
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$20;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1051
    :cond_26
    new-instance v3, Lcom/callapp/contacts/manager/IncognitoContactsManager;

    invoke-direct {v3}, Lcom/callapp/contacts/manager/IncognitoContactsManager;-><init>()V

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/IncognitoContactsManager;->getIncognitoContactsCount()J

    move-result-wide v3

    cmp-long v8, v3, v9

    if-lez v8, :cond_27

    .line 1052
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1054
    :cond_27
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_28
    const/16 v3, 0x536

    if-gt v1, v3, :cond_29

    .line 1058
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1059
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Permissions"

    const-string v7, "Default dialer"

    const-string v8, "true"

    invoke-virtual {v3, v4, v7, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/16 v3, 0x538

    if-gt v1, v3, :cond_2e

    .line 1064
    iget-object v3, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/CacheData_;->valueType:Lio/objectbox/g;

    const-string v7, "com.callapp.contacts.api.helper.facebook.FBJSONUserOrPage"

    invoke-virtual {v3, v4, v7}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->f()J

    .line 1067
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/CallAppApplication;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v7, "image_manager_disk_cache"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1070
    :try_start_1
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1075
    :catch_0
    :cond_2a
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    .line 1078
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 1079
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v7, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->id:Lio/objectbox/g;

    .line 9272
    invoke-virtual {v4, v7, v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    .line 1079
    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v4

    .line 1081
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1082
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1083
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v11

    .line 1084
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_2b

    .line 1086
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    :cond_2b
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1092
    :cond_2c
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1093
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x1

    if-le v8, v11, :cond_2d

    .line 1095
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1096
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1097
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lio/objectbox/a;->b(J)Z

    goto :goto_8

    :cond_2e
    const/16 v3, 0x53a

    if-gt v1, v3, :cond_2f

    .line 1104
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    :cond_2f
    const/16 v3, 0x540

    if-gt v1, v3, :cond_30

    .line 1108
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object v3

    const-string v4, "xingAccessToken"

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    move-result-object v3

    const-string v4, "xingAccessTokenExpire"

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v3, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 1113
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v7, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const-string v8, "xing"

    invoke-virtual {v4, v7, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->f()J

    move-result-wide v11

    .line 1114
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v11, v11

    new-array v4, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed xing fastCache nameDataSource "

    move-wide/from16 v22, v11

    move-object/from16 v24, v4

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v3, v4, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->f()J

    move-result-wide v3

    .line 1116
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v3, v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed xing fastCache photoDataSource "

    move-wide/from16 v22, v3

    move-object/from16 v24, v7

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1118
    iget-object v3, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 1119
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->dataSource:Lio/objectbox/g;

    invoke-virtual {v3, v4, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->f()J

    move-result-wide v3

    .line 1120
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v3, v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed xing chosenContactPhoto data source "

    move-wide/from16 v22, v3

    move-object/from16 v24, v7

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1122
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1123
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "gif"

    invoke-static {v4, v7}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 1124
    new-instance v3, Lcom/callapp/contacts/-$$Lambda$CallAppApplication$fx_4pKy2HieNxOaDFKwyBXMbm74;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/-$$Lambda$CallAppApplication$fx_4pKy2HieNxOaDFKwyBXMbm74;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_30
    const/16 v3, 0x55c

    if-gt v1, v3, :cond_31

    .line 9607
    iget-object v3, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 9608
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    sget-object v7, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const-string v8, "linkedin"

    invoke-virtual {v4, v7, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v4

    invoke-virtual {v4}, Lio/objectbox/query/Query;->f()J

    move-result-wide v11

    .line 9609
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v11, v11

    new-array v4, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed linkedin fastCache nameDataSource "

    move-wide/from16 v22, v11

    move-object/from16 v24, v4

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 9610
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v3, v4, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->f()J

    move-result-wide v3

    .line 9611
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v3, v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed linkedin fastCache photoDataSource "

    move-wide/from16 v22, v3

    move-object/from16 v24, v7

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 9613
    iget-object v3, v0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 9614
    invoke-virtual {v3}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->dataSource:Lio/objectbox/g;

    invoke-virtual {v3, v4, v8}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->f()J

    move-result-wide v3

    .line 9615
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    long-to-double v3, v3

    new-array v7, v6, [Ljava/lang/String;

    const-string v19, "Social profile"

    const-string v20, "Removed linkedin chosenContactPhoto data source "

    move-wide/from16 v22, v3

    move-object/from16 v24, v7

    invoke-virtual/range {v18 .. v24}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_31
    const/16 v3, 0x562

    if-gt v1, v3, :cond_32

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/CallAppApplication;->e()V

    :cond_32
    const/16 v3, 0x580

    if-gt v1, v3, :cond_33

    .line 1137
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->b()V

    :cond_33
    const/16 v3, 0x5c6

    if-gt v1, v3, :cond_34

    .line 1142
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eh:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_34
    const/16 v3, 0x5da

    if-le v1, v3, :cond_35

    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_3b

    .line 1145
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1146
    :cond_35
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 1147
    invoke-virtual {v3}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v4

    .line 1148
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1149
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    .line 1150
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setPhoneAsRaw(Ljava/lang/String;)V

    .line 1151
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->setPhoneNumber(Ljava/lang/String;)V

    goto :goto_9

    .line 1154
    :cond_36
    invoke-virtual {v3, v4}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 1157
    :cond_37
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    .line 1158
    invoke-virtual {v3}, Lio/objectbox/a;->c()Ljava/util/List;

    move-result-object v4

    .line 1159
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1160
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 1161
    invoke-virtual {v3}, Lio/objectbox/a;->d()V

    .line 1162
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    .line 1163
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v11

    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getPhoneAsGlobal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    .line 1164
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    if-nez v12, :cond_38

    .line 1166
    new-instance v12, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-direct {v12}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;-><init>()V

    .line 1167
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setDeleteTimeStamp(J)V

    .line 1168
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setFrequentType(Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;)V

    .line 1171
    :cond_38
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v18

    cmp-long v15, v13, v18

    if-lez v15, :cond_39

    .line 1172
    invoke-virtual {v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setDeleteTimeStamp(J)V

    .line 1175
    :cond_39
    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->setPhoneAsGlobal(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v7, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1178
    :cond_3a
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_3b
    const/16 v3, 0x5e0

    const/16 v4, 0x5fc

    if-lt v1, v3, :cond_3c

    const/16 v3, 0x5fa

    if-gt v1, v3, :cond_3c

    const/16 v3, 0x5e2

    if-lt v2, v3, :cond_3c

    if-gt v2, v4, :cond_3c

    .line 1183
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_3c
    if-gt v1, v4, :cond_3d

    .line 10184
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v3

    .line 1188
    invoke-virtual {v3}, Landroidx/work/u;->a()Landroidx/work/n;

    move-result-object v3

    invoke-interface {v3}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1192
    :catch_1
    sget-object v3, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a()V

    .line 1194
    sget-object v3, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    .line 1196
    sget-object v3, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->a()V

    .line 1198
    sget-object v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    .line 1200
    sget-object v3, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a:Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->a()V

    .line 1202
    sget-object v3, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker;->a:Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;->a()V

    .line 1204
    sget-object v3, Lcom/callapp/contacts/workers/RescheduleSyncWorker;->a:Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;->a()V

    .line 1206
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$21;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$21;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1269
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$21;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1272
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    :cond_3d
    const/16 v3, 0x5fe

    const/16 v4, 0x616

    if-lt v1, v3, :cond_3e

    const/16 v3, 0x614

    if-gt v1, v3, :cond_3e

    const/16 v3, 0x600

    if-lt v2, v3, :cond_3e

    if-gt v2, v4, :cond_3e

    .line 1276
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_3e
    if-gt v1, v4, :cond_3f

    .line 1280
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gr:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1281
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gs:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1282
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gt:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1283
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1285
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->d()V

    .line 1286
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a()V

    .line 1288
    sget-object v3, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    .line 1290
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$22;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$22;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1318
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$22;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_3f
    const/16 v3, 0x618

    const/16 v4, 0x61e

    if-lt v1, v3, :cond_40

    const/16 v3, 0x61c

    if-gt v1, v3, :cond_40

    const/16 v3, 0x61a

    if-lt v2, v3, :cond_40

    if-gt v2, v4, :cond_40

    .line 1322
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_40
    if-gt v1, v4, :cond_41

    .line 1326
    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/callapp/contacts/util/LocaleUtils;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_41
    const/16 v3, 0x628

    const/16 v4, 0x646

    if-lt v1, v3, :cond_42

    if-gt v1, v4, :cond_42

    const/16 v3, 0x62a

    if-lt v2, v3, :cond_42

    const/16 v3, 0x648

    if-gt v2, v3, :cond_42

    .line 1330
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_42
    const/16 v3, 0x636

    if-gt v1, v3, :cond_43

    .line 1334
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/CallAppApplication;->d()V

    :cond_43
    if-gt v1, v4, :cond_44

    const-string v3, "jobscheduler"

    .line 1338
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    if-eqz v3, :cond_44

    .line 1340
    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v4

    .line 1341
    invoke-static {v4}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x14

    if-le v4, v6, :cond_44

    .line 1342
    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 11184
    :try_start_3
    invoke-static/range {p0 .. p0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v3

    .line 1345
    invoke-virtual {v3}, Landroidx/work/u;->a()Landroidx/work/n;

    move-result-object v3

    invoke-interface {v3}, Landroidx/work/n;->a()Lcom/google/common/util/concurrent/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1349
    :catch_2
    sget-object v3, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a()V

    .line 1351
    sget-object v3, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->b()V

    .line 1353
    sget-object v3, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->b()V

    .line 1355
    sget-object v3, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->a()V

    .line 1357
    sget-object v3, Lcom/callapp/contacts/workers/BirthdayDailyWorker;->a:Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/BirthdayDailyWorker$Companion;->a()V

    .line 1359
    sget-object v3, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a:Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->a()V

    .line 1361
    sget-object v3, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker;->a:Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;->a()V

    .line 1363
    sget-object v3, Lcom/callapp/contacts/workers/RescheduleSyncWorker;->a:Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/RescheduleSyncWorker$Companion;->a()V

    :cond_44
    const/16 v3, 0x64a

    if-gt v1, v3, :cond_45

    .line 1369
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->migrateOldConfiguration()V

    .line 1371
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_45

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1372
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_45
    const/16 v3, 0x64c

    const/16 v4, 0x66e

    if-lt v1, v3, :cond_46

    const/16 v3, 0x66c

    if-gt v1, v3, :cond_46

    const/16 v3, 0x64e

    if-lt v2, v3, :cond_46

    if-gt v2, v4, :cond_46

    .line 1377
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_46
    const/16 v3, 0x65a

    if-gt v1, v3, :cond_47

    .line 1381
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$23;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$23;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1386
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$23;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_47
    const/16 v3, 0x664

    if-gt v1, v3, :cond_48

    .line 1390
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$24;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$24;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1395
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$24;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_48
    if-gt v1, v4, :cond_49

    .line 1399
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$25;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$25;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1404
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$25;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_49
    const/16 v3, 0x674

    const/16 v4, 0x676

    if-lt v1, v3, :cond_4a

    const/16 v3, 0x68e

    if-gt v1, v3, :cond_4a

    if-lt v2, v4, :cond_4a

    const/16 v3, 0x690

    if-gt v2, v3, :cond_4a

    .line 1408
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_4a
    if-gt v1, v4, :cond_4b

    .line 1412
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$26;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$26;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1417
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$26;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_4b
    const/16 v3, 0x688

    if-gt v1, v3, :cond_4c

    .line 1421
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$27;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$27;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1428
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$27;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_4c
    const/16 v3, 0x68e

    if-gt v1, v3, :cond_4d

    .line 1432
    new-instance v3, Lcom/callapp/contacts/CallAppApplication$28;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/CallAppApplication$28;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1437
    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication$28;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_4d
    const/16 v3, 0x69e

    if-gt v1, v3, :cond_4e

    .line 1441
    sget-object v3, Lcom/callapp/contacts/workers/UpdateContactsWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;

    invoke-virtual {v3, v9, v10}, Lcom/callapp/contacts/workers/UpdateContactsWorker$Companion;->a(J)V

    .line 1444
    sget-object v3, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker;->a:Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;

    const-wide/16 v6, 0x5

    invoke-virtual {v3, v6, v7}, Lcom/callapp/contacts/workers/UpdateContactsDescriptionWorker$Companion;->a(J)V

    :cond_4e
    const/16 v3, 0x69a

    if-lt v1, v3, :cond_4f

    const/16 v3, 0x6ba

    if-gt v1, v3, :cond_4f

    const/16 v3, 0x69c

    if-lt v2, v3, :cond_4f

    const/16 v3, 0x6bc

    if-gt v2, v3, :cond_4f

    .line 1448
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_4f
    const/16 v3, 0x6c4

    if-lt v1, v3, :cond_50

    const/16 v3, 0x6d0

    if-gt v1, v3, :cond_50

    const/16 v3, 0x6ce

    if-lt v2, v3, :cond_50

    const/16 v3, 0x6d2

    if-gt v2, v3, :cond_50

    .line 1452
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_50
    const/16 v3, 0x6d4

    if-gt v1, v3, :cond_51

    .line 1456
    invoke-static {}, Lcom/callapp/contacts/sync/model/SyncManager;->resetDbAndSynchronizers()V

    .line 1457
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v3

    .line 12335
    iget-object v3, v3, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v3}, Landroidx/b/e;->evictAll()V

    .line 11343
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/a;->d()V

    .line 11346
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v3

    .line 11347
    invoke-static {v3}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 1459
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_51

    .line 1460
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    :cond_51
    const/16 v3, 0x6d8

    if-lt v1, v3, :cond_52

    const/16 v3, 0x6e4

    if-gt v1, v3, :cond_52

    const/16 v3, 0x6da

    if-lt v2, v3, :cond_52

    const/16 v3, 0x6e6

    if-gt v2, v3, :cond_52

    .line 1465
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_52
    const/16 v3, 0x6e6

    if-gt v1, v3, :cond_55

    .line 1470
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aU:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->PAY_WALL:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1471
    sget-object v3, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 1473
    :cond_53
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_54

    .line 1474
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    .line 1476
    :cond_54
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->b()V

    .line 1477
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->c()V

    .line 1480
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->d()V

    .line 1482
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->h()V

    :cond_55
    const/16 v3, 0x6e8

    if-lt v1, v3, :cond_56

    const/16 v3, 0x70c

    if-gt v1, v3, :cond_56

    const/16 v3, 0x6ea

    if-lt v2, v3, :cond_56

    const/16 v3, 0x70e

    if-gt v2, v3, :cond_56

    .line 1486
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    :cond_56
    const/16 v2, 0x6ea

    if-gt v1, v2, :cond_57

    .line 1490
    invoke-static {}, Lcom/callapp/contacts/util/MigrationUtils;->i()V

    .line 1491
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->b()V

    :cond_57
    const/16 v2, 0x700

    if-gt v1, v2, :cond_58

    .line 1495
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1497
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1502
    :cond_58
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    const-string v3, "message_key"

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1503
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1506
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->b()V

    .line 1509
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1510
    new-instance v1, Lcom/callapp/contacts/CallAppApplication$29;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/CallAppApplication$29;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1515
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication$29;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1519
    :cond_59
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1520
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 1521
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1524
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1525
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1526
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v2, 0x1

    .line 13039
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1527
    new-instance v1, Lcom/callapp/contacts/CallAppApplication$30;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/CallAppApplication$30;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 1532
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication$30;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1535
    :cond_5a
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V
    .locals 2

    .line 18557
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/callapp/contacts/CallAppApplication$14;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/CallAppApplication$14;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/callapp/contacts/CallAppApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/CallAppApplication;Z)Z
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/callapp/contacts/CallAppApplication;->j:Z

    return p1
.end method

.method static synthetic b()V
    .locals 4

    .line 21597
    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/util/List;

    move-result-object v0

    .line 21598
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21599
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21600
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    .line 22432
    iput-object v1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 21600
    sget v1, Lcom/callapp/contacts/util/glide/GlideUtils;->a:I

    sget v3, Lcom/callapp/contacts/util/glide/GlideUtils;->b:I

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 23376
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 24334
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->t:Z

    .line 21600
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 12

    .line 19415
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->k()V

    const-string v1, "92984980"

    .line 19418
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19421
    new-instance v1, Lcom/callapp/contacts/CallAppApplication$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/CallAppApplication$6;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19427
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19430
    new-instance v1, Lcom/callapp/contacts/CallAppApplication$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/CallAppApplication$7;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19441
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication$7;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19443
    new-instance v1, Lcom/callapp/contacts/CallAppApplication$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/CallAppApplication$8;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19448
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication$8;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19641
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v1

    if-eqz v1, :cond_c

    .line 19648
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 19650
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->S:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 19654
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v7, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-nez v2, :cond_7

    .line 19703
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f050003

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19704
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->set(Ljava/lang/Object;)V

    .line 19707
    :cond_2
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->u:Lcom/callapp/contacts/manager/preferences/prefs/PairPref;

    new-instance v9, Landroid/util/Pair;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/PairPref;->set(Ljava/lang/Object;)V

    .line 19708
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 19709
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->R:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 19711
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v2, v9, :cond_3

    .line 19712
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    .line 19716
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19717
    new-instance v2, Lcom/callapp/contacts/CallAppApplication$18;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/CallAppApplication$18;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19725
    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication$18;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19729
    :cond_4
    sget-object v2, Lcom/callapp/contacts/workers/_24HourPingWorker;->a:Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;

    invoke-virtual {v2}, Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;->a()V

    .line 19733
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v9, 0x10

    if-eq v2, v9, :cond_5

    const/16 v9, 0x20

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    .line 19741
    :goto_2
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    .line 19742
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    :goto_3
    invoke-virtual {v9, v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_9

    const/16 v9, 0x3e8

    if-ge v2, v9, :cond_8

    add-int/lit16 v2, v2, 0x3e8

    .line 19666
    :cond_8
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/callapp/contacts/CallAppApplication;->a(II)V

    .line 19668
    new-instance v9, Lcom/callapp/contacts/CallAppApplication$17;

    invoke-direct {v9, p0, v2}, Lcom/callapp/contacts/CallAppApplication$17;-><init>(Lcom/callapp/contacts/CallAppApplication;I)V

    .line 19674
    invoke-virtual {v9}, Lcom/callapp/contacts/CallAppApplication$17;->execute()Lcom/callapp/contacts/manager/task/Task;

    const-string v9, "Upgraded from version %s to version %s"

    new-array v10, v8, [Ljava/lang/Object;

    .line 19675
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v0, v9, v10}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v9

    new-array v10, v8, [Ljava/lang/Object;

    .line 19677
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v4

    const-string v2, "Error while upgrading from %s to %s"

    invoke-static {v0, v9, v2, v10}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    if-eqz v7, :cond_a

    .line 19683
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20684
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 20685
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bU:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 20686
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bT:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 20688
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 20689
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->initRingerHandlerIfNeeded()V

    const-string v2, "Upgraded from SDK version %s to SDK version %s"

    new-array v9, v8, [Ljava/lang/Object;

    .line 19684
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v0, v2, v9}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    new-array v8, v8, [Ljava/lang/Object;

    .line 19686
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    const-string v3, "Error while upgrading from SDK %s to SDK %s"

    invoke-static {v0, v2, v3, v8}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    if-nez v6, :cond_b

    if-eqz v7, :cond_c

    .line 19691
    :cond_b
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->T:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 19692
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->S:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 19454
    :cond_c
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a()V

    .line 19456
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$9;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$9;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19483
    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication$9;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19485
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 19486
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/CallAppApplication$10;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/CallAppApplication$10;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->h:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 19504
    :cond_d
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 19505
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$11;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$11;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    .line 19519
    :cond_e
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ga:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    .line 19520
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$12;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$12;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19537
    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication$12;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 19540
    :cond_f
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$13;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$13;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 19553
    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication$13;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/callapp/contacts/CallAppApplication;->h:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .line 181
    sget-object v0, Lcom/callapp/contacts/CallAppApplication;->n:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 1

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->h:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object v0
.end method

.method private d()V
    .locals 11

    .line 1545
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/util/List;

    move-result-object v0

    .line 1546
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 1547
    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getPersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v1

    .line 1548
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1549
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_encoded"

    invoke-static {v1, v3}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1550
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1551
    new-instance v8, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1553
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v2, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;

    .line 1555
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v10, Lcom/callapp/contacts/CallAppApplication$31;

    invoke-direct {v10, p0, v4, v9}, Lcom/callapp/contacts/CallAppApplication$31;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/util/Map;Ljava/lang/String;)V

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Lcom/linkedin/android/litr/e;)V

    .line 1591
    invoke-virtual {v2}, Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/CallAppApplication;)Ljava/lang/Object;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/callapp/contacts/CallAppApplication;->k:Ljava/lang/Object;

    return-object p0
.end method

.method private e()V
    .locals 12

    .line 1620
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 1621
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->nameDataSource:Lio/objectbox/g;

    const-string v3, "googlePlus"

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 1622
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1623
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1624
    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setNameDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    goto :goto_0

    .line 1626
    :cond_0
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 1627
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 1628
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    long-to-double v9, v1

    new-array v11, v4, [Ljava/lang/String;

    const-string v6, "Social profile"

    const-string v7, "Replaced googlePlus fastCache nameDataSource "

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1631
    :cond_1
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/FastCacheData_;->photoDataSource:Lio/objectbox/g;

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 1632
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1634
    sget-object v6, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->setPhotoDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    goto :goto_1

    .line 1636
    :cond_2
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 1637
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 1638
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    long-to-double v9, v0

    new-array v11, v4, [Ljava/lang/String;

    const-string v6, "Social profile"

    const-string v7, "Replaced googlePlus fastCache photoDataSource "

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1641
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v1, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 1642
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto_;->dataSource:Lio/objectbox/g;

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 1643
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1644
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    .line 1645
    sget-object v5, Lcom/callapp/contacts/model/contact/DataSource;->google:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V

    goto :goto_2

    .line 1647
    :cond_4
    invoke-virtual {v0, v1}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 1648
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 1649
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    long-to-double v9, v0

    new-array v11, v4, [Ljava/lang/String;

    const-string v6, "Social profile"

    const-string v7, "Replaced googlePlus chosenContactPhoto data source "

    invoke-virtual/range {v5 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/CallAppApplication;)Landroid/app/Service;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/callapp/contacts/CallAppApplication;->l:Landroid/app/Service;

    return-object p0
.end method

.method private synthetic f()V
    .locals 2

    .line 1124
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dM:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 18432
    iput-object p0, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 1124
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b()V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/CallAppApplication;)Z
    .locals 0

    .line 181
    iget-boolean p0, p0, Lcom/callapp/contacts/CallAppApplication;->j:Z

    return p0
.end method

.method public static get()Lcom/callapp/contacts/CallAppApplication;
    .locals 1

    .line 1759
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/callapp/contacts/CallAppApplication;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/callapp/contacts/CallAppApplication;->i:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method public static synthetic lambda$fx_4pKy2HieNxOaDFKwyBXMbm74(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/CallAppApplication;->f()V

    return-void
.end method

.method private setWhatsNewPrefs(Z)V
    .locals 2

    .line 1661
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1663
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->el:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1858
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1776
    invoke-static {p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void

    .line 1778
    :cond_0
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$32;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/CallAppApplication$32;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    .line 1784
    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication$32;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(ZLandroid/content/Intent;)V
    .locals 1

    .line 583
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/CallAppApplication$15;-><init>(Lcom/callapp/contacts/CallAppApplication;ZLandroid/content/Intent;)V

    .line 620
    sget-object p1, Lcom/callapp/contacts/CallAppApplication;->f:Landroid/os/Handler;

    new-instance p2, Lcom/callapp/contacts/CallAppApplication$16;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/CallAppApplication$16;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 635
    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 636
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 2

    .line 1803
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1804
    invoke-static {p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/CallAppApplication$33;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/CallAppApplication$33;-><init>(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDaysSinceInstall()J
    .locals 4

    .line 1829
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 1831
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1832
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1833
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    .line 1835
    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public getObjectBoxStore()Lio/objectbox/BoxStore;
    .locals 1

    .line 1843
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1848
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "keyguard"

    .line 1850
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1851
    invoke-static {}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p1

    return-object p1

    .line 17858
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 1765
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1766
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method public getVersionCode()I
    .locals 4

    const/4 v0, 0x0

    .line 1721
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 1724
    const-class v2, Lcom/callapp/contacts/CallAppApplication;

    const-string v3, "Couldn\'t find app versionCode"

    invoke-static {v2, v1, v3}, Lcom/callapp/contacts/util/CLog;->d(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method public isUnitTestMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1818
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1820
    invoke-static {p0}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 1821
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->d()V

    return-void
.end method

.method public onCreate()V
    .locals 8

    .line 261
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {p0}, Lcom/google/android/play/core/missingsplits/b;->a(Landroid/content/Context;)Lcom/google/android/play/core/missingsplits/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/play/core/missingsplits/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onCreate()V

    .line 268
    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    invoke-super {p0, v1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    const v2, 0x7f050003

    .line 3239
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3240
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3241
    sget-object v4, Lcom/callapp/contacts/CallAppApplication;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "com.callapp.contacts.debug.CallAppLeakCanaryManager"

    if-eqz v3, :cond_1

    :try_start_1
    const-string v3, "initLeakCanary"

    .line 3243
    const-class v5, Landroid/app/Application;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v4, v3, v5, v6}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v3, "disableLeakCanary"

    const/4 v5, 0x0

    .line 3249
    invoke-static {v4, v3, v5, v5}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :catch_0
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Landroid/app/Application;)V

    const/4 v3, 0x1

    .line 276
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/model/MyObjectBox;->builder()Lio/objectbox/b;

    move-result-object v4

    .line 4199
    invoke-static {p0}, Lio/objectbox/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lio/objectbox/b;->f:Ljava/lang/Object;

    .line 4251
    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lio/objectbox/b;->b(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v6

    const-string v7, "objectbox"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4202
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 4203
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 4204
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 4205
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not init Android base dir at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4208
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4211
    iput-object v5, v4, Lio/objectbox/b;->c:Ljava/io/File;

    .line 4212
    iput-boolean v3, v4, Lio/objectbox/b;->i:Z

    const/16 v5, 0x200

    .line 4301
    iput v5, v4, Lio/objectbox/b;->l:I

    const-string v5, "CallAppOB"

    .line 5142
    iget-object v6, v4, Lio/objectbox/b;->b:Ljava/io/File;

    if-nez v6, :cond_c

    .line 5149
    iput-object v5, v4, Lio/objectbox/b;->d:Ljava/lang/String;

    const/4 v5, 0x3

    .line 5424
    iput v5, v4, Lio/objectbox/b;->m:I

    .line 280
    new-instance v5, Lcom/callapp/contacts/CallAppApplication$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/CallAppApplication$1;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 5434
    iput-object v5, v4, Lio/objectbox/b;->s:Lio/objectbox/h;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 298
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xc

    .line 6400
    iput v2, v4, Lio/objectbox/b;->h:I

    .line 6406
    iput-boolean v3, v4, Lio/objectbox/b;->j:Z

    .line 300
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 301
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_5

    .line 302
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    .line 304
    :cond_5
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 308
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v2

    if-nez v2, :cond_9

    .line 311
    :try_start_3
    invoke-virtual {v4}, Lio/objectbox/b;->a()Lio/objectbox/BoxStore;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 314
    invoke-static {v2}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "objectBoxStore build"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :try_start_4
    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    if-eqz v2, :cond_7

    .line 320
    invoke-virtual {v2}, Lio/objectbox/BoxStore;->close()V

    .line 7346
    :cond_7
    iput-boolean v3, v4, Lio/objectbox/b;->p:Z

    .line 323
    invoke-virtual {v4}, Lio/objectbox/b;->a()Lio/objectbox/BoxStore;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 326
    invoke-static {v2}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 327
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "objectBoxStore build with previous commit"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 333
    :goto_3
    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    if-nez v2, :cond_8

    .line 334
    new-instance v2, Lio/objectbox/exception/DbException;

    const-string v4, "objectBoxStore is null"

    invoke-direct {v2, v4}, Lio/objectbox/exception/DbException;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {v2}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 336
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/objectbox/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 340
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    new-instance v4, Lcom/callapp/contacts/CallAppApplication$2;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/CallAppApplication$2;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    .line 8144
    iget-wide v5, v2, Lio/objectbox/BoxStore;->b:J

    invoke-static {v5, v6, v4}, Lio/objectbox/BoxStore;->nativeSetDbExceptionListener(JLio/objectbox/exception/DbExceptionListener;)V

    .line 366
    :try_start_5
    iget-object v2, p0, Lcom/callapp/contacts/CallAppApplication;->g:Lio/objectbox/BoxStore;

    const-class v4, Lcom/callapp/contacts/model/objectbox/OBPref;

    invoke-virtual {v2, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 369
    invoke-static {v2}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "objectBoxStore first query"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 376
    :cond_9
    :goto_4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "huawei"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 377
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$3;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-static {p0, v0}, Lcom/e/a/a/a;->a(Landroid/app/Application;Lcom/e/a/a/a$c;)V

    .line 385
    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 386
    sget-object v0, Lcom/callapp/contacts/CallAppApplication;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 387
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 388
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 389
    sput-object v2, Lcom/callapp/contacts/CallAppApplication;->f:Landroid/os/Handler;

    new-instance v0, Lcom/callapp/contacts/CallAppApplication$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$4;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    :cond_b
    invoke-static {v1}, Lcom/mopub/common/ViewabilityManager;->setViewabilityEnabled(Z)V

    .line 401
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    .line 8244
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->H:Ljava/lang/ref/WeakReference;

    .line 8246
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPhoneStateManager()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    .line 8247
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCallAppRemoteConfigManager()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    .line 8249
    new-instance v1, Lcom/callapp/contacts/manager/Singletons$1;

    invoke-direct {v1, v0, p0}, Lcom/callapp/contacts/manager/Singletons$1;-><init>(Lcom/callapp/contacts/manager/Singletons;Lcom/callapp/contacts/CallAppApplication;)V

    .line 8268
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 403
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->a()V

    .line 404
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getThemeStyleResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/CallAppApplication;->setTheme(I)V

    .line 406
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/CallAppApplication$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/CallAppApplication$5;-><init>(Lcom/callapp/contacts/CallAppApplication;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->setDefaultsIfNeeded(Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void

    .line 5143
    :cond_c
    :try_start_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Already has directory, cannot assign name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4209
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Android base dir is not a dir: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    move-exception v1

    .line 291
    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "boxStoreBuilder failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1694
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    const-string v1, "onLowMemory called"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1695
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCacheManager()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    .line 13335
    iget-object v0, v0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    .line 1696
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->onLowMemory()V

    .line 1697
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    .line 14152
    iget-object v0, v0, Lcom/callapp/contacts/manager/phone/PhoneManager;->a:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    .line 1699
    invoke-super {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 7

    .line 1737
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    invoke-super {p0, v0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15697
    invoke-static {}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->c()V

    .line 15698
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->c()V

    .line 1741
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1742
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    .line 16272
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    .line 16273
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    .line 16274
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16276
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    .line 16277
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    .line 16278
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16280
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    .line 16281
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    .line 16282
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16284
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    .line 16285
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    .line 16286
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16288
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    .line 16289
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    .line 16290
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16292
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    .line 16293
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    .line 16294
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16296
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    .line 16297
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    .line 16298
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16300
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    .line 16301
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    .line 16302
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16304
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    .line 16305
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    .line 16306
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16308
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    .line 16309
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    .line 16310
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16312
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    .line 16313
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    .line 16314
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16316
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    .line 16317
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    .line 16318
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16320
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    .line 16321
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    .line 16322
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16324
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    .line 16325
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    .line 16326
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16328
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    .line 16329
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    .line 16330
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16332
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    .line 16333
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    .line 16334
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16336
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    .line 16337
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    .line 16338
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16340
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    .line 16341
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    .line 16342
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16344
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    .line 16345
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    .line 16346
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16348
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    .line 16349
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    .line 16350
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16352
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    .line 16353
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    .line 16354
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16356
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    .line 16357
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    .line 16358
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16360
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    .line 16361
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    .line 16362
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16364
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    .line 16365
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    .line 16366
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16368
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    .line 16369
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    .line 16370
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16372
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    .line 16373
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    .line 16374
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16376
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons$SenderType;->values()[Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 16377
    invoke-static {v5}, Lcom/callapp/contacts/manager/Singletons$SenderType;->access$1800(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/manager/ManagedLifecycle;

    move-result-object v6

    .line 16378
    invoke-static {v5, v1}, Lcom/callapp/contacts/manager/Singletons$SenderType;->access$1802(Lcom/callapp/contacts/manager/Singletons$SenderType;Lcom/callapp/contacts/manager/ManagedLifecycle;)Lcom/callapp/contacts/manager/ManagedLifecycle;

    .line 16379
    invoke-static {v6}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16382
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    if-eqz v2, :cond_1

    .line 16383
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    .line 16384
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    .line 16385
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16388
    :cond_1
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    if-eqz v2, :cond_2

    .line 16389
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    .line 16390
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    .line 16391
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16394
    :cond_2
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    if-eqz v2, :cond_3

    .line 16395
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    .line 16396
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    .line 16397
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16400
    :cond_3
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    if-eqz v2, :cond_4

    .line 16401
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    .line 16402
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    .line 16403
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16406
    :cond_4
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    if-eqz v2, :cond_5

    .line 16407
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    .line 16408
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    .line 16409
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16412
    :cond_5
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    if-eqz v2, :cond_6

    .line 16413
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    .line 16414
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    .line 16415
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16418
    :cond_6
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    if-eqz v2, :cond_7

    .line 16419
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    .line 16420
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    .line 16421
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16424
    :cond_7
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    if-eqz v2, :cond_8

    .line 16425
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    .line 16426
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    .line 16427
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16430
    :cond_8
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    if-eqz v2, :cond_9

    .line 16431
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    .line 16432
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    .line 16433
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16436
    :cond_9
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    .line 16437
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    .line 16438
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16440
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    .line 16441
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    .line 16442
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16444
    iget-object v2, v0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    .line 16445
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    .line 16446
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V

    .line 16448
    iput-object v1, v0, Lcom/callapp/contacts/manager/Singletons;->H:Ljava/lang/ref/WeakReference;

    .line 1745
    :cond_a
    sget-object v0, Lcom/callapp/contacts/CallAppApplication;->f:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 1746
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1749
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 1750
    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1751
    invoke-static {}, Lcom/callapp/contacts/receiver/WifiStateReceiver;->get()Lcom/callapp/contacts/receiver/WifiStateReceiver;

    move-result-object v0

    .line 17065
    iget-object v1, v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->a:Landroid/net/ConnectivityManager;

    iget-object v0, v0, Lcom/callapp/contacts/receiver/WifiStateReceiver;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1755
    :cond_c
    invoke-super {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1708
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getCacheManager()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    .line 14335
    iget-object v0, v0, Lcom/callapp/contacts/manager/cache/CacheManager;->b:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    .line 1709
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    .line 15152
    iget-object v0, v0, Lcom/callapp/contacts/manager/phone/PhoneManager;->a:Landroidx/b/e;

    invoke-virtual {v0}, Landroidx/b/e;->evictAll()V

    .line 1713
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideUtils;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1716
    :catch_0
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onTrimMemory(I)V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    .line 2336
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerActivityLifecycleCallbacks callback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2338
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    .line 17905
    iget-object v0, v0, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    .line 1863
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 1865
    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 1870
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 1872
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 0

    .line 1877
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 1879
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    .line 1884
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1886
    invoke-super/range {v0 .. v5}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    .line 2343
    const-class v0, Lcom/callapp/contacts/CallAppApplication;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterActivityLifecycleCallbacks callback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2345
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication;->m:Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    .line 17909
    iget-object v0, v0, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1891
    invoke-static {p1}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 1893
    invoke-super {p0, p1}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
