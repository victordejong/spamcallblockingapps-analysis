.class public Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;
.implements Lcom/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand;
.implements Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;
.implements Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;
.implements Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;
.implements Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;
.implements Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;
.implements Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;
.implements Lcom/callapp/contacts/activity/interfaces/DefaultDialer;
.implements Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;
.implements Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;
.implements Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityListener;
.implements Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;
.implements Lcom/callapp/contacts/manager/phone/CallDetailsListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;
.implements Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$RecorderTestFragmentEvents;
.implements Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener;,
        Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;,
        Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;,
        Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;,
        Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;
    }
.end annotation


# static fields
.field public static final ACTION_DONT_CLEAR_POPUPS:Ljava/lang/String; = "DONT_CLEAR_POPUP_ACTION"

.field public static final BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

.field public static final BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

.field private static final BRING_TO_FRONT_REPEATS:I = 0x4

.field private static final BRING_TO_FRONT_SHOW_DETAILS_DELAY:I = 0x12c

.field private static final BRING_TO_FRONT_SHOW_DETAILS_DELAY_VIA_INTENT:I = 0xc8

.field public static final EXTRA_BRING_TO_FRONT_RETRY:Ljava/lang/String; = "EXTRA_BRING_TO_FRONT_RETRY"

.field private static final EXTRA_BRING_TO_FRONT_RETRY_LEFT:Ljava/lang/String; = "EXTRA_BRING_TO_FRONT_RETRY_LEFT"

.field public static final EXTRA_DATA_CHANGE_INFO:Ljava/lang/String; = "EXTRA_DATA_CHANGE_INFO"

.field public static final EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER:Ljava/lang/String; = "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

.field public static final EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER:Ljava/lang/String; = "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

.field public static final EXTRA_FULL_NAME:Ljava/lang/String; = "fullName"

.field public static final EXTRA_IS_CALL_WAITING:Ljava/lang/String; = "EXTRA_IS_CALL_WAITING"

.field private static final EXTRA_SUPPRESS_ACTIVITY_CREATION_ANIMATION:Ljava/lang/String; = "shouldSuppressAnimation"

.field public static final EXTRA_WHO_VIEW_PROFILE_NOTIFICATION:Ljava/lang/String; = "EXTRA_WHO_VIEW_PROFILE_NOTIFICATION"

.field private static final FADE_DURATION_MILLIS:I = 0x12c

.field public static final FADE_START_DELAY_MILLIS:I = 0x7d0

.field public static final MAXIMUM_AMOUNT_ALLOWED_TO_SHOW_POPUP:I = 0x3

.field public static final ONE_SEC_IN_MILLIS:I = 0x3e8

.field public static final PHOTO_POPUP_DISSMIS_CODE:I = 0x1

.field private static final SHOULD_FINISH_ACTIVITY:Ljava/lang/String; = "SHOULD_FINISH_ACTIVITY"

.field private static final SHOW_IMAGE_CHANGE_TOAST_AFTER_X_CONTACT_DETAILS_INTERVAL:I = 0x4

.field private static final SIX_SEC:J = 0x1770L

.field private static final SNACK_BAR_DURATION:I = 0xfa0

.field private static final TEN_SEC:J = 0x3e8L

.field private static final handler:Landroid/os/Handler;

.field private static final handlerThread:Landroid/os/HandlerThread;

.field public static final isStartedFromACall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static keypadNumbers:Ljava/lang/String;


# instance fields
.field private audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

.field private audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

.field private autoScrollType:J

.field private bottomActionBar:Landroid/view/View;

.field private bottomActionBarClosingAnimation:Landroid/animation/ValueAnimator;

.field private bottomActionsContainerWithShadow:Landroid/view/View;

.field private final bringToFrontLifecycleObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

.field private callActionBtn:Landroid/view/View;

.field private callActionBtnFadeInAnim:Landroid/animation/ObjectAnimator;

.field private callBarLayoutRoot:Landroid/view/View;

.field private callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

.field private callData:Lcom/callapp/contacts/model/call/CallData;

.field private callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

.field private callIconScale:F

.field private callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

.field private callState:Lcom/callapp/contacts/model/call/CallState;

.field private cardsRecyclerview:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field private cardsRecyclerviewContainer:Landroid/view/View;

.field private centerBottomActionSmallIcon:Landroid/widget/ImageView;

.field private final classSimpleName:Ljava/lang/String;

.field private contactDetailsActionAdd:Landroid/view/View;

.field private contactDetailsActionEditContainer:Landroid/view/View;

.field private contactDetailsActionMore:Landroid/view/View;

.field private contactDetailsActionNote:Landroid/view/View;

.field private contactDetailsActionVideoRingtone:Landroid/view/View;

.field private contactDetailsFirstCircleButton:Landroid/view/View;

.field private contactDetailsRootView:Landroid/view/ViewGroup;

.field private contactDetailsSecondCircleButton:Landroid/view/View;

.field private contactDetailsThirdCircleButton:Landroid/view/View;

.field private contactDetailsTopStrip:Landroid/view/View;

.field private coverFrameLayout:Landroid/view/View;

.field private decidedToLoadInterstitial:Z

.field private detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

.field private extraDelayAfterShowingCorrectedInfo:J

.field private final fadeInCallActionBtnRunnable:Ljava/lang/Runnable;

.field private failedToSetDefaultDialer:Z

.field private fastCacheChangedListener:Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;

.field private favoritesBtn:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field private finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

.field private forcePreCallState:Z

.field private fullScreenBannerContainer:Landroid/widget/FrameLayout;

.field private genomeLoaded:Z

.field private inCallActionFragment:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

.field private incognitoLoaded:Z

.field private incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

.field private interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private interstitialLoaded:Z

.field private interstitialLoaderLifecycle:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

.field private invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

.field private isAdLoaded:Z

.field private isAnalyticsAdLoaded:Z

.field private isAutoScrollEnabled:Z

.field private isAutoScrollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isIdentified:Z

.field private keypadShown:Z

.field private keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

.field private lastBottomBarDirectionWasExpand:Z

.field private manualRecorderDialogShown:Z

.field private noteBannerlayout:Landroidx/cardview/widget/CardView;

.field private origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

.field private playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private playerViewStub:Landroid/view/ViewStub;

.field private presenterEvents:Lcom/callapp/contacts/activity/interfaces/PresenterEvents;

.field private presentersInitialized:Z

.field private profileRippleBackground:Lcom/skyfishjy/library/RippleBackground;

.field private recorderTestContainer:Landroid/view/View;

.field private recorderTestContainerStub:Landroid/view/ViewStub;

.field private recorderTestFragment:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

.field private remainingTimesToAutoScroll:J

.field private final runAutoScrollIfNeeded:Ljava/lang/Runnable;

.field private showSmallIcon:Z

.field private singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

.field private snackBarContainer:Landroid/view/View;

.field private snackBarContainerKeypad:Landroid/view/View;

.field private timeRequestedToOpenDefaultPhoneAppDialog:J

.field private topSheetContainer:Landroid/view/View;

.field private topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

.field private whoViewedMyProfileEntrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 292
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    .line 293
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    .line 307
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handlerThread:Landroid/os/HandlerThread;

    .line 330
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isStartedFromACall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 370
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 371
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 372
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;-><init>()V

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIdentified:Z

    const-wide/16 v1, 0x0

    .line 295
    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->autoScrollType:J

    .line 296
    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->extraDelayAfterShowingCorrectedInfo:J

    .line 297
    sget-object v3, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    .line 299
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->manualRecorderDialogShown:Z

    .line 303
    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->timeRequestedToOpenDefaultPhoneAppDialog:J

    .line 305
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bringToFrontLifecycleObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

    .line 310
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaded:Z

    .line 311
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->decidedToLoadInterstitial:Z

    .line 316
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presentersInitialized:Z

    const/4 v1, 0x1

    .line 317
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lastBottomBarDirectionWasExpand:Z

    .line 331
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    .line 354
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 355
    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->whoViewedMyProfileEntrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    .line 356
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->genomeLoaded:Z

    .line 357
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoLoaded:Z

    .line 359
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAutoScrollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 360
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "cdTimesToAutoScroll"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->remainingTimesToAutoScroll:J

    .line 361
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    .line 432
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fadeInCallActionBtnRunnable:Ljava/lang/Runnable;

    .line 522
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fastCacheChangedListener:Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;

    .line 532
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    .line 552
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterEvents:Lcom/callapp/contacts/activity/interfaces/PresenterEvents;

    .line 558
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    .line 580
    new-instance v1, Lcom/callapp/contacts/manager/MainThreadTimer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$7;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/MainThreadTimer;-><init>(Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1911
    iput v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    .line 1912
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showSmallIcon:Z

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAutoScrollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setContactDetailsMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->inCallActionFragment:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->inCallActionFragment:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/model/call/CallData;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestContainerStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestFragment:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestFragment:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionsContainerWithShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsRecyclerview:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;[Ljava/lang/String;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->removeFragment([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doAutoScrollIfNeeded()V

    return-void
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snapToPosition(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->noteBannerlayout:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroidx/cardview/widget/CardView;)Landroidx/cardview/widget/CardView;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->noteBannerlayout:Landroidx/cardview/widget/CardView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forceShowPresenterIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V
    .locals 0

    .line 259
    invoke-direct/range {p0 .. p6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateModelAndFireEvents(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V
    .locals 0

    .line 259
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadContact(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showLockedNotificationOnScreen()V

    return-void
.end method

.method static synthetic access$2700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->pausePlayerCardIdNeeded()V

    return-void
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fireContactChange()V

    return-void
.end method

.method static synthetic access$2900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->autoScrollType:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;J)J
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->autoScrollType:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->enableCallActionBtn(Z)V

    return-void
.end method

.method static synthetic access$3002(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAutoScrollEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->tryToShowRippleOnProfileView()V

    return-void
.end method

.method static synthetic access$3200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;)Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverFrameLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showSmallIcon:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)F
    .locals 0

    .line 259
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    return p0
.end method

.method static synthetic access$3502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;F)F
    .locals 0

    .line 259
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    return p1
.end method

.method static synthetic access$3600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->centerBottomActionSmallIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadShown:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->timeRequestedToOpenDefaultPhoneAppDialog:J

    return-wide v0
.end method

.method static synthetic access$4002(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;J)J
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->timeRequestedToOpenDefaultPhoneAppDialog:J

    return-wide p1
.end method

.method static synthetic access$4102(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->failedToSetDefaultDialer:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showOverlayPermissionDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->scrollToEndWhenLargeAdIsVisible()V

    return-void
.end method

.method static synthetic access$4400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateRemaingTimeToAutoScroll()V

    return-void
.end method

.method static synthetic access$4500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaderLifecycle:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    return-object p0
.end method

.method static synthetic access$4502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;)Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaderLifecycle:Lcom/callapp/contacts/util/ads/InterstitialLoaderLifecycle;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->postCallDismiss(Z)V

    return-void
.end method

.method static synthetic access$4802(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaded:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z
    .locals 0

    .line 259
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->decidedToLoadInterstitial:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)Z
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->decidedToLoadInterstitial:Z

    return p1
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->notifyEventBusData()V

    return-void
.end method

.method static synthetic access$5000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtn:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/view/View;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setBottomBarFunctionality(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isUnknownNumber()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fadeInCallActionBtnRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setUpViewIfNeeded()V

    return-void
.end method

.method static synthetic access$5600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setScreenLocked(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/manager/MainThreadTimer;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/widget/CallAppCheckBox;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->favoritesBtn:Lcom/callapp/contacts/widget/CallAppCheckBox;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)J
    .locals 2

    .line 259
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->extraDelayAfterShowingCorrectedInfo:J

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setFavoriteButton()V

    return-void
.end method

.method static synthetic access$602(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;J)J
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->extraDelayAfterShowingCorrectedInfo:J

    return-wide p1
.end method

.method static synthetic access$6100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionEditContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionAdd:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionNote:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionMore:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$6600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callPhone(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method

.method static synthetic access$6700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/skyfishjy/library/RippleBackground;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->profileRippleBackground:Lcom/skyfishjy/library/RippleBackground;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->requestUpdateUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    return-object p0
.end method

.method private callPhone(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 9

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 2999
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "Contact name or number"

    const-string v6, "Call"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    .line 3000
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v0, 0x0

    .line 17091
    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 3002
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v7

    const/4 v8, 0x0

    const-string v5, "Contact name or number"

    const-string v6, "Call"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_1
    return-void
.end method

.method private cleanAllDataIfContactChanged(JLcom/callapp/framework/phone/Phone;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1658
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldReplaceContact(JLcom/callapp/framework/phone/Phone;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1659
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->releaseContact()V

    .line 1660
    new-instance p1, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const-wide/16 v0, 0x0

    invoke-direct {p1, p3, v0, v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1661
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz p1, :cond_0

    .line 1662
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 1665
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    invoke-virtual {p2}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 1666
    new-instance p1, Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/callapp/contacts/model/contact/ContactData;-><init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1667
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->resetLayoutState()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private static copyIntentCallData(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "contactId"

    const-wide/16 v1, 0x0

    .line 1831
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "phone"

    .line 1832
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    cmp-long v7, v3, v1

    if-eqz v7, :cond_1

    .line 1834
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1836
    :cond_1
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1837
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v0, "phone_origin"

    .line 1839
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "EXTRA_INCOGNITO_CALL"

    .line 1840
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 1841
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v0, "EXTRA_CALL_TELECOM_ID"

    .line 1843
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1844
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    return-void
.end method

.method public static createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;
    .locals 11

    .line 1796
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1797
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-static {p3}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const/4 v6, 0x0

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v3, p4

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    .line 1799
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    move-object v2, p0

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 1800
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20050000

    .line 1801
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v6, 0x0

    move-object v2, v0

    move-wide v3, p1

    move-object v5, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 1802
    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    const-string v1, "entryPoint"

    move-object/from16 v2, p7

    .line 1803
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private doAutoScrollIfNeeded()V
    .locals 6

    .line 2058
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAdLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAutoScrollEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAutoScrollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2059
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "AutoScrollContactScreen"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$32;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->autoScrollType:J

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->hx:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 2071
    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAnalyticsAdLoaded:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getCDAnalyticsAdPosition()I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 14197
    :goto_1
    iget-object v5, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    if-nez v5, :cond_2

    .line 14198
    iput-object v1, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->S:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$OnAutoScrollEventsListener;

    .line 14199
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->i()V

    .line 14200
    new-instance v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;-><init>(Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;JI)V

    iput-object v1, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    .line 14201
    iget-object v1, v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->R:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView$AutoScroller;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private doFlip(Landroid/view/View;)V
    .locals 2

    .line 3707
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x44340000    # 720.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private editOrCreateContact()V
    .locals 4

    .line 3399
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 3400
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Edit or Create contact"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$55;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$55;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    .line 3406
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$55;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method private enableCallActionBtn(Z)V
    .locals 2

    .line 3125
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtnFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fadeInCallActionBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 3127
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtnFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 3130
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtn:Landroid/view/View;

    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtnFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    .line 3132
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$52;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$52;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3150
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtnFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 3153
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtn:Landroid/view/View;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setBottomBarFunctionality(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public static fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const-string v0, "contactId"

    .line 1809
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1811
    :cond_0
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "phone"

    .line 1812
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "phone_origin"

    .line 1814
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p6, :cond_2

    const/4 p1, 0x1

    const-string p2, "forceIdleState"

    .line 1816
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    if-eqz p7, :cond_3

    const-string p1, "EXTRA_DATA_CHANGE_INFO"

    .line 1819
    invoke-virtual {p0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    if-eqz p8, :cond_4

    const-string p1, "who_viewed_entry_point"

    .line 1822
    invoke-virtual {p0, p1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1824
    :cond_4
    invoke-static {p4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "EXTRA_CALL_TELECOM_ID"

    .line 1825
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    return-void
.end method

.method private fireContactChange()V
    .locals 3

    .line 1782
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFieldsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1783
    :try_start_0
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presentersInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1784
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    invoke-virtual {p0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    const/4 v1, 0x0

    .line 1785
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    .line 1787
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private flipPVRIconIfNeeded()V
    .locals 6

    .line 3696
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3697
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_1

    .line 3698
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v1

    const-wide/16 v3, 0x5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doFlip(Landroid/view/View;)V

    return-void

    .line 3700
    :cond_0
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_1

    .line 3701
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doFlip(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private forceShowPresenterIfNeeded(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 990
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;

    if-eqz p1, :cond_0

    .line 992
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/BaseUserCorrectedInfoPresenter;->forceShowPresenter()V

    :cond_0
    return-void
.end method

.method private getBottomActionBarAnimation(II)Landroid/animation/ValueAnimator;
    .locals 2

    if-ge p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1915
    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showSmallIcon:Z

    .line 1916
    sget v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->d:F

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;I)V

    invoke-static {p1, p2, v0, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method private getCDAnalyticsAdPosition()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2086
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2087
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v2

    instance-of v2, v2, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getCallData(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 1689
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1692
    :cond_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhoneByTelecomId(Ljava/lang/String;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    return-object p1

    .line 1695
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    return-object p1

    .line 1690
    :cond_2
    :goto_0
    new-instance p2, Lcom/callapp/contacts/model/call/CallData;

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    return-object p2
.end method

.method private getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 3560
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object v0
.end method

.method private handleRemoveIncognitoMode()V
    .locals 4

    .line 1129
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1130
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$16;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$16;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 1136
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private incSeenContactDetailsPref(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 1732
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cB:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 1734
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cA:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 1735
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cA:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    .line 10025
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->a()Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    return-void

    .line 1737
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cA:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private isCallSmallIcon()Z
    .locals 5

    .line 1944
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenLocked()Z
    .locals 1

    .line 3548
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3549
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getIsScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSpammer()Z
    .locals 2

    .line 1791
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isUnknownNumber()Z
    .locals 1

    .line 3297
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$null$0(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "Permissions"

    const-string v0, "Gave Permission"

    const-string v1, ""

    .line 1077
    invoke-virtual {p0, p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$2(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCallStateChanged$7(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$showOverlayPermissionDialog$1(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;Landroid/app/Activity;)V
    .locals 3

    const-string v0, "Permissions"

    const-string v1, "Draw On Screen"

    const-string v2, "Clicked yes from Contact Details"

    .line 1073
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$aQhmIk-W5zNi0c7BEjzx9T9JVsA;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$aQhmIk-W5zNi0c7BEjzx9T9JVsA;-><init>(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method

.method private loadContact(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V
    .locals 1

    .line 1757
    invoke-virtual {p0, p4, p2, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadNewContact(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object p4

    .line 1758
    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1759
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFieldsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_0
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Ljava/util/Set;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    .line 1761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateStorePersonalCoverIfNeeded(J)V

    const-string p2, "fullName"

    .line 1765
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1766
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1768
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->assertIntentDataExists()V

    .line 1769
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getIntentData()Lcom/callapp/contacts/model/contact/IntentData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/IntentData;->setFullName(Ljava/lang/String;)V

    .line 1770
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    :cond_0
    if-eqz p5, :cond_1

    .line 1774
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fireContactChange()V

    .line 1776
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1777
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1761
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private loadContactWhenCreated()V
    .locals 5

    .line 1183
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contactId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1185
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 1186
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$17;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;JLcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private loadInterstitialIfNeeded(Z)V
    .locals 1

    .line 2145
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2149
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaded:Z

    .line 2150
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$33;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyEventBusData()V
    .locals 4

    .line 2949
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "EXTRA_DATA_CHANGE_INFO"

    .line 2951
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2952
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/DataChangedInfo;

    .line 2953
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/NotifyDataChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    .line 15091
    invoke-virtual {v1, v2, v0, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 2955
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RefreshSearchListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 16091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    :cond_1
    return-void
.end method

.method private pausePlayerCardIdNeeded()V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    if-eqz v0, :cond_0

    .line 802
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$9;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private postCallDismiss(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 2653
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->hasPhone(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2657
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;

    iget v0, v0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$PostCallDuration;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_4

    .line 2658
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->j:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2659
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bringToFrontLifecycleObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

    .line 14518
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v2

    const-string v5, "postCallEnabled"

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;->a:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 2660
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "EXTRA_BRING_TO_FRONT_RETRY"

    .line 2661
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_BRING_TO_FRONT_RETRY_LEFT"

    const/4 v5, 0x4

    .line 2662
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    if-ge v3, v5, :cond_3

    .line 2664
    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;-><init>(Landroid/content/Intent;)V

    mul-int/lit16 v6, v3, 0x12c

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 2668
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {p1, v0, v4}, Lcom/callapp/contacts/manager/MainThreadTimer;->a(IZ)Z

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 2672
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    :cond_5
    return-void
.end method

.method private varargs removeFragment([Ljava/lang/String;)V
    .locals 5

    .line 742
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 743
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 744
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 745
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    invoke-virtual {v0, v3}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 749
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Z

    move-result p1

    if-nez p1, :cond_2

    .line 750
    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()I

    :cond_2
    return-void
.end method

.method private requestUpdateUI()V
    .locals 4

    .line 3577
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz v0, :cond_0

    .line 3578
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3579
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b()V

    .line 3582
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$56;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$56;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private resetKeypadNumbers()V
    .locals 1

    const-string v0, ""

    .line 3657
    sput-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadNumbers:Ljava/lang/String;

    return-void
.end method

.method private resetLayoutState()V
    .locals 2

    .line 1675
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$27;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scrollToEndWhenLargeAdIsVisible()V
    .locals 3

    .line 2097
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 2098
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->d(I)V

    .line 2101
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-direct {p0, v0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snapToPosition(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    :cond_0
    return-void
.end method

.method private scrollToPosition(ILcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V
    .locals 2

    .line 829
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$10;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ILcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendFabActionEvent(Ljava/lang/String;)V
    .locals 2

    .line 3162
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Bottom Action Bar"

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3158
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Bottom Action Bar"

    invoke-virtual {v0, v1, p1, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendWhoViewedMyProfileIfNeeded()V
    .locals 3

    .line 2913
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->whoViewedMyProfileEntrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    .line 2914
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->genomeLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoLoaded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isInstalledApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2915
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 2920
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$47;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

.method private setBottomBarFunctionality(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e19999a    # 0.15f

    .line 3302
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3303
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 3304
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setContactDetailsMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V
    .locals 3

    .line 709
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 716
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldPlayVideoBackground:Z

    .line 717
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 718
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b()V

    .line 719
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setIsInCallModeVisibility(Z)V

    .line 720
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    return-void

    .line 711
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    const v2, 0x7f080514

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 712
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setIsInCallModeVisibility(Z)V

    .line 713
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    return-void
.end method

.method private setDetailsActivityMode()V
    .locals 1

    .line 658
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$8;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setFavoriteButton()V
    .locals 1

    .line 2925
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$48;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setIsInCallModeVisibility(Z)V
    .locals 6

    .line 756
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->hasCover()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldPlayVideoBackground:Z

    if-nez v0, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getFullImageContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 758
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    const v3, 0x7f0700ee

    goto :goto_0

    :cond_0
    const v3, 0x7f0700f1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 757
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 760
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getFullImageContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 762
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getFullImageContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 764
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getShadowView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 765
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsRecyclerviewContainer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 766
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetContainer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 767
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarLayoutRoot:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 768
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionsContainerWithShadow:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 773
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isUnsearchableNumber()Z

    move-result v0

    .line 775
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 777
    :goto_2
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionEditContainer:Landroid/view/View;

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-static {v4, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 778
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsTopStrip:Landroid/view/View;

    invoke-static {v3, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 779
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionMore:Landroid/view/View;

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 781
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v3, :cond_9

    .line 782
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 783
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionNote:Landroid/view/View;

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-static {v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 784
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-static {v3, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 785
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->favoritesBtn:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto :goto_8

    .line 787
    :cond_7
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionAdd:Landroid/view/View;

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    invoke-static {v3, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 788
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionNote:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 789
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 792
    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsFirstCircleButton:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 793
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsSecondCircleButton:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->hasCover()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 794
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsThirdCircleButton:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-eq v0, p1, :cond_0

    .line 1172
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    .line 1173
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setDetailsActivityMode()V

    :cond_0
    return-void
.end method

.method private setScreenLocked(Z)V
    .locals 1

    .line 3553
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3555
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->setIsScreenLocked(Z)V

    :cond_0
    return-void
.end method

.method private setUpViewIfNeeded()V
    .locals 2

    .line 3293
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtn:Landroid/view/View;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isUnknownNumber()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setBottomBarFunctionality(Landroid/view/View;Z)V

    return-void
.end method

.method private setupContactActions(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 2963
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v4

    .line 2964
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 2965
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v5

    .line 2966
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v6

    .line 2967
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 2968
    :goto_3
    new-instance v7, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;

    move-object v0, v7

    move-object v1, p0

    move v2, v3

    move v3, v6

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ZZZZZ)V

    invoke-virtual {p0, v7}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldReplaceContact(JLcom/callapp/framework/phone/Phone;Z)Z
    .locals 5

    .line 1701
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1702
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cB:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_0

    .line 1705
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incSeenContactDetailsPref(Lcom/callapp/framework/phone/Phone;)V

    :cond_0
    return v1

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    .line 1710
    invoke-virtual {p3}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz p4, :cond_2

    .line 1712
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incSeenContactDetailsPref(Lcom/callapp/framework/phone/Phone;)V

    .line 1714
    :cond_2
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIdentified:Z

    return v0

    .line 1718
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-eqz v4, :cond_5

    if-eqz p4, :cond_4

    .line 1720
    invoke-direct {p0, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incSeenContactDetailsPref(Lcom/callapp/framework/phone/Phone;)V

    .line 1722
    :cond_4
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIdentified:Z

    return v0

    :cond_5
    return v1
.end method

.method private shouldShowBanner()Z
    .locals 3

    .line 2644
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gd:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2645
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1f3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private shouldShowCallScreenEncouragementPopup()Z
    .locals 9

    .line 2699
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-gt v2, v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2700
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_1

    .line 2701
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    .line 2704
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_2

    const-wide/32 v3, 0xf731400

    .line 2705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fF:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private shouldShowFabIntro()Z
    .locals 1

    .line 1439
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ca:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cb:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static showDialogToAllowNotificationAccessAfterMissedCall(Landroid/app/Activity;)V
    .locals 3

    .line 3480
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3481
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 3482
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v2, 0x1

    .line 21039
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3484
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const v0, 0x7f120403

    .line 3485
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120402

    .line 3486
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3487
    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3489
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "missed notification click count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    .line 21206
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private showLockedNotificationOnScreen()V
    .locals 6

    .line 2729
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snackBarContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0a0840

    .line 2730
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snackBarContainer:Landroid/view/View;

    .line 2732
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadShown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snackBarContainerKeypad:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snackBarContainer:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f120545

    .line 2734
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 2735
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->b()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    const v3, 0x7f0a0843

    .line 2736
    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2738
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00b2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0a83

    .line 2739
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2740
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f060244

    .line 2741
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0a82

    .line 2742
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1207ed

    .line 2743
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f060088

    .line 2744
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2745
    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/google/android/material/snackbar/Snackbar;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 2752
    invoke-virtual {v2, v3, v1}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;I)V

    .line 2753
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->c()V

    .line 2754
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/google/android/material/snackbar/Snackbar;)V

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method private showNoteBannerLayout()V
    .locals 1

    .line 1470
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$26;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showOverlayPermissionDialog()V
    .locals 9

    .line 1068
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 4039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1069
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    .line 1070
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;

    const-string v3, "Permissions"

    const-string v4, "Draw On Screen"

    const-string v5, "Popup shown from Contact Details"

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1071
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv-UtjjroPdvbpI;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$N9PreGYw6flsRv-UtjjroPdvbpI;-><init>(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$14;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V

    .line 1088
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private snapToPosition(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V
    .locals 1

    .line 1443
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1444
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    :cond_0
    return-void
.end method

.method public static startFullDetailsActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Z)Z
    .locals 10

    move-object v9, p0

    move-object v4, p2

    if-eqz v4, :cond_0

    .line 2120
    iget-object v0, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    move-object v1, p1

    .line 2121
    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->copyIntentCallData(Landroid/content/Intent;Landroid/content/Intent;)V

    const/high16 v1, 0x40000

    .line 2122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "shouldSuppressAnimation"

    const/4 v2, 0x1

    .line 2123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 2125
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_1
    if-eqz p7, :cond_2

    const v1, 0x10008000

    .line 2132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2134
    :cond_2
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    if-eqz p3, :cond_4

    const-string v1, "EXTRA_BRING_TO_FRONT_RETRY"

    .line 2137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "EXTRA_BRING_TO_FRONT_RETRY_LEFT"

    .line 2138
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2139
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;-><init>(Landroid/content/Intent;)V

    const/16 v0, 0xc8

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    :cond_4
    return v2
.end method

.method private startInstantMessaging(Lcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    invoke-static {p1}, Lcom/callapp/contacts/manager/Singletons;->a(Lcom/callapp/contacts/manager/Singletons$SenderType;)Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_0
    return-void
.end method

.method private startInviteDialog()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "float"

    .line 3288
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object v0

    .line 3289
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startNewNote()V
    .locals 1

    .line 3119
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private startPersonalCallScreen()V
    .locals 3

    .line 3113
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3114
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTRA_CONTACT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3115
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private tryToShowRippleOnProfileView()V
    .locals 3

    .line 3609
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 22039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    move-result-object v0

    .line 3609
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return-void

    .line 3614
    :cond_0
    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 3615
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eF:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 3617
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eF:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 23039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 3618
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$58;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private updateCallFabOnActionComplete(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V
    .locals 3

    .line 3251
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getActions()Ljava/util/List;

    move-result-object v0

    .line 3252
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3256
    :cond_0
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3278
    :pswitch_1
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3279
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0

    .line 3274
    :pswitch_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3275
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 3270
    :pswitch_3
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3271
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 3266
    :pswitch_4
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3267
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 3262
    :pswitch_5
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3263
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    .line 3258
    :pswitch_6
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3259
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallFabOnContactChanged(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 3243
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3244
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_SPAM:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    :goto_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateCallFabOnActionComplete(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    .line 3245
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_BLOCK:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    :goto_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateCallFabOnActionComplete(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    .line 3246
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;->UN_INCOGNITO:Lcom/callapp/contacts/activity/contact/details/ContactAction;

    :goto_2
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateCallFabOnActionComplete(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    :cond_3
    return-void
.end method

.method private updateContactData(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V
    .locals 7

    if-eqz p5, :cond_0

    .line 1747
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->releaseContact()V

    .line 1749
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result p5

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    invoke-virtual {p0, p5, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 1750
    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadContact(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V

    return-void

    .line 1752
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fireContactChange()V

    return-void
.end method

.method private updateModelAndFireEvents(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    .line 1646
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateContactData(Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Z)V

    .line 1647
    invoke-direct {p0, p4, p5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getCallData(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1649
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1651
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne p1, p2, :cond_0

    .line 1652
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 p3, 0x3

    const-wide/16 p4, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    :cond_0
    return-void
.end method

.method private updateRemaingTimeToAutoScroll()V
    .locals 7

    .line 2076
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "cdSecondsToWaitBeforeNextAutoScroll"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2077
    iget-wide v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->remainingTimesToAutoScroll:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    .line 2078
    iput-wide v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->remainingTimesToAutoScroll:J

    .line 2079
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 2080
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private updateScreenLockState(Z)V
    .locals 2

    .line 2720
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$41;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateStorePersonalCoverIfNeeded(J)V
    .locals 1

    .line 2887
    sget-object v0, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager;->a:Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->COVER:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {p1, p2}, Lcom/callapp/contacts/loader/PersonalStoreItemDataManager$Companion;->b(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object p1

    .line 2889
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$46;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public allowLifecycleChangesDuringCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public animateBottomActionBar(ZZ)V
    .locals 2

    .line 1876
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lastBottomBarDirectionWasExpand:Z

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1880
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lastBottomBarDirectionWasExpand:Z

    .line 1882
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBar:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1883
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$RqFwB0gwSed4IMhFRHg5TUzlR4c;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$RqFwB0gwSed4IMhFRHg5TUzlR4c;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ZZ)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1907
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->OPEN:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;->CLOSE:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$CallBarState;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public animateBottomBar(ZZ)V
    .locals 0

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->animateBottomActionBar(ZZ)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3463
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 3466
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 3457
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 3458
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 3417
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3420
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 3422
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3424
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->j()V

    .line 3425
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v3, "cdTimesToAutoScroll"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->remainingTimesToAutoScroll:J

    .line 3427
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v3, "cdSecondsToWaitBeforeNextAutoScroll"

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 3428
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v1

    if-nez v1, :cond_5

    .line 18158
    iput-boolean v2, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->Q:Z

    .line 3430
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 3431
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 3436
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 3437
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadShown:Z

    if-eqz v1, :cond_1

    .line 3438
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v4, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-eqz v1, :cond_1

    .line 3440
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a()V

    .line 3443
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    const-string v4, "e"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19071
    iget-object v4, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v5, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Show:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-ne v4, v5, :cond_5

    .line 19072
    iget-object v4, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 19286
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_2
    check-cast v5, Landroid/view/View;

    .line 19073
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-static {v5, v7, v8}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19074
    iget-object p1, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->d:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 20182
    iget-object v2, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->f:Landroid/os/Handler;

    iget-object v4, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20183
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 20184
    iget-object v2, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;->onCallFabActionClicked(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V

    .line 20185
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b()V

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3450
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 3451
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 427
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isStartedFromACall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->finish()V

    return-void
.end method

.method public finishActivity(Ljava/lang/Boolean;)V
    .locals 0

    .line 453
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void
.end method

.method protected getBottomActionBar()Landroid/view/View;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBar:Landroid/view/View;

    return-object v0
.end method

.method public getCallBarPresenter()Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    return-object v0
.end method

.method public getCurrentFilter()Ljava/lang/String;
    .locals 1

    .line 3687
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d002c

    return v0
.end method

.method public getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    return-object v0
.end method

.method protected getParallaxImpl(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 9

    .line 3504
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    move-result-object v3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v5

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    move-object v0, v8

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V

    return-object v8
.end method

.method public getPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerViewStub:Landroid/view/ViewStub;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object v0
.end method

.method protected getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    .locals 1

    .line 840
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$11;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    return-object v0
.end method

.method protected getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
    .locals 1

    .line 577
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    return-object v0
.end method

.method public getThemeResId()I
    .locals 3

    .line 1142
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "shouldSuppressAnimation"

    .line 1144
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getNoTitleThemeNoTransitions()I

    move-result v0

    return v0

    .line 1149
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getThemeResId()I

    move-result v0

    return v0
.end method

.method public handleIncognitoMode()V
    .locals 4

    .line 1097
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 1099
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isOneTimeIncognitoCall:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    .line 1100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setupContactActions(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1102
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    if-eqz v0, :cond_4

    .line 1103
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1104
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$15;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$15;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 1116
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handleRemoveIncognitoMode()V

    return-void

    .line 1119
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v2, :cond_6

    .line 1120
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    .line 1121
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isOneTimeIncognitoCall:Z

    .line 1122
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handleRemoveIncognitoMode()V

    :cond_6
    return-void
.end method

.method public isClickValid(Landroid/view/View;)Z
    .locals 3

    .line 3509
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3513
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3532
    :pswitch_0
    :sswitch_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isScreenLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3533
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showLockedNotificationOnScreen()V

    return v0

    .line 3537
    :cond_1
    :pswitch_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isScreenLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3538
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1204fd

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    return v0

    :cond_2
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a0101 -> :sswitch_0
        0x7f0a0270 -> :sswitch_0
        0x7f0a027a -> :sswitch_0
        0x7f0a027c -> :sswitch_0
        0x7f0a0280 -> :sswitch_0
        0x7f0a0282 -> :sswitch_0
        0x7f0a0297 -> :sswitch_0
        0x7f0a02c0 -> :sswitch_0
        0x7f0a0441 -> :sswitch_0
        0x7f0a0443 -> :sswitch_0
        0x7f0a0485 -> :sswitch_0
        0x7f0a05a4 -> :sswitch_0
        0x7f0a0614 -> :sswitch_0
        0x7f0a06ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0a0274
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isSnapOnUpRulesOk()Z
    .locals 2

    .line 3412
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$animateBottomActionBar$4$ContactDetailsActivity(ZZ)V
    .locals 2

    .line 1884
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBarClosingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1885
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1891
    sget p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    .line 1892
    sget v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    goto :goto_0

    .line 1895
    :cond_1
    sget p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    .line 1896
    sget v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    .line 1899
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getBottomActionBarAnimation(II)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBarClosingAnimation:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_2

    const-wide/16 v0, 0x0

    .line 1901
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1903
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBarClosingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public synthetic lambda$onCallStateChanged$5$ContactDetailsActivity()V
    .locals 3

    .line 2479
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    .line 2480
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2481
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2482
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    .line 2483
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->setListener(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;)V

    .line 2484
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a()V

    return-void
.end method

.method public synthetic lambda$onCallStateChanged$6$ContactDetailsActivity(Landroid/app/Activity;)V
    .locals 0

    .line 2497
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onSetAsDefaultAppClicked()V

    return-void
.end method

.method public synthetic lambda$onContactChanged$8$ContactDetailsActivity(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 3

    .line 2812
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getCover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2813
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHasPersonalCover(Z)V

    .line 2814
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getCover()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    .line 23376
    iput-boolean v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 2814
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2816
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHasPersonalCover(Z)V

    .line 2817
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    if-nez p1, :cond_1

    .line 2818
    invoke-static {p0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Landroid/view/View;)V

    .line 2820
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 2822
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result p1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    return-void
.end method

.method public synthetic lambda$onCreate$3$ContactDetailsActivity(Landroid/view/View;)V
    .locals 10

    .line 1394
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setVisibility(I)V

    .line 1395
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;

    const v0, 0x7f1203bc

    .line 1396
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const v0, 0x7f1204ea

    .line 1402
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$b_2pZvI-ktG383P8kSdAp-OzOhw;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$b_2pZvI-ktG383P8kSdAp-OzOhw;

    const v2, 0x7f080517

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/callapp/contacts/popup/contact/DialogBulletListTopImage;-><init>(ILjava/lang/CharSequence;[ILjava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1408
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1203b8
        0x7f1203ba
        0x7f1203bb
        0x7f1203b9
        0x7f1203b7
    .end array-data
.end method

.method protected loadNewContact(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    .line 3564
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 3565
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    invoke-virtual {v0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a(J)V

    .line 3567
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->ALL:Ljava/util/EnumSet;

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onActionSelected(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 623
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;-><init>(Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 620
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void

    .line 626
    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 627
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->c()Z

    .line 628
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz p1, :cond_5

    .line 629
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/model/call/CallData;)V

    return-void

    .line 633
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 634
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto :goto_0

    .line 636
    :cond_4
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 638
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1004
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1005
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->a(IILandroid/content/Intent;)Z

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3e4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 p2, 0x2599

    if-eq p1, p2, :cond_1

    const p2, 0xface

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 1009
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_7

    .line 1010
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->facebookSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p2, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1029
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;

    invoke-direct {p1, p0, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;)V

    .line 1039
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$13;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1042
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_7

    .line 1043
    const-class p1, Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1, p3}, Lcom/callapp/contacts/util/AndroidUtils$FieldsChangedHandler;->a(Ljava/lang/Class;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 p3, 0x0

    .line 1044
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1045
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->resetChosenPicture()V

    .line 1046
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    :cond_3
    return-void

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    .line 1016
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "PERSON_SELECT_SELECTED_USER_ID"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1017
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "PERSON_SELECT_NET_ID"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "DONTHAVE"

    .line 1019
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1020
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setDoesntHave(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 1022
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2, p3, p1, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    return-void

    .line 1053
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    const-string p1, "note"

    .line 1054
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1055
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 1056
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object p2

    .line 1057
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/DeviceData;->getNote()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/callapp/contacts/loader/device/NoteLoader;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "@@@"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1059
    invoke-static {p1}, Lcom/callapp/contacts/loader/device/NoteLoader;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/model/contact/DeviceData;->setNote([Ljava/lang/String;)V

    .line 1060
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object p2, Lcom/callapp/contacts/model/contact/ContactField;->note:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onAppliedConfiguration()V
    .locals 0

    .line 404
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1452
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->setAudioRouteSelectorListener(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 2

    .line 1459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1460
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->setAudioRoute(I)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    .line 1609
    invoke-super {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setForeGroundVisible(Z)V

    .line 1610
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_0

    .line 1612
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1613
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1614
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 1619
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->isViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    .line 9143
    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    return-void

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz v0, :cond_2

    .line 1625
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1629
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_3

    .line 1632
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 1637
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->isTopSheetClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1638
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    return-void

    .line 1641
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void
.end method

.method protected onButtonBarIconClicked(Landroid/view/View;)V
    .locals 7

    .line 3364
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 3366
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_4

    .line 3367
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    .line 3368
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3369
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 3370
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3372
    :cond_0
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 3373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a019f

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 3375
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    if-eqz p1, :cond_2

    .line 3376
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a()V

    .line 3378
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz p1, :cond_3

    .line 3379
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 3381
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Bottom Action Bar"

    const-string v1, "Call button clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$54;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected onButtonBarIconLongClicked(Landroid/view/View;)V
    .locals 7

    .line 3309
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_6

    .line 3310
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    .line 3311
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3312
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 3313
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/T9Helper;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3315
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a019f

    if-eq p1, v0, :cond_1

    goto :goto_2

    .line 3317
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "ClickLongCallButton"

    if-eqz p1, :cond_4

    .line 3318
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isCallSmallIcon()Z

    move-result p1

    if-nez p1, :cond_6

    .line 3319
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->centerBottomActionSmallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3320
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    .line 17106
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Show:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingShow:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimateInto:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    .line 17270
    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(J)V

    .line 3321
    :cond_3
    :goto_1
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ca:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3322
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3325
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz p1, :cond_5

    .line 3326
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 3329
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Bottom Action Bar"

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$53;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onCDAnalyticsExpand(Z)V
    .locals 1

    .line 813
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 816
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 817
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/activity/contact/cards/AnalyticsCarouselCard;

    if-eqz v0, :cond_0

    .line 818
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->scrollToPosition(ILcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 824
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerViewAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCallDetailsChanged([I)V
    .locals 3

    .line 1949
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCallDetailsChanged: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 1951
    invoke-static {p1}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object p1

    .line 1953
    sget-object v0, Lcom/callapp/contacts/model/Constants;->CALL_ON_HOLD:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/Constants;->CALL_ADDED:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    if-nez p1, :cond_1

    .line 1954
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHoldContactData(Z)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1956
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHoldContactData(Z)V

    return-void
.end method

.method public onCallFabActionClicked(Lcom/callapp/contacts/activity/contact/details/ContactAction;)V
    .locals 2

    .line 3167
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->d:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3236
    :pswitch_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startInviteDialog()V

    .line 3237
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickLongCallInvite"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3230
    :pswitch_1
    new-instance v0, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;-><init>()V

    .line 3231
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 3232
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickLongCallUnIncognito"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3224
    :pswitch_2
    new-instance v0, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;-><init>()V

    .line 3225
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 3226
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickLongCallIncognito"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3220
    :pswitch_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startPersonalCallScreen()V

    .line 3221
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickLongCallPromotedFeature"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3214
    :pswitch_4
    new-instance p1, Lcom/callapp/contacts/action/local/CreateContactsAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/CreateContactsAction;-><init>()V

    .line 3215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/CreateContactsAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallAddToContacts"

    .line 3216
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3208
    :pswitch_5
    new-instance p1, Lcom/callapp/contacts/action/local/UnSpamAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/UnSpamAction;-><init>()V

    .line 3209
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/UnSpamAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallUnSpam"

    .line 3210
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3202
    :pswitch_6
    new-instance p1, Lcom/callapp/contacts/action/local/SpamAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/SpamAction;-><init>()V

    .line 3203
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/SpamAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallSpam"

    .line 3204
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3196
    :pswitch_7
    new-instance p1, Lcom/callapp/contacts/action/local/UnBlockCallAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/UnBlockCallAction;-><init>()V

    .line 3197
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/UnBlockCallAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallUnBlock"

    .line 3198
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3190
    :pswitch_8
    new-instance p1, Lcom/callapp/contacts/action/local/BlockCallAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/BlockCallAction;-><init>()V

    .line 3191
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/BlockCallAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallBlock"

    .line 3192
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3185
    :pswitch_9
    new-instance p1, Lcom/callapp/contacts/action/local/NoteAction;

    invoke-direct {p1}, Lcom/callapp/contacts/action/local/NoteAction;-><init>()V

    .line 3186
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p0, v0, v1}, Lcom/callapp/contacts/action/local/NoteAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    const-string p1, "ClickLongCallNote"

    .line 3187
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    return-void

    .line 3181
    :pswitch_a
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startInstantMessaging(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    .line 3182
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClickLongCall_IM"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3169
    :pswitch_b
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getType()Lcom/callapp/contacts/manager/Singletons$SenderType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startInstantMessaging(Lcom/callapp/contacts/manager/Singletons$SenderType;)V

    const-string p1, "ClickLongCallSMS"

    .line 3170
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCallFabActionsHidden()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->centerBottomActionSmallIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->clearAnimation()V

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callIconScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onCallFabActionsShown(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;)V"
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 388
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LongCallOptions"

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendFabActionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 33

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 2237
    const-class v13, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    iput-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    .line 2238
    iput-object v12, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    .line 2239
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handleIncognitoMode()V

    .line 2241
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_7

    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2242
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2246
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2300
    :pswitch_0
    invoke-virtual {v11, v14}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHoldContactData(Z)V

    .line 2301
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, v12, v15}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 2287
    :pswitch_1
    invoke-virtual {v11, v15, v14}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->animateBottomActionBar(ZZ)V

    .line 2288
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->resetKeypadNumbers()V

    .line 2290
    :pswitch_2
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2292
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2293
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto/16 :goto_0

    .line 2295
    :cond_1
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto/16 :goto_0

    .line 2284
    :pswitch_3
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, v12, v15}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void

    .line 2272
    :pswitch_4
    iget-boolean v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    if-eqz v0, :cond_2

    return-void

    .line 2275
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2276
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Call recorders list"

    const-string v2, "PerformRecTestCall"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto :goto_0

    .line 2279
    :cond_3
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto :goto_0

    .line 2260
    :pswitch_5
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz v0, :cond_4

    .line 2261
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    :cond_4
    const-wide/16 v0, 0x0

    .line 2263
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-direct {v11, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cleanAllDataIfContactChanged(JLcom/callapp/framework/phone/Phone;)Z

    .line 2265
    invoke-virtual {v11, v14}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHoldContactData(Z)V

    .line 2266
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getIsIncomingCallOpenedOverlay()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2268
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto :goto_0

    .line 2248
    :pswitch_6
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz v0, :cond_5

    .line 2249
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 2251
    :cond_5
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    if-eqz v0, :cond_6

    .line 2252
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 2254
    :cond_6
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2255
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 2306
    :cond_7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2307
    iput-boolean v14, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->manualRecorderDialogShown:Z

    .line 2308
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;

    invoke-direct {v1, v11, v12}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$34;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 2318
    :cond_8
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_a

    .line 2319
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPostCall()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2320
    :cond_9
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$35;

    invoke-direct {v1, v11, v12}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$35;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 2337
    :cond_a
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/manager/phone/CallStateListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, v12, v15}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 2338
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateScreenLockState(Z)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 2339
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 2340
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$36;

    invoke-direct {v2, v11, v12, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$36;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;I)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 2354
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2355
    :cond_c
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$59;->c:[I

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v15, :cond_32

    const/4 v10, 0x2

    if-eq v0, v10, :cond_32

    const/4 v9, 0x3

    if-eq v0, v9, :cond_34

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    goto/16 :goto_f

    .line 2372
    :cond_d
    iget-boolean v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    if-eqz v0, :cond_e

    .line 2373
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 2375
    :cond_e
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_f

    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getLoadedFields()Ljava/util/Set;

    move-result-object v0

    new-array v2, v15, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->callHistoryData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v2, v14

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2376
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$37;

    invoke-direct {v0, v11}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$37;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    const/16 v2, 0x3e8

    .line 2383
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$37;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 2386
    :cond_f
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-eq v0, v2, :cond_31

    const-string v0, ""

    .line 2393
    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_25

    .line 2394
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v2

    iget-object v3, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 14444
    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isEnableMode()Z

    move-result v4

    const v16, 0x7f1204ea

    if-eqz v4, :cond_11

    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->fi:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 14445
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 14447
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;

    iget-object v2, v2, Lcom/callapp/contacts/recorder/CallRecorderManager;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {v5, v3, v12, v2}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderManualLowStorage;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v4, v11, v5}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    goto :goto_2

    .line 14451
    :cond_10
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v5, 0x7f12014f

    .line 14452
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v5, 0x7f120150

    .line 14453
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 14454
    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    new-instance v5, Lcom/callapp/contacts/recorder/CallRecorderManager$2;

    invoke-direct {v5, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager$2;-><init>(Lcom/callapp/contacts/recorder/CallRecorderManager;)V

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move-object/from16 v22, v5

    invoke-direct/range {v17 .. v23}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 14451
    invoke-virtual {v3, v11, v4}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_12

    const-string v0, "LowDeviceStorage"

    const/4 v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_13

    .line 2399
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v3, :cond_13

    iget-object v3, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gt:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2400
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gt:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2403
    new-instance v0, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;

    invoke-direct {v0, v11}, Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog;-><init>(Lcom/callapp/contacts/activity/callappplus/CallAppFirstTimeCallDialog$ActionClick;)V

    .line 2404
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    invoke-virtual {v2, v11, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2405
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "CallAppPlus"

    const-string v3, "View/CreateFirstTimeExperiencePopup"

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallAppFirstTimeCallDialog"

    const/4 v2, 0x1

    :cond_13
    if-nez v2, :cond_19

    .line 2408
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_14
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v3

    if-nez v3, :cond_19

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fe:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_19

    .line 2409
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2410
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AccessibilityService: Prefs.accessibilityPopupFirstShown: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 2411
    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Prefs.accessibilityPopupLastShown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 2412
    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Prefs.accessibilityPopupCallCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fb:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2413
    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2410
    invoke-static {v13, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2415
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNull()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v0, "AccessibilityService: Prefs.accessibilityPopupFirstShown.isNull()"

    .line 2416
    invoke-static {v13, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2419
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 2420
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    const-string v0, "accessibilityPopupFirstShown"

    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2424
    :cond_15
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2426
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fb:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_18

    const-string v0, "AccessibilityService: Prefs.accessibilityPopupCallCounter is 5"

    .line 2428
    invoke-static {v13, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v0, "accessibilityPopupCallCounter"

    goto :goto_5

    :cond_16
    const/4 v4, -0x5

    .line 2433
    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 2434
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2436
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v0, "AccessibilityService: 5 days ago"

    .line 2438
    invoke-static {v13, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2440
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    const-string v0, "AccessibilityService5days"

    goto :goto_5

    .line 2445
    :cond_17
    invoke-virtual {v3, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 2446
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fd:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2448
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v0, "AccessibilityService: 10 days ago"

    .line 2450
    invoke-static {v13, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2452
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fc:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    const-string v0, "AccessibilityService10days"

    goto/16 :goto_5

    :cond_18
    :goto_6
    if-eqz v2, :cond_19

    .line 2461
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;

    invoke-direct {v1}, Lcom/callapp/contacts/popup/contact/callrecorder/ReenableAccessibilitServiceDialog;-><init>()V

    .line 2462
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    invoke-virtual {v3, v11, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_19
    if-nez v2, :cond_1a

    .line 2466
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_1a

    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2467
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldShowBanner()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2468
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showNoteBannerLayout()V

    const-string v0, "showNoteBanner"

    const/4 v2, 0x1

    :cond_1a
    if-nez v2, :cond_1b

    .line 2474
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2475
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dF:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2478
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$yKlXZvYKwEVATgR9WWoW03Ik4Z4;

    invoke-direct {v1, v11}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$yKlXZvYKwEVATgR9WWoW03Ik4Z4;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const-string v0, "CallScreenThemeFullScreenBanner"

    const/4 v2, 0x1

    :cond_1b
    if-nez v2, :cond_1c

    .line 2488
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 2489
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showOverlayPermissionDialog()V

    const-string v0, "showOverlayPermissionDialog"

    const/4 v2, 0x1

    :cond_1c
    if-nez v2, :cond_1d

    .line 2494
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldShowCallScreenEncouragementPopup()Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    iget-boolean v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->failedToSetDefaultDialer:Z

    if-eqz v1, :cond_1f

    .line 2495
    :cond_1e
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$38;

    const v3, 0x7f0800ba

    const v1, 0x7f1203af

    .line 2496
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1203ae

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f120096

    .line 2497
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$S9YxEmhgJsJ6cpNWy6qI79q-DqI;

    invoke-direct {v7, v11}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$S9YxEmhgJsJ6cpNWy6qI79q-DqI;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    const v1, 0x7f120279

    .line 2498
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v1, 0x7f0601cc

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v18

    sget-object v19, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$e8ikabrlQbwi-peXNAEKxbsULlU;->INSTANCE:Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$e8ikabrlQbwi-peXNAEKxbsULlU;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v15, v8

    move-object/from16 v8, v17

    const/4 v15, 0x3

    move/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$38;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2505
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v11, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2506
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0, v15}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2507
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fF:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    .line 2510
    iput-boolean v14, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->failedToSetDefaultDialer:Z

    const-string v0, "ShowCallScreenEncouragementPopup"

    const/4 v2, 0x1

    goto :goto_7

    :cond_1f
    const/4 v15, 0x3

    :goto_7
    if-nez v2, :cond_20

    .line 2514
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    .line 2515
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isEnableMode()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2518
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v25, 0x7f0800a8

    const v1, 0x7f120148

    .line 2519
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v26

    const v1, 0x7f120147

    .line 2520
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 2521
    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v28

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$CallRecorderDialogMessageWithTopImageListener;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$1;)V

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v24, v0

    move-object/from16 v29, v1

    invoke-direct/range {v24 .. v32}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 2522
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v11, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const-string v0, "CallRecorderDialogMessage"

    const/4 v2, 0x1

    :cond_20
    if-nez v2, :cond_21

    .line 2527
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v1, :cond_21

    .line 2528
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v11, v1}, Lcom/callapp/contacts/util/AppRater;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "appRater"

    const/4 v2, 0x1

    :cond_21
    if-nez v2, :cond_23

    .line 2535
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hq:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_22

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    goto :goto_8

    :cond_22
    const/4 v3, 0x1

    .line 2536
    :goto_8
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;-><init>()V

    .line 2537
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, v11, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const-string v0, "PostCallPhoneVerificationDialog"

    const/4 v2, 0x1

    goto :goto_9

    :cond_23
    const/4 v3, 0x1

    :cond_24
    :goto_9
    if-nez v2, :cond_26

    .line 2543
    iget-object v1, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    if-eqz v1, :cond_26

    .line 2544
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/IncognitoToolTip;->a()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "incognitoToolTip"

    const/4 v2, 0x1

    goto :goto_a

    :cond_25
    const/4 v3, 0x1

    const/4 v15, 0x3

    const/4 v2, 0x0

    :cond_26
    :goto_a
    if-nez v2, :cond_29

    .line 2552
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_29

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveModeButNotConnected()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2553
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v15, :cond_27

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_28

    :cond_27
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2554
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/lit8 v1, v1, 0x32

    if-nez v1, :cond_29

    .line 2555
    :cond_28
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->OUTGOING:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v14, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V

    invoke-virtual {v0, v11, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const-string v0, "DriveModePopUp"

    move-object v1, v0

    const/4 v2, 0x1

    goto :goto_b

    :cond_29
    move-object v1, v0

    :goto_b
    if-nez v2, :cond_2a

    .line 2562
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_2a

    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isUserPressedHomeButton()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2563
    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2564
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v4, "CDInterstitialWakeScreenWhenNeedToShow"

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "power"

    .line 2566
    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v4, 0x1000000a

    .line 2567
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    .line 2568
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-wide/16 v4, 0x1f4

    .line 2572
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 2574
    invoke-static {v13, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_2a
    :goto_c
    if-nez v2, :cond_2b

    .line 2579
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_2b

    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isForeGroundVisible()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2580
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;

    invoke-direct {v0, v11, v12}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/call/CallData;)V

    const/16 v1, 0x1f4

    .line 2604
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$39;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    const/4 v15, 0x1

    goto :goto_e

    .line 2606
    :cond_2b
    iget-boolean v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->decidedToLoadInterstitial:Z

    if-eqz v0, :cond_2f

    .line 2607
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_2c

    const-string v1, "interstitial is null"

    goto :goto_d

    .line 2609
    :cond_2c
    invoke-static/range {p0 .. p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isForeGroundVisible()Z

    move-result v0

    if-nez v0, :cond_2e

    :cond_2d
    const-string v1, "isForeGroundVisible"

    .line 2613
    :cond_2e
    :goto_d
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v3, "cdInterstitialShowAnalytics"

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2614
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "Ad"

    const-string v4, "InterstitialShowNotCalled"

    invoke-virtual {v0, v3, v4, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    move v15, v2

    .line 2618
    :goto_e
    iput-boolean v14, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitialLoaded:Z

    .line 2619
    iput-boolean v14, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->decidedToLoadInterstitial:Z

    .line 2621
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_30

    if-nez v15, :cond_30

    .line 2622
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;

    invoke-direct {v0, v11}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$40;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 2633
    :cond_30
    invoke-direct {v11, v15}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->postCallDismiss(Z)V

    :cond_31
    :goto_f
    return-void

    .line 2358
    :cond_32
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz v0, :cond_33

    .line 2359
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->a()V

    .line 2361
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->resetLayoutState()V

    .line 2362
    iget-object v0, v11, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->isViewShown()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2363
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$9y6rYEQhCvV4sCbh06AELiRdkCI;

    invoke-direct {v0, v11}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$9y6rYEQhCvV4sCbh06AELiRdkCI;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2367
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v0

    invoke-direct {v11, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadInterstitialIfNeeded(Z)V

    .line 2368
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->pausePlayerCardIdNeeded()V

    .line 2369
    invoke-direct/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doAutoScrollIfNeeded()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCardShowingAd(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 2

    .line 2040
    instance-of v0, p1, Lcom/callapp/contacts/activity/contact/cards/CDLargeAdCard;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2041
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAdLoaded:Z

    .line 2042
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isPreCall()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2043
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->doAutoScrollIfNeeded()V

    return-void

    .line 2045
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$31;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$31;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 2052
    :cond_1
    instance-of p1, p1, Lcom/callapp/contacts/activity/analytics/cards/CDAnalyticsAdCard;

    if-eqz p1, :cond_2

    .line 2053
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAnalyticsAdLoaded:Z

    :cond_2
    return-void
.end method

.method public onCloseCallScreenThemeBannerClicked()V
    .locals 2

    .line 2680
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    if-eqz v0, :cond_0

    .line 2681
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2682
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2683
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->setListener(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;)V

    .line 2684
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    :cond_0
    return-void
.end method

.method public onCloseKeypadRequestedByUser(Z)V
    .locals 0

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 2772
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presentersInitialized:Z

    if-nez v0, :cond_1

    .line 2773
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFieldsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2774
    :try_start_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 2775
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2777
    :cond_0
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactFields:Ljava/util/Set;

    .line 2779
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 2783
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callState:Lcom/callapp/contacts/model/call/CallState;

    sget-object v4, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne v1, v4, :cond_4

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->manualRecorderDialogShown:Z

    if-nez v1, :cond_4

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->records:Lcom/callapp/contacts/model/contact/ContactField;

    .line 2784
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-eq v1, v4, :cond_4

    .line 2785
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->manualRecorderDialogShown:Z

    .line 2786
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getRecords()Ljava/util/List;

    move-result-object v1

    .line 2787
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2788
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    :cond_2
    if-eqz v0, :cond_4

    .line 2791
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDate()J

    move-result-wide v4

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callData:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 2793
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-wide/16 v6, 0x78

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 2795
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 2796
    new-instance v1, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$44;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$44;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-direct {v1, v0, v2, v4}, Lcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer;-><init>(Lcom/callapp/contacts/model/objectbox/CallRecorder;ZLcom/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderPlayer$CallRecorderPlayerEvents;)V

    .line 2802
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2807
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 2808
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->updateCallFabOnContactChanged(Lcom/callapp/contacts/model/contact/ContactData;)V

    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2810
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->cover:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2811
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$www0nYTcCUoTqf8OA0tgfKlveHc;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_5
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2827
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2828
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handleIncognitoMode()V

    .line 2829
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoLoaded:Z

    .line 2830
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendWhoViewedMyProfileIfNeeded()V

    :cond_6
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2833
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2834
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    :cond_7
    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2837
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->deviceIdChanged:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2838
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a(J)V

    :cond_8
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2841
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v2

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v3

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v0

    const/4 v0, 0x3

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v1, v0

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2842
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setupContactActions(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2844
    :cond_9
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2845
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$45;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2852
    :cond_a
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2853
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setFavoriteButton()V

    :cond_b
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2855
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2856
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->a()V

    .line 2857
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b(Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_c
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2859
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2860
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_d
    new-array v0, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2862
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->spamScore:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2863
    invoke-static {p1}, Lcom/callapp/contacts/loader/FastCacheDataManager;->c(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2865
    :cond_e
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIdentified:Z

    if-nez v0, :cond_10

    .line 2866
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2867
    :cond_f
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 2868
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIdentified:Z

    :cond_10
    new-array p1, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2872
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v0, p1, v2

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2873
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->noteBannerlayout:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_11

    .line 2875
    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    :cond_11
    new-array p1, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2879
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v0, p1, v2

    invoke-static {p2, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2880
    iput-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->genomeLoaded:Z

    .line 2881
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->sendWhoViewedMyProfileIfNeeded()V

    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1197
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1199
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    .line 1201
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "phone_origin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    if-nez v0, :cond_0

    .line 1205
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cb:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 6039
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1209
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_REPORT_TRACK_VIEW"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1210
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->loadContactWhenCreated()V

    .line 1212
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setKeyguardDismissAndScreenWindowFlags()V

    .line 1214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1215
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1217
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f0a026f

    .line 1220
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0145

    .line 1221
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionsContainerWithShadow:Landroid/view/View;

    .line 1224
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;

    invoke-direct {v4, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$18;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-direct {v0, p0, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    .line 1236
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 1237
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/BottomBarScrollListener$Listener;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 1239
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$19;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$19;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 1253
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->c(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 1255
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presentersInitialized:Z

    .line 1257
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$20;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$20;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showActionBar(Z)V

    if-eqz p1, :cond_1

    const-string v1, "forceIdleState"

    .line 1265
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    const v1, 0x7f0a00e3

    .line 1267
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 6952
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 1268
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 1269
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$21;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$21;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$a;)V

    const v1, 0x7f0a020a

    .line 1276
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->centerBottomActionSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f0a0208

    .line 1277
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callActionBtn:Landroid/view/View;

    const v1, 0x7f0a0209

    .line 1278
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    .line 1279
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1280
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils;->a:Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/contact/details/presenter/CallFabUtils$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V

    .line 1281
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->setActionListener(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;)V

    .line 1282
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldShowFabIntro()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1283
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callFab:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    .line 7127
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->e:Landroid/widget/ImageView;

    const v4, 0x3f99999a    # 1.2f

    .line 7128
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 7129
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 7130
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7131
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1c2

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/g/a/a/b;

    invoke-direct {v4}, Landroidx/g/a/a/b;-><init>()V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showIntro$$inlined$apply$lambda$1;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showIntro$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1287
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a(Ljava/lang/String;)V

    const v1, 0x7f0a0775

    .line 1289
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/skyfishjy/library/RippleBackground;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->profileRippleBackground:Lcom/skyfishjy/library/RippleBackground;

    .line 1291
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    .line 1310
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$22;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1313
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v3, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    if-eqz v1, :cond_3

    .line 1315
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setForcePreCall(Z)V

    .line 1316
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3

    .line 1317
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$23;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->setAudioRouteSelectorDialogListener(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/AudioRouteSelectorDialogListener;)V

    .line 1327
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    const-class v3, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    .line 1328
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->setTopSheetListener(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter$TopSheetListener;)V

    .line 1329
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v3, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1330
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/DefaultDialer;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v3, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1331
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v3, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1332
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v3, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1334
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v1

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bringToFrontLifecycleObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 1336
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    invoke-virtual {v1, p0, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListenerIfNotPreCall(Lcom/callapp/contacts/manager/phone/CallStateListener;Z)Z

    move-result v1

    .line 1337
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isStartedFromACall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    if-nez v1, :cond_4

    .line 1340
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void

    .line 1344
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    const v1, 0x7f0a0443

    .line 1345
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$24;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0144

    .line 1354
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionBar:Landroid/view/View;

    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 1355
    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setTopBarClickedListeners([I)V

    new-array v1, v2, [I

    const v3, 0x7f0a019f

    aput v3, v1, v0

    .line 1368
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setButtonBarLongClickedListeners([I)V

    new-array v1, v2, [I

    aput v3, v1, v0

    .line 1369
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setButtonBarClickedListeners([I)V

    const v1, 0x7f0a0274

    .line 1371
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionEditContainer:Landroid/view/View;

    .line 1372
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$25;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a072f

    .line 1379
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->recorderTestContainerStub:Landroid/view/ViewStub;

    const v1, 0x7f0a01f5

    .line 1380
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsRecyclerview:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 1382
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1383
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/PresenterEvents;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterEvents:Lcom/callapp/contacts/activity/interfaces/PresenterEvents;

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1384
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v3, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1385
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fastCacheChangedListener:Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1386
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1390
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, p0, v3}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    const v1, 0x7f0a04fe

    .line 1392
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/IncognitoToolTip;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    .line 1393
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$4ymtA3GiJLYKlAQYffH6mGvSTmg;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$4ymtA3GiJLYKlAQYffH6mGvSTmg;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setLearnMoreOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01f6

    .line 1411
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cardsRecyclerviewContainer:Landroid/view/View;

    const v1, 0x7f0a0953

    .line 1412
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetContainer:Landroid/view/View;

    const v1, 0x7f0a019e

    .line 1413
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callBarLayoutRoot:Landroid/view/View;

    const v1, 0x7f0a0297

    .line 1414
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsTopStrip:Landroid/view/View;

    const v1, 0x7f0a0276

    .line 1415
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionMore:Landroid/view/View;

    const v1, 0x7f0a0277

    .line 1416
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionNote:Landroid/view/View;

    const v1, 0x7f0a0278

    .line 1417
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionVideoRingtone:Landroid/view/View;

    const v1, 0x7f0a0275

    .line 1418
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/CallAppCheckBox;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->favoritesBtn:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const v1, 0x7f0a0270

    .line 1419
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsActionAdd:Landroid/view/View;

    const v1, 0x7f0a027a

    .line 1420
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsFirstCircleButton:Landroid/view/View;

    const v1, 0x7f0a027c

    .line 1421
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsSecondCircleButton:Landroid/view/View;

    const v1, 0x7f0a0282

    .line 1422
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsThirdCircleButton:Landroid/view/View;

    const v1, 0x7f0a02c0

    .line 1423
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->coverFrameLayout:Landroid/view/View;

    const v1, 0x7f0a0841

    .line 1424
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->snackBarContainerKeypad:Landroid/view/View;

    .line 1426
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->flipPVRIconIfNeeded()V

    const v1, 0x7f0a06c3

    .line 1428
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerViewStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_5

    const-string v1, "isIncoming"

    .line 1429
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1430
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionsContainerWithShadow:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1431
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->INCOMING_CALL:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    return-void

    .line 1433
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bottomActionsContainerWithShadow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    xor-int/2addr v1, v2

    new-array v2, v2, [I

    const v3, 0x7f060026

    aput v3, v2, v0

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Z[I)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    :array_0
    .array-data 4
        0x7f0a0485
        0x7f0a0274
        0x7f0a0277
        0x7f0a0278
        0x7f0a0101
        0x7f0a0614
        0x7f0a0275
        0x7f0a0270
        0x7f0a0276
        0x7f0a027c
        0x7f0a027a
        0x7f0a0282
    .end array-data
.end method

.method public onDestroy()V
    .locals 4

    .line 1561
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1562
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Contact Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->singleContactContentObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a()V

    .line 1564
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 1568
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->releaseContact()V

    .line 1569
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 1570
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V

    .line 1571
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->bringToFrontLifecycleObserver:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontLifecycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 1572
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->runAutoScrollIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 1573
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1574
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->b(Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/PresenterEvents;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterEvents:Lcom/callapp/contacts/activity/interfaces/PresenterEvents;

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1576
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/CardShowingAdEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/contact/cards/ScrollWhenCDAnalyticsExpand;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1578
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/DialpadToggleListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1579
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/DefaultDialer;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1580
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    if-eqz v0, :cond_1

    .line 1581
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/IncognitoToolTip;->b()V

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    if-eqz v0, :cond_2

    .line 1584
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->setListener(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController$Listener;)V

    .line 1586
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V

    .line 1588
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fastCacheChangedListener:Lcom/callapp/contacts/activity/interfaces/FastCacheChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1589
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->invalidateDataListener:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1590
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAdLoaded:Z

    .line 1591
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isAnalyticsAdLoaded:Z

    .line 1592
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_3

    .line 8130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 9130
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/PlayerView;->a:Landroid/widget/FrameLayout;

    .line 1593
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1595
    :cond_3
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/FinishActivityListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 1596
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/os/Bundle;)V
    .locals 3

    .line 1866
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 13091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onFullProfileImageClicked(Landroid/view/View;)V
    .locals 3

    .line 3495
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0443

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getCurrentPosition()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3496
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Top bar button clicked: large image."

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    invoke-static {p0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 3498
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseSocialProfileActivity;->openContactProfile(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_0
    return-void
.end method

.method public onGetItNowCallScreenThemeBannerClicked()V
    .locals 2

    .line 2690
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->callScreenThemeBannerViewController:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;

    if-eqz v0, :cond_0

    .line 2691
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeBannerViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2692
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fullScreenBannerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2693
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2694
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onInCallActionFragmentCreated(Z)V
    .locals 2

    .line 728
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->shouldPlayVideoBackground:Z

    if-eqz p1, :cond_0

    const p1, 0x7f06010e

    .line 731
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 732
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    goto :goto_0

    .line 734
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f060088

    invoke-static {p1, v0}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    .line 735
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARY:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 737
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isSpammer()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    .line 738
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setStatusBarColor(I)V

    return-void
.end method

.method public onKeypadStateChanged(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadState;)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 14

    .line 869
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnNewIntent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const-string v1, "EXTRA_BRING_TO_FRONT_RETRY"

    const/4 v3, 0x0

    .line 870
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const-string v4, "EXTRA_BRING_TO_FRONT_RETRY_LEFT"

    const/4 v6, 0x4

    .line 872
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ge v7, v6, :cond_0

    add-int/2addr v7, v5

    .line 875
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 876
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    new-instance v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;

    invoke-direct {v4, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;-><init>(Landroid/content/Intent;)V

    mul-int/lit16 v7, v7, 0xc8

    invoke-virtual {v4, v7}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$BringToFrontTask;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 880
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    goto :goto_0

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/MainThreadTimer;->a()Z

    .line 890
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setIntent(Landroid/content/Intent;)V

    .line 891
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 892
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "DONT_CLEAR_POPUP_ACTION"

    if-eqz v1, :cond_3

    .line 894
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 897
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_4

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got empty extras: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v6, "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED"

    .line 903
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "Missed Call Actions"

    if-eqz v7, :cond_5

    .line 904
    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    const-string v7, "User clicked the missed call notification"

    invoke-virtual {v6, v8, v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {v3}, Lcom/callapp/contacts/util/MissedCallUtils;->b(Z)V

    .line 908
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showDialogToAllowNotificationAccessAfterMissedCall(Landroid/app/Activity;)V

    :cond_5
    const-string v6, "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED"

    .line 910
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 911
    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    const-string v7, "User clicked the not answered notification"

    invoke-virtual {v6, v8, v7}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-static {v3}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Z)V

    .line 916
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "who_viewed_entry_point"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    iput-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->whoViewedMyProfileEntrypoint:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    .line 917
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_WHO_VIEW_PROFILE_NOTIFICATION"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 918
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d()V

    .line 920
    :cond_7
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "whoViewedMyProfileNotificationClicked"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 921
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    const-string v7, "ViewProfile"

    const-string v8, "ViewProfile_notification_open"

    invoke-virtual {v6, v7, v8}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_8
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    .line 926
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/popup/PopupManager;->a()V

    .line 927
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    if-eqz v4, :cond_9

    .line 928
    invoke-virtual {v4}, Lcom/callapp/contacts/widget/IncognitoToolTip;->b()V

    .line 929
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoToolTip:Lcom/callapp/contacts/widget/IncognitoToolTip;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/widget/IncognitoToolTip;->setVisibility(I)V

    :cond_9
    const-string v4, "contactId"

    .line 933
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 934
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    const-string v6, "phone"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    const-string v4, "EXTRA_CALL_TELECOM_ID"

    .line 935
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "phone_origin"

    .line 936
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->origin:Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const-wide/16 v6, 0x0

    cmp-long v1, v9, v6

    if-nez v1, :cond_a

    .line 937
    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnNewIntent got empty contactId and phone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 941
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 944
    invoke-direct {p0, v9, v10, v11}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->cleanAllDataIfContactChanged(JLcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v13, 0x0

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-nez v13, :cond_d

    .line 945
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_REPORT_TRACK_VIEW"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 946
    :cond_d
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Screen"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const-string v0, "entryPoint"

    .line 947
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 949
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Contact Details"

    const-string v4, "ContactScreen"

    invoke-virtual {v1, v2, v4, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_e
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "forceIdleState"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->forcePreCallState:Z

    if-eqz v0, :cond_f

    .line 955
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setHoldContactData(Z)V

    .line 957
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    goto :goto_3

    .line 959
    :cond_f
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 960
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->getRecorderTestRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 961
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setMode(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;)V

    .line 964
    :cond_10
    :goto_3
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/content/Intent;JLcom/callapp/framework/phone/Phone;Ljava/lang/String;Z)V

    .line 977
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$12;->execute()Lcom/callapp/contacts/manager/task/Task;

    const-string v0, "EXTRA_INCOGNITO_CALL"

    .line 978
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isOneTimeIncognitoCall:Z

    const-string v0, "EXTRA_SHOW_KEYPAD"

    .line 979
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 980
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ShowKeypadListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_11
    const-string v0, "future_target_index_key"

    .line 982
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 983
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/NotificationManager;->c(I)V

    :cond_12
    return-void
.end method

.method public onNumberChanged(Ljava/lang/String;IIIZ)V
    .locals 0

    .line 3666
    sput-object p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadNumbers:Ljava/lang/String;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1541
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1542
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/ProximityManager;->setAudioModeChangedListener(Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;)V

    .line 1544
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->d(Ljava/lang/String;)V

    .line 1545
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setContactDetailsActivityVisible(Z)V

    .line 1546
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isOneTimeIncognitoCall:Z

    if-eqz v0, :cond_1

    .line 1547
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    .line 1549
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioRouteSelectorDialogFragment:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    if-eqz v0, :cond_2

    .line 1550
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a()V

    .line 1552
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->RECORDER_TEST:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1553
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    .line 1555
    :cond_3
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onPause()V

    return-void
.end method

.method public onPreRecord(Landroid/os/Bundle;)V
    .locals 3

    .line 1861
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 12091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRecordFileReady(Landroid/os/Bundle;)V
    .locals 3

    .line 1871
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 14091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRecorderStarted(Landroid/os/Bundle;)V
    .locals 3

    .line 1850
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 10091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRecorderStopped(Landroid/os/Bundle;)V
    .locals 3

    .line 1855
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/loader/CallRecorderLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1856
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderStateListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    .line 11091
    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1157
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SHOULD_FINISH_ACTIVITY"

    .line 1158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1518
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onResume()V

    .line 1519
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1523
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isUsingBT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setVolumeControlStream(I)V

    goto :goto_0

    .line 1526
    :cond_0
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setVolumeControlStream(I)V

    .line 1529
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->requestUpdateUI()V

    .line 1530
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->audioModeChangedListener:Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/ProximityManager;->setAudioModeChangedListener(Lcom/callapp/contacts/manager/ProximityManager$AudioModeChanged;)V

    .line 1531
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->c(Ljava/lang/String;)V

    .line 1532
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setContactDetailsActivityVisible(Z)V

    .line 1534
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isIncognitoCall:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isOneTimeIncognitoCall:Z

    if-eqz v0, :cond_3

    .line 1535
    :cond_2
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    :cond_3
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 999
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1166
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1167
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finishTask:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->isRunning()Z

    move-result v0

    const-string v1, "SHOULD_FINISH_ACTIVITY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSetAsDefaultAppClicked()V
    .locals 4

    .line 2006
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Default call screen"

    const-string v3, "Pop up Shown"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->timeRequestedToOpenDefaultPhoneAppDialog:J

    .line 2008
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$30;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .line 3595
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$57;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$57;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTopBarIconClicked(Landroid/view/View;)V
    .locals 9

    .line 3010
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 3012
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "Top bar button clicked: add/edit."

    const-string v2, "Clicked"

    const-string v3, "Contact Details"

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 3070
    :pswitch_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 3071
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CD header icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Personal Store Item"

    const-string v2, "Icon clicked"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startPersonalCallScreen()V

    return-void

    .line 3067
    :pswitch_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startNewNote()V

    return-void

    .line 3079
    :pswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Top bar button clicked: more."

    invoke-virtual {p1, v3, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    if-eqz p1, :cond_4

    .line 3081
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->b()V

    .line 3082
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->topSheetPresenter:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TopSheetPresenter;->c()V

    return-void

    .line 3018
    :pswitch_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_4

    .line 3019
    check-cast p1, Lcom/callapp/contacts/widget/CallAppCheckBox;

    .line 3020
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->toggle()V

    .line 3021
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Top bar button clicked: favorite. set contact as favorite:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3022
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$50;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$50;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/observers/OneShotContentContentObserver;->a(Landroid/net/Uri;Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)Lcom/callapp/contacts/observers/OneShotContentContentObserver;

    .line 3028
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->setIsFavorite(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    return-void

    .line 3033
    :pswitch_4
    :sswitch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_4

    .line 3035
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3036
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->editOrCreateContact()V

    return-void

    .line 3040
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v5

    .line 3041
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/UserCorrectedData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3043
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserCorrectedData;->isBusiness()Z

    move-result p1

    goto :goto_0

    .line 3045
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isBusiness()Z

    move-result p1

    :goto_0
    move v4, p1

    .line 3048
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 3049
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$51;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$51;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    const-string v0, "Contact Details"

    const-string v1, "Edit clicked - User corrected a contact info data"

    move-object v2, p0

    .line 3048
    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IZLcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void

    .line 3105
    :sswitch_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a()V

    goto/16 :goto_3

    .line 3086
    :sswitch_2
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3087
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ClickThemeButtonToLight"

    invoke-virtual {p1, v3, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3089
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ClickThemeButtonToDark"

    invoke-virtual {p1, v3, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getRightThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    return-void

    .line 3095
    :sswitch_3
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3096
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ClickModeButtonToDark"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3100
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "ClickModeButtonToLight"

    invoke-virtual {p1, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    :goto_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    return-void

    .line 3075
    :sswitch_4
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1, v3, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->editOrCreateContact()V

    return-void

    .line 3014
    :sswitch_5
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Top bar button clicked: back."

    invoke-virtual {p1, v3, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onBackPressed()V

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0101 -> :sswitch_5
        0x7f0a0270 -> :sswitch_4
        0x7f0a027a -> :sswitch_3
        0x7f0a027c -> :sswitch_2
        0x7f0a0282 -> :sswitch_1
        0x7f0a0614 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0a0274
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onVoiceSearchRequested()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 3471
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onWindowFocusChanged(Z)V

    .line 3472
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->classSimpleName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public openCallAppPlus()V
    .locals 2

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->finish()V

    return-void
.end method

.method public registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 0

    .line 1994
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    return-void
.end method

.method public registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V
    .locals 0

    return-void
.end method

.method protected releaseContact()V
    .locals 2

    .line 3571
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    const/4 v0, 0x0

    .line 3572
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->incognitoLoaded:Z

    .line 3573
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->genomeLoaded:Z

    return-void
.end method

.method protected shouldColorHeaderBackground()Z
    .locals 2

    .line 2767
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->detailsActivityMode:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipEmptyView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toggleDialpad(ZZII)V
    .locals 1

    .line 1962
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$29;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ZII)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;)V
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2000
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->keypadVisiblityEvents:Lcom/callapp/contacts/activity/interfaces/KeypadVisibilityEvents;

    :cond_0
    return-void
.end method

.method public unRegisterFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V
    .locals 0

    return-void
.end method
