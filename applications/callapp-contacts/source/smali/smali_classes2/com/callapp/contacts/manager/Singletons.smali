.class public Lcom/callapp/contacts/manager/Singletons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/Singletons$SenderType;
    }
.end annotation


# static fields
.field private static final N:Lcom/callapp/contacts/manager/Singletons;

.field private static aa:Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

.field private static ab:Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

.field private static ac:Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;

.field private static ad:Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

.field private static ae:Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

.field private static af:Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

.field private static ag:Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

.field private static ah:Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

.field private static ai:Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;

.field private static aj:Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

.field private static ak:Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;

.field private static al:Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;

.field private static am:Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

.field private static an:Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

.field private static ao:Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;

.field private static ap:Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

.field private static aq:Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;


# instance fields
.field public A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

.field public B:Lcom/callapp/contacts/wearable/WearableClientHandler;

.field public C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

.field public D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

.field public E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

.field public F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

.field public G:Lcom/callapp/contacts/util/video/VideoCacheManager;

.field public H:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/CallAppApplication;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcom/callapp/contacts/manager/ExceptionManager;

.field public J:Lcom/callapp/contacts/manager/sim/SimManager;

.field public K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

.field public L:Lcom/callapp/contacts/recorder/CallRecorderManager;

.field public M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

.field private O:Lcom/callapp/contacts/manager/AreaCodesDB;

.field private P:Lcom/callapp/contacts/receiver/ScreenOffReceiver;

.field private Q:Lcom/callapp/contacts/manager/permission/PermissionManager;

.field private R:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

.field private S:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

.field private T:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

.field private U:Lcom/callapp/contacts/api/helper/vk/VKHelper;

.field private V:Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

.field private W:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

.field private X:Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

.field private Y:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

.field private Z:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

.field public a:Lcom/callapp/contacts/manager/ActionsManager;

.field private ar:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

.field public b:Lcom/callapp/contacts/manager/UserProfileManager;

.field public c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

.field public d:Lcom/callapp/contacts/manager/FeedbackManager;

.field public e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

.field public f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

.field public g:Lcom/callapp/contacts/manager/OverlayManager;

.field public h:Lcom/callapp/contacts/manager/phone/PhoneManager;

.field public i:Lcom/callapp/contacts/manager/popup/PopupManager;

.field public j:Lcom/callapp/contacts/manager/messaging/FcmManager;

.field public k:Lcom/callapp/contacts/manager/NotificationManager;

.field public l:Lcom/callapp/contacts/manager/cache/CacheManager;

.field public m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

.field public n:Lcom/callapp/contacts/manager/WifiLockManager;

.field public o:Lcom/callapp/contacts/manager/ProximityManager;

.field public p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

.field public q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

.field public r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

.field public s:Lcom/callapp/contacts/manager/ContactLoaderManager;

.field public t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

.field public u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

.field public v:Lcom/callapp/contacts/manager/IncognitoCallManager;

.field public w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

.field public x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

.field public y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

.field public z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/callapp/contacts/manager/Singletons;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/Singletons;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/Singletons;->N:Lcom/callapp/contacts/manager/Singletons;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->an:Lcom/callapp/contacts/api/helper/instantmessaging/SmsSenderHelper;

    return-object v0
.end method

.method public static a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;
    .locals 0

    .line 918
    invoke-static {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->access$1900(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 779
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/callapp/contacts/manager/ManagedLifecycle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 785
    :try_start_0
    invoke-interface {p0}, Lcom/callapp/contacts/manager/ManagedLifecycle;->destroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 787
    const-class v0, Lcom/callapp/contacts/manager/Singletons;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->am:Lcom/callapp/contacts/api/helper/instantmessaging/EmailSenderHelper;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/ManagedLifecycle;)Lcom/callapp/contacts/manager/ManagedLifecycle;
    .locals 0

    .line 42092
    invoke-interface {p0}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    return-object p0
.end method

.method public static b(Lcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 0

    .line 922
    invoke-static {p0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->access$2000(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    return-void
.end method

.method static synthetic c()Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->aa:Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;

    return-object v0
.end method

.method static synthetic d()Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ab:Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;

    return-object v0
.end method

.method static synthetic e()Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ag:Lcom/callapp/contacts/api/helper/instantmessaging/TelegramSenderHelper;

    return-object v0
.end method

.method static synthetic f()Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->aj:Lcom/callapp/contacts/api/helper/instantmessaging/WeChatSenderHelper;

    return-object v0
.end method

.method static synthetic g()Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ah:Lcom/callapp/contacts/api/helper/instantmessaging/ViberSenderHelper;

    return-object v0
.end method

.method public static get()Lcom/callapp/contacts/manager/Singletons;
    .locals 1

    .line 793
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->N:Lcom/callapp/contacts/manager/Singletons;

    return-object v0
.end method

.method static synthetic h()Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ak:Lcom/callapp/contacts/api/helper/instantmessaging/SkypeSenderHelper;

    return-object v0
.end method

.method static synthetic i()Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ai:Lcom/callapp/contacts/api/helper/instantmessaging/GooglePlusHangoutSenderHelper;

    return-object v0
.end method

.method static synthetic j()Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->al:Lcom/callapp/contacts/api/helper/instantmessaging/YahooSenderHelper;

    return-object v0
.end method

.method static synthetic k()Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ac:Lcom/callapp/contacts/api/helper/instantmessaging/FacebookImSenderHelper;

    return-object v0
.end method

.method static synthetic l()Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ae:Lcom/callapp/contacts/api/helper/instantmessaging/TwitterImSenderHelper;

    return-object v0
.end method

.method static synthetic m()Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ad:Lcom/callapp/contacts/api/helper/instantmessaging/MessengerImSenderHelper;

    return-object v0
.end method

.method static synthetic n()Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->af:Lcom/callapp/contacts/api/helper/instantmessaging/InstagramImSenderHelper;

    return-object v0
.end method

.method static synthetic o()Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ao:Lcom/callapp/contacts/api/helper/instantmessaging/DuoSenderHelper;

    return-object v0
.end method

.method static synthetic p()Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->ap:Lcom/callapp/contacts/api/helper/instantmessaging/SignalSenderHelper;

    return-object v0
.end method

.method static synthetic q()Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;
    .locals 1

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/Singletons;->aq:Lcom/callapp/contacts/api/helper/instantmessaging/AlloSenderHelper;

    return-object v0
.end method


# virtual methods
.method public getActionsManager()Lcom/callapp/contacts/manager/ActionsManager;
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    if-nez v0, :cond_1

    .line 657
    const-class v0, Lcom/callapp/contacts/manager/ActionsManager;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    if-nez v1, :cond_0

    .line 659
    new-instance v1, Lcom/callapp/contacts/manager/ActionsManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/ActionsManager;-><init>()V

    .line 19092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 659
    check-cast v1, Lcom/callapp/contacts/manager/ActionsManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    .line 661
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 663
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->a:Lcom/callapp/contacts/manager/ActionsManager;

    return-object v0
.end method

.method public getAnalyticsManager()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    if-nez v0, :cond_1

    .line 470
    const-class v0, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    if-nez v1, :cond_0

    .line 472
    new-instance v1, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;-><init>()V

    .line 3092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 472
    check-cast v1, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    .line 474
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 476
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->p:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    return-object v0
.end method

.method public getApplication()Lcom/callapp/contacts/CallAppApplication;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->H:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 453
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/CallAppApplication;

    return-object v0
.end method

.method public getAreaCodesDB()Lcom/callapp/contacts/manager/AreaCodesDB;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->O:Lcom/callapp/contacts/manager/AreaCodesDB;

    if-nez v0, :cond_1

    .line 591
    const-class v0, Lcom/callapp/contacts/manager/AreaCodesDB;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->O:Lcom/callapp/contacts/manager/AreaCodesDB;

    if-nez v1, :cond_0

    .line 593
    new-instance v1, Lcom/callapp/contacts/manager/AreaCodesDB;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/AreaCodesDB;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->O:Lcom/callapp/contacts/manager/AreaCodesDB;

    .line 595
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 597
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->O:Lcom/callapp/contacts/manager/AreaCodesDB;

    return-object v0
.end method

.method public getCacheManager()Lcom/callapp/contacts/manager/cache/CacheManager;
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    if-nez v0, :cond_1

    .line 514
    const-class v0, Lcom/callapp/contacts/manager/cache/CacheManager;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/cache/CacheManager;-><init>()V

    .line 7092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 516
    check-cast v1, Lcom/callapp/contacts/manager/cache/CacheManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    .line 518
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 520
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->l:Lcom/callapp/contacts/manager/cache/CacheManager;

    return-object v0
.end method

.method public getCallAppChatHeadLifecycleObserverManager()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    if-nez v0, :cond_1

    .line 702
    const-class v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    monitor-enter v0

    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    if-nez v1, :cond_0

    .line 704
    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    invoke-direct {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;-><init>()V

    .line 23092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 704
    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    .line 706
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 708
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->e:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    return-object v0
.end method

.method public getCallAppClipboardManager()Lcom/callapp/contacts/manager/CallAppClipboardManager;
    .locals 2

    .line 982
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    if-nez v0, :cond_1

    .line 983
    const-class v0, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    if-nez v1, :cond_0

    .line 985
    new-instance v1, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;-><init>()V

    .line 33092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 985
    check-cast v1, Lcom/callapp/contacts/manager/CallAppClipboardManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    .line 987
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 990
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->D:Lcom/callapp/contacts/manager/CallAppClipboardManager;

    return-object v0
.end method

.method public getCallAppRemoteConfigManager()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    if-nez v0, :cond_1

    .line 971
    const-class v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    if-nez v1, :cond_0

    .line 973
    new-instance v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;-><init>()V

    .line 32092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 973
    check-cast v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    .line 975
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 978
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->C:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    return-object v0
.end method

.method public getCatalogManager()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    if-nez v0, :cond_1

    .line 635
    const-class v0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;-><init>()V

    .line 17092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 637
    check-cast v1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    .line 639
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 641
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->u:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    return-object v0
.end method

.method public getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    if-nez v0, :cond_1

    .line 580
    const-class v0, Lcom/callapp/contacts/manager/ContactLoaderManager;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    if-nez v1, :cond_0

    .line 582
    new-instance v1, Lcom/callapp/contacts/manager/ContactLoaderManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/ContactLoaderManager;-><init>()V

    .line 13092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 582
    check-cast v1, Lcom/callapp/contacts/manager/ContactLoaderManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    .line 584
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 586
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->s:Lcom/callapp/contacts/manager/ContactLoaderManager;

    return-object v0
.end method

.method public getDropBoxHelper()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Y:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    if-nez v0, :cond_1

    .line 831
    const-class v0, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    monitor-enter v0

    .line 832
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Y:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    if-nez v1, :cond_0

    .line 833
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Y:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    .line 835
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 837
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Y:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    return-object v0
.end method

.method public getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;
    .locals 2

    .line 645
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    if-nez v0, :cond_1

    .line 646
    const-class v0, Lcom/callapp/contacts/manager/ExceptionManager;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    if-nez v1, :cond_0

    .line 648
    new-instance v1, Lcom/callapp/contacts/manager/ExceptionManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/ExceptionManager;-><init>()V

    .line 18092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 648
    check-cast v1, Lcom/callapp/contacts/manager/ExceptionManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    .line 650
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 652
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->I:Lcom/callapp/contacts/manager/ExceptionManager;

    return-object v0
.end method

.method public getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->R:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    if-nez v0, :cond_1

    .line 820
    const-class v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->R:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    if-nez v1, :cond_0

    .line 822
    new-instance v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->R:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    .line 824
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 826
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->R:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    return-object v0
.end method

.method public getFcmManager()Lcom/callapp/contacts/manager/messaging/FcmManager;
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    if-nez v0, :cond_1

    .line 536
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    if-nez v1, :cond_0

    .line 538
    new-instance v1, Lcom/callapp/contacts/manager/messaging/FcmManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/messaging/FcmManager;-><init>()V

    .line 9092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 538
    check-cast v1, Lcom/callapp/contacts/manager/messaging/FcmManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    .line 540
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 542
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->j:Lcom/callapp/contacts/manager/messaging/FcmManager;

    return-object v0
.end method

.method public getFeedbackManager()Lcom/callapp/contacts/manager/FeedbackManager;
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    if-nez v0, :cond_1

    .line 691
    const-class v0, Lcom/callapp/contacts/manager/FeedbackManager;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/FeedbackManager;-><init>()V

    .line 22092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 693
    check-cast v1, Lcom/callapp/contacts/manager/FeedbackManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    .line 695
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 697
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    return-object v0
.end method

.method public getFirstTimeExperienceCallLog()Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;
    .locals 2

    .line 1038
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    if-nez v0, :cond_1

    .line 1039
    const-class v0, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    monitor-enter v0

    .line 1040
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    if-nez v1, :cond_0

    .line 1041
    new-instance v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;-><init>()V

    .line 38092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1041
    check-cast v1, Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    .line 1043
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1045
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->K:Lcom/callapp/contacts/activity/calllog/FirstTimeExperienceCallLog;

    return-object v0
.end method

.method public getFoursquareHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->V:Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    if-nez v0, :cond_1

    .line 886
    const-class v0, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    monitor-enter v0

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->V:Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    if-nez v1, :cond_0

    .line 888
    new-instance v1, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->V:Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    .line 890
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 892
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->V:Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    return-object v0
.end method

.method public getGmailManager()Lcom/callapp/contacts/api/helper/gmail/GmailManager;
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    if-nez v0, :cond_1

    .line 569
    const-class v0, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    if-nez v1, :cond_0

    .line 571
    new-instance v1, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/gmail/GmailManager;-><init>()V

    .line 12092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 571
    check-cast v1, Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    .line 573
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 575
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->r:Lcom/callapp/contacts/api/helper/gmail/GmailManager;

    return-object v0
.end method

.method public getGoogleDriveHelper()Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Z:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    if-nez v0, :cond_1

    .line 842
    const-class v0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Z:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    if-nez v1, :cond_0

    .line 844
    new-instance v1, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Z:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    .line 846
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 848
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Z:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    return-object v0
.end method

.method public getGoogleHelper()Lcom/callapp/contacts/api/helper/google/GoogleHelper;
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->T:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    if-nez v0, :cond_1

    .line 864
    const-class v0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    monitor-enter v0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->T:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    if-nez v1, :cond_0

    .line 866
    new-instance v1, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->T:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    .line 868
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 870
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->T:Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    return-object v0
.end method

.method public getIncognitoCallManager()Lcom/callapp/contacts/manager/IncognitoCallManager;
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    if-nez v0, :cond_1

    .line 492
    const-class v0, Lcom/callapp/contacts/manager/IncognitoCallManager;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    if-nez v1, :cond_0

    .line 494
    new-instance v1, Lcom/callapp/contacts/manager/IncognitoCallManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/IncognitoCallManager;-><init>()V

    .line 5092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 494
    check-cast v1, Lcom/callapp/contacts/manager/IncognitoCallManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    .line 496
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 498
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->v:Lcom/callapp/contacts/manager/IncognitoCallManager;

    return-object v0
.end method

.method public getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;
    .locals 2

    .line 896
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->W:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    if-nez v0, :cond_1

    .line 897
    const-class v0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->W:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    if-nez v1, :cond_0

    .line 899
    new-instance v1, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->W:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    .line 901
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 903
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->W:Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    return-object v0
.end method

.method public getKeyguardActivityStateManager()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;
    .locals 2

    .line 1071
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    if-nez v0, :cond_1

    .line 1072
    const-class v0, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    if-nez v1, :cond_0

    .line 1074
    new-instance v1, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;-><init>()V

    .line 41092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1074
    check-cast v1, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    .line 1076
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1078
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->M:Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    return-object v0
.end method

.method public getLocationPrefs()Lcom/callapp/contacts/manager/preferences/LocationPrefs;
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    if-nez v0, :cond_1

    .line 995
    const-class v0, Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    if-nez v1, :cond_0

    .line 997
    new-instance v1, Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/preferences/LocationPrefs;-><init>()V

    .line 34092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 997
    check-cast v1, Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    .line 999
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1001
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->E:Lcom/callapp/contacts/manager/preferences/LocationPrefs;

    return-object v0
.end method

.method public getLockscreenKeyguardManager()Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    if-nez v0, :cond_1

    .line 724
    const-class v0, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    if-nez v1, :cond_0

    .line 726
    new-instance v1, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;-><init>()V

    .line 25092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 726
    check-cast v1, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    .line 728
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 730
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->m:Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    return-object v0
.end method

.method public getNotificationManager()Lcom/callapp/contacts/manager/NotificationManager;
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    if-nez v0, :cond_1

    .line 713
    const-class v0, Lcom/callapp/contacts/manager/NotificationManager;

    monitor-enter v0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    if-nez v1, :cond_0

    .line 715
    new-instance v1, Lcom/callapp/contacts/manager/NotificationManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationManager;-><init>()V

    .line 24092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 715
    check-cast v1, Lcom/callapp/contacts/manager/NotificationManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    .line 717
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 719
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->k:Lcom/callapp/contacts/manager/NotificationManager;

    return-object v0
.end method

.method public getOverlayManager()Lcom/callapp/contacts/manager/OverlayManager;
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    if-nez v0, :cond_1

    .line 613
    const-class v0, Lcom/callapp/contacts/manager/OverlayManager;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Lcom/callapp/contacts/manager/OverlayManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/OverlayManager;-><init>()V

    .line 15092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 615
    check-cast v1, Lcom/callapp/contacts/manager/OverlayManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    .line 617
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 619
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->g:Lcom/callapp/contacts/manager/OverlayManager;

    return-object v0
.end method

.method public getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Q:Lcom/callapp/contacts/manager/permission/PermissionManager;

    if-nez v0, :cond_1

    .line 503
    const-class v0, Lcom/callapp/contacts/manager/permission/PermissionManager;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Q:Lcom/callapp/contacts/manager/permission/PermissionManager;

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/permission/PermissionManager;-><init>()V

    .line 6092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 505
    check-cast v1, Lcom/callapp/contacts/manager/permission/PermissionManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->Q:Lcom/callapp/contacts/manager/permission/PermissionManager;

    .line 507
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 509
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->Q:Lcom/callapp/contacts/manager/permission/PermissionManager;

    return-object v0
.end method

.method public getPhoneManager()Lcom/callapp/contacts/manager/phone/PhoneManager;
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    if-nez v0, :cond_1

    .line 558
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneManager;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    if-nez v1, :cond_0

    .line 560
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;-><init>()V

    .line 11092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 560
    check-cast v1, Lcom/callapp/contacts/manager/phone/PhoneManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    .line 562
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 564
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->h:Lcom/callapp/contacts/manager/phone/PhoneManager;

    return-object v0
.end method

.method public getPhoneStateManager()Lcom/callapp/contacts/manager/phone/PhoneStateManager;
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    if-nez v0, :cond_1

    .line 525
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    if-nez v1, :cond_0

    .line 527
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;-><init>()V

    .line 8092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 527
    check-cast v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    .line 529
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 531
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->f:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    return-object v0
.end method

.method public getPhoneVerifierManager()Lcom/callapp/contacts/manager/PhoneVerifierManager;
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    if-nez v0, :cond_1

    .line 679
    const-class v0, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;-><init>()V

    .line 21092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 681
    check-cast v1, Lcom/callapp/contacts/manager/PhoneVerifierManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    .line 683
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 685
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->c:Lcom/callapp/contacts/manager/PhoneVerifierManager;

    return-object v0
.end method

.method public getPinterestHelper()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;
    .locals 2

    .line 907
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->X:Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    if-nez v0, :cond_1

    .line 908
    const-class v0, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->X:Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    if-nez v1, :cond_0

    .line 910
    new-instance v1, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->X:Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    .line 912
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 914
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->X:Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    return-object v0
.end method

.method public getPopupManager()Lcom/callapp/contacts/manager/popup/PopupManager;
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    if-nez v0, :cond_1

    .line 547
    const-class v0, Lcom/callapp/contacts/manager/popup/PopupManager;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Lcom/callapp/contacts/manager/popup/PopupManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/popup/PopupManager;-><init>()V

    .line 10092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 549
    check-cast v1, Lcom/callapp/contacts/manager/popup/PopupManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    .line 551
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 553
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->i:Lcom/callapp/contacts/manager/popup/PopupManager;

    return-object v0
.end method

.method public getPrefsStore()Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    if-nez v0, :cond_1

    .line 481
    const-class v0, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;-><init>()V

    .line 4092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 483
    check-cast v1, Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    .line 485
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 487
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->q:Lcom/callapp/contacts/manager/preferences/LocalPrefsStore;

    return-object v0
.end method

.method public getProximityManager()Lcom/callapp/contacts/manager/ProximityManager;
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    if-nez v0, :cond_1

    .line 746
    const-class v0, Lcom/callapp/contacts/manager/ProximityManager;

    monitor-enter v0

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    if-nez v1, :cond_0

    .line 748
    new-instance v1, Lcom/callapp/contacts/manager/ProximityManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/ProximityManager;-><init>()V

    .line 27092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 748
    check-cast v1, Lcom/callapp/contacts/manager/ProximityManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    .line 750
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 752
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->o:Lcom/callapp/contacts/manager/ProximityManager;

    return-object v0
.end method

.method public getRecognizedContactNotificationManager()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    if-nez v0, :cond_1

    .line 624
    const-class v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;-><init>()V

    .line 16092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 626
    check-cast v1, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    .line 628
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 630
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->t:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    return-object v0
.end method

.method public getRecordManager()Lcom/callapp/contacts/recorder/CallRecorderManager;
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    if-nez v0, :cond_1

    .line 1050
    const-class v0, Lcom/callapp/contacts/recorder/CallRecorderManager;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    if-nez v1, :cond_0

    .line 1052
    new-instance v1, Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-direct {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;-><init>()V

    .line 39092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1052
    check-cast v1, Lcom/callapp/contacts/recorder/CallRecorderManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    .line 1054
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1056
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->L:Lcom/callapp/contacts/recorder/CallRecorderManager;

    return-object v0
.end method

.method public getRecordTestManager()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->ar:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    if-nez v0, :cond_1

    .line 1061
    const-class v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    monitor-enter v0

    .line 1062
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->ar:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    if-nez v1, :cond_0

    .line 1063
    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    invoke-direct {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;-><init>()V

    .line 40092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1063
    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->ar:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    .line 1065
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1067
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->ar:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    return-object v0
.end method

.method public getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object p1

    return-object p1

    .line 809
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getPinterestHelper()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    move-result-object p1

    return-object p1

    .line 803
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object p1

    return-object p1

    .line 805
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getFoursquareHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object p1

    return-object p1

    .line 807
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getGoogleHelper()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object p1

    return-object p1

    .line 801
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object p1

    return-object p1

    .line 799
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object p1

    return-object p1
.end method

.method public getRetentionAnalytics()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    if-nez v0, :cond_1

    .line 458
    const-class v0, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;-><init>()V

    .line 2092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 460
    check-cast v1, Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    .line 462
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 464
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->F:Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    return-object v0
.end method

.method public getScreenOffReceiver()Lcom/callapp/contacts/receiver/ScreenOffReceiver;
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->P:Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    if-nez v0, :cond_1

    .line 768
    const-class v0, Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->P:Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    if-nez v1, :cond_0

    .line 770
    new-instance v1, Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    invoke-direct {v1}, Lcom/callapp/contacts/receiver/ScreenOffReceiver;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->P:Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    .line 772
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 774
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->P:Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    return-object v0
.end method

.method public getSignalNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    if-nez v0, :cond_1

    .line 949
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    if-nez v1, :cond_0

    .line 951
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;-><init>()V

    .line 30092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 951
    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    .line 953
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 955
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->A:Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    return-object v0
.end method

.method public getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    if-nez v0, :cond_1

    .line 1028
    const-class v0, Lcom/callapp/contacts/manager/sim/SimManager;

    monitor-enter v0

    .line 1029
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    if-nez v1, :cond_0

    .line 1030
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/sim/SimManager;-><init>()V

    .line 37092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1030
    check-cast v1, Lcom/callapp/contacts/manager/sim/SimManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    .line 1032
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1034
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->J:Lcom/callapp/contacts/manager/sim/SimManager;

    return-object v0
.end method

.method public getTelegramNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;
    .locals 2

    .line 937
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    if-nez v0, :cond_1

    .line 938
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    monitor-enter v0

    .line 939
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    if-nez v1, :cond_0

    .line 940
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;-><init>()V

    .line 29092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 940
    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    .line 942
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 944
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->y:Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    return-object v0
.end method

.method public getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->S:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    if-nez v0, :cond_1

    .line 853
    const-class v0, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    monitor-enter v0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->S:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    if-nez v1, :cond_0

    .line 855
    new-instance v1, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->S:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    .line 857
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 859
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->S:Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    return-object v0
.end method

.method public getUserProfileManager()Lcom/callapp/contacts/manager/UserProfileManager;
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    if-nez v0, :cond_1

    .line 668
    const-class v0, Lcom/callapp/contacts/manager/UserProfileManager;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    if-nez v1, :cond_0

    .line 670
    new-instance v1, Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/UserProfileManager;-><init>()V

    .line 20092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 670
    check-cast v1, Lcom/callapp/contacts/manager/UserProfileManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    .line 672
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 674
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->b:Lcom/callapp/contacts/manager/UserProfileManager;

    return-object v0
.end method

.method public getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->U:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    if-nez v0, :cond_1

    .line 875
    const-class v0, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    monitor-enter v0

    .line 876
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->U:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    if-nez v1, :cond_0

    .line 877
    new-instance v1, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->U:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    .line 879
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 881
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->U:Lcom/callapp/contacts/api/helper/vk/VKHelper;

    return-object v0
.end method

.method public getViberNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    if-nez v0, :cond_1

    .line 1017
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    monitor-enter v0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    if-nez v1, :cond_0

    .line 1019
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;-><init>()V

    .line 36092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1019
    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    .line 1021
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1023
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->x:Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    return-object v0
.end method

.method public getVideoCacheManager()Lcom/callapp/contacts/util/video/VideoCacheManager;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    if-nez v0, :cond_1

    .line 602
    const-class v0, Lcom/callapp/contacts/util/video/VideoCacheManager;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    if-nez v1, :cond_0

    .line 604
    new-instance v1, Lcom/callapp/contacts/util/video/VideoCacheManager;

    invoke-direct {v1}, Lcom/callapp/contacts/util/video/VideoCacheManager;-><init>()V

    .line 14092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 604
    check-cast v1, Lcom/callapp/contacts/util/video/VideoCacheManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    .line 606
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 608
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->G:Lcom/callapp/contacts/util/video/VideoCacheManager;

    return-object v0
.end method

.method public getVonageNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;
    .locals 2

    .line 1005
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    if-nez v0, :cond_1

    .line 1006
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    monitor-enter v0

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    if-nez v1, :cond_0

    .line 1008
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;-><init>()V

    .line 35092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 1008
    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    .line 1010
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1012
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->z:Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    return-object v0
.end method

.method public getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    if-nez v0, :cond_1

    .line 960
    const-class v0, Lcom/callapp/contacts/wearable/WearableClientHandler;

    monitor-enter v0

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    if-nez v1, :cond_0

    .line 962
    new-instance v1, Lcom/callapp/contacts/wearable/WearableClientHandler;

    invoke-direct {v1}, Lcom/callapp/contacts/wearable/WearableClientHandler;-><init>()V

    .line 31092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 962
    check-cast v1, Lcom/callapp/contacts/wearable/WearableClientHandler;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    .line 964
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 966
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->B:Lcom/callapp/contacts/wearable/WearableClientHandler;

    return-object v0
.end method

.method public getWhatsAppNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    if-nez v0, :cond_1

    .line 927
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    monitor-enter v0

    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    if-nez v1, :cond_0

    .line 929
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;-><init>()V

    .line 28092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 929
    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    .line 931
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 933
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->w:Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    return-object v0
.end method

.method public getWifiLockManager()Lcom/callapp/contacts/manager/WifiLockManager;
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    if-nez v0, :cond_1

    .line 735
    const-class v0, Lcom/callapp/contacts/manager/WifiLockManager;

    monitor-enter v0

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    if-nez v1, :cond_0

    .line 737
    new-instance v1, Lcom/callapp/contacts/manager/WifiLockManager;

    invoke-direct {v1}, Lcom/callapp/contacts/manager/WifiLockManager;-><init>()V

    .line 26092
    invoke-interface {v1}, Lcom/callapp/contacts/manager/ManagedLifecycle;->init()V

    .line 737
    check-cast v1, Lcom/callapp/contacts/manager/WifiLockManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    .line 739
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 741
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/Singletons;->n:Lcom/callapp/contacts/manager/WifiLockManager;

    return-object v0
.end method

.method public setHelpersFromSync(Z)V
    .locals 1

    .line 1082
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->setFromSync(Z)V

    .line 1083
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getGoogleHelper()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->setFromSync(Z)V

    .line 1084
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->setFromSync(Z)V

    .line 1085
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getFoursquareHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;->setFromSync(Z)V

    .line 1086
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->setFromSync(Z)V

    .line 1087
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getPinterestHelper()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->setFromSync(Z)V

    .line 1088
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/Singletons;->getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->setFromSync(Z)V

    return-void
.end method
