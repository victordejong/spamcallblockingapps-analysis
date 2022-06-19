.class public Lcom/telguarder/features/main/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final ANALYZE_ACTIVITY_START_DELAY:I = 0x12c

.field private static final ANALYZE_BUTTON_ANIMATION_DURATION:I = 0x7d0

.field public static final EXTRA_OPEN_PAGE:Ljava/lang/String; = "extraOpenPage"

.field public static final EXTRA_OPEN_PAGE_PARAMETER:Ljava/lang/String; = "pageToOpenParameter"

.field private static final REQUEST_IGNOREBATOPT:I = 0x85f

.field static active:Z = false


# instance fields
.field private analyzePageUrl:Ljava/lang/String;

.field private animStartTime:J

.field private mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

.field private mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

.field private mAnalyzeLayout:Landroid/widget/LinearLayout;

.field private mAnalyzeTitle:Landroid/widget/TextView;

.field private mBlockListButton:Landroid/widget/ImageButton;

.field private mButtonBlurredView:Landroid/widget/ImageView;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCallListButton:Landroid/widget/ImageButton;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSettingsButton:Landroid/widget/ImageButton;

.field private mSpamCallsButton:Landroid/widget/ImageButton;

.field private mTopBlurredView:Landroid/widget/ImageView;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTrendingButton:Landroid/widget/ImageButton;

.field private numberToAnalyze:Ljava/lang/String;

.field private final onAnalyzeClickListener:Landroid/view/View$OnClickListener;

.field private final onAnalyzeTouchListener:Landroid/view/View$OnTouchListener;

.field private final onBlockListTouchListener:Landroid/view/View$OnTouchListener;

.field private final onCallListTouchListener:Landroid/view/View$OnTouchListener;

.field private final onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final onKeyListener:Landroid/view/View$OnKeyListener;

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final onSettingsTouchListener:Landroid/view/View$OnTouchListener;

.field private final onSpamCallTouchListener:Landroid/view/View$OnTouchListener;

.field private final onTrendingTouchListener:Landroid/view/View$OnTouchListener;

.field private pageToOpen:Lcom/telguarder/helpers/ui/UiHelper$PageType;

.field private pageToOpenParameter:Ljava/lang/String;

.field private final preloadAnalyzeWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

.field private final preloadTrendingWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

.field private trendingPageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpen:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 88
    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpenParameter:Ljava/lang/String;

    .line 414
    new-instance v0, Lcom/telguarder/features/main/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$3;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onCallListTouchListener:Landroid/view/View$OnTouchListener;

    .line 435
    new-instance v0, Lcom/telguarder/features/main/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$4;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onSpamCallTouchListener:Landroid/view/View$OnTouchListener;

    .line 458
    new-instance v0, Lcom/telguarder/features/main/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$5;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onBlockListTouchListener:Landroid/view/View$OnTouchListener;

    .line 480
    new-instance v0, Lcom/telguarder/features/main/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$6;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onSettingsTouchListener:Landroid/view/View$OnTouchListener;

    .line 507
    new-instance v0, Lcom/telguarder/features/main/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$7;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onTrendingTouchListener:Landroid/view/View$OnTouchListener;

    .line 526
    new-instance v0, Lcom/telguarder/features/main/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$8;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->preloadTrendingWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 588
    new-instance v0, Lcom/telguarder/features/main/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$9;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onAnalyzeTouchListener:Landroid/view/View$OnTouchListener;

    .line 603
    new-instance v0, Lcom/telguarder/features/main/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$10;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onAnalyzeClickListener:Landroid/view/View$OnClickListener;

    .line 612
    new-instance v0, Lcom/telguarder/features/main/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$11;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 629
    new-instance v0, Lcom/telguarder/features/main/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$12;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 646
    new-instance v0, Lcom/telguarder/features/main/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$13;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->onKeyListener:Landroid/view/View$OnKeyListener;

    .line 715
    new-instance v0, Lcom/telguarder/features/main/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/MainActivity$15;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->preloadAnalyzeWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->requestIgnoreBatteryOptimisations()V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetTrendingButton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/telguarder/features/main/MainActivity;->showKeypad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/telguarder/features/main/MainActivity;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->isNumberAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->performCircularProgressButtonClick()V

    return-void
.end method

.method static synthetic access$1500(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/telguarder/features/main/MainActivity;->hideKeypad(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->hideAnalyzeEditBox()V

    return-void
.end method

.method static synthetic access$1702(Lcom/telguarder/features/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/telguarder/features/main/MainActivity;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/telguarder/features/main/MainActivity;->animStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSpamCallButton()V

    return-void
.end method

.method static synthetic access$2000(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetActivity()V

    return-void
.end method

.method static synthetic access$2100(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->analyzePageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetBlockListButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSettingsButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetCallListButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/telguarder/features/main/MainActivity;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->trendingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/telguarder/features/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity;->trendingPageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/telguarder/features/main/MainActivity;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->preloadTrendingWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/telguarder/features/main/MainActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/telguarder/features/main/MainActivity;->mTrendingButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->showAnalyzeEditBox()V

    return-void
.end method

.method private automaticPageOpen(Lcom/telguarder/helpers/ui/UiHelper$PageType;Ljava/lang/String;)V
    .locals 13

    .line 280
    sget-object v0, Lcom/telguarder/features/main/MainActivity$16;->$SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType:[I

    invoke-virtual {p1}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 299
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getTrendingUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/telguarder/features/phoneNumberTrending/TrendingActivity;->openTrending(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-static {p0, v0}, Lcom/telguarder/features/phoneEventHistory/SpamCallsActivity;->openSpamCalls(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    goto :goto_0

    .line 297
    :pswitch_2
    invoke-static {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->openSettings(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-static {p0, v0}, Lcom/telguarder/features/phoneEventHistory/CallListActivity;->openCallList(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    goto :goto_0

    .line 295
    :pswitch_4
    invoke-static {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->openBlockList(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    goto :goto_0

    .line 289
    :pswitch_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAnalyzeDeepLinkOpen()V

    .line 290
    :cond_0
    invoke-static {p2}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 291
    iput-object p2, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->performCircularProgressButtonClick()V

    goto :goto_0

    .line 282
    :pswitch_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupClickBlockNotification()V

    .line 283
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    const-wide/16 v3, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    .line 284
    invoke-static/range {v1 .. v6}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;Z)V

    goto :goto_0

    :cond_2
    const-wide/16 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, p0

    move-object v8, p2

    .line 286
    invoke-static/range {v7 .. v12}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;Z)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blurPageForAnalyze()V
    .locals 3

    .line 759
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mRootLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f050047

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 760
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 761
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeLayout:Landroid/widget/LinearLayout;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 762
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 763
    invoke-static {p0}, Ljp/wasabeef/blurry/Blurry;->with(Landroid/content/Context;)Ljp/wasabeef/blurry/Blurry$Composer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljp/wasabeef/blurry/Blurry$Composer;->color(I)Ljp/wasabeef/blurry/Blurry$Composer;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Ljp/wasabeef/blurry/Blurry$Composer;->capture(Landroid/view/View;)Ljp/wasabeef/blurry/Blurry$ImageComposer;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity;->mTopBlurredView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljp/wasabeef/blurry/Blurry$ImageComposer;->into(Landroid/widget/ImageView;)V

    .line 764
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 765
    invoke-static {p0}, Ljp/wasabeef/blurry/Blurry;->with(Landroid/content/Context;)Ljp/wasabeef/blurry/Blurry$Composer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljp/wasabeef/blurry/Blurry$Composer;->color(I)Ljp/wasabeef/blurry/Blurry$Composer;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljp/wasabeef/blurry/Blurry$Composer;->capture(Landroid/view/View;)Ljp/wasabeef/blurry/Blurry$ImageComposer;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->mButtonBlurredView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljp/wasabeef/blurry/Blurry$ImageComposer;->into(Landroid/widget/ImageView;)V

    .line 766
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private deBlurPageFromAnalyze()V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mRootLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f050045

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 772
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f050046

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 773
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 774
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 775
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTopBlurredView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonBlurredView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 778
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private hideAnalyzeEditBox()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideKeypad(Landroid/widget/EditText;)V
    .locals 2

    const-string v0, "input_method"

    .line 694
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initContentWithPermissionCheckIfNeeded()V
    .locals 7

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 125
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 126
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 127
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 128
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 129
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "android.permission.CALL_PHONE"

    .line 130
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_CALL_LOG"

    const-string v3, "android.permission.READ_CONTACTS"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.ANSWER_PHONE_CALLS"

    const-string v6, "android.permission.CALL_PHONE"

    .line 131
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/main/MainActivity;->logPermissionresults([Ljava/lang/String;[I)V

    .line 133
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->initContent()V

    .line 134
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->systemAlertPermCheck()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p0}, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->initContentWithPermissionCheck(Lcom/telguarder/features/main/MainActivity;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private isNumberAvailable()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$z3AATeTtNWI687agd7baU0K0lNk(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->initContentWithPermissionCheckIfNeeded()V

    return-void
.end method

.method private logPermissionresults([Ljava/lang/String;[I)V
    .locals 6

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 148
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 149
    aget-object v2, p1, v1

    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1c

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_0

    goto/16 :goto_3

    .line 152
    :cond_0
    aget-object v2, p1, v1

    const-string v4, "android.permission.CALL_PHONE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    goto :goto_3

    .line 155
    :cond_1
    aget v2, p2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 156
    :goto_1
    aget-object v4, p1, v1

    const-string v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, p1, v1

    const-string v5, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/telguarder/features/main/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 157
    :goto_2
    aget-object v4, p1, v1

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUidWasRandom()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->upgradeUid(Landroid/content/Context;)V

    :cond_4
    if-nez v2, :cond_5

    .line 160
    aget-object v4, p1, v1

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 161
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;)V

    .line 163
    :cond_5
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v4

    aget-object v5, p1, v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v5, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendRuntimePermissionReqResult(Ljava/lang/String;ZZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static openMainActivity(Landroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x20000

    .line 101
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private performCircularProgressButtonClick()V
    .locals 3

    .line 704
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getAnalyzeUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->analyzePageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/main/MainActivity;->animStartTime:J

    .line 707
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->saveChangesToSharedPreferences()V

    .line 708
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->startAnimation()V

    .line 709
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->blurPageForAnalyze()V

    .line 710
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeTitle:Landroid/widget/TextView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 711
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->analyzePageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity;->preloadAnalyzeWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    invoke-virtual {v0, p0, v1, v2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V

    :cond_0
    return-void
.end method

.method private requestIgnoreBatteryOptimisations()V
    .locals 4

    .line 209
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->batteryOptimisationsIgnored(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/telguarder/helpers/ui/DialogModel;->dialogModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/ui/DialogModel;

    move-result-object v0

    .line 211
    sget-object v1, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    .line 212
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->positiveText:Ljava/lang/String;

    .line 213
    new-instance v1, Lcom/telguarder/features/main/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/main/MainActivity$2;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    .line 231
    invoke-static {v0}, Lcom/telguarder/helpers/ui/DialogHelper;->showAlertDialog(Lcom/telguarder/helpers/ui/DialogModel;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->checkForFirmwareSpecificBlockers(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private resetActivity()V
    .locals 4

    .line 362
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 363
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    .line 364
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-direct {p0, v0}, Lcom/telguarder/features/main/MainActivity;->hideKeypad(Landroid/widget/EditText;)V

    .line 366
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->hideAnalyzeEditBox()V

    .line 367
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->deBlurPageFromAnalyze()V

    .line 369
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->reset()V

    .line 370
    iput-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    .line 371
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetCallListButton()V

    .line 372
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetTrendingButton()V

    .line 373
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSpamCallButton()V

    .line 374
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetBlockListButton()V

    .line 375
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSettingsButton()V

    return-void
.end method

.method private resetBlockListButton()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mBlockListButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mBlockListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private resetCallListButton()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mCallListButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mCallListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private resetSettingsButton()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSettingsButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private resetSpamCallButton()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSpamCallsButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSpamCallsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private resetTrendingButton()V
    .locals 2

    .line 548
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 549
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTrendingButton:Landroid/widget/ImageButton;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTrendingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    return-void
.end method

.method private saveChangesToSharedPreferences()V
    .locals 2

    .line 584
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveAnalyzedNumber(Ljava/lang/String;)V

    return-void
.end method

.method private setupNumberIfAvailable()V
    .locals 5

    .line 560
    invoke-static {p0}, Lcom/telguarder/helpers/common/AppUtil;->getLastClipBoardEntry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 561
    iput-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    .line 562
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-static {v0}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->wasNumberAnalyzedBefore(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getLastIncomingLookedupNumber()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v2

    iget-object v4, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/telguarder/helpers/preferences/PreferencesManager;->wasNumberAnalyzedBefore(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v0, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager$LastLookedupNumber;->number:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeTitle:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 574
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<var>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</var> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupViews()V
    .locals 2

    const v0, 0x7f080093

    .line 380
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    .line 381
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onAnalyzeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 382
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onAnalyzeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f080111

    .line 385
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    .line 386
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 387
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0802a1

    .line 389
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeTitle:Landroid/widget/TextView;

    const v0, 0x7f08017c

    .line 390
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mRootLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08005f

    .line 391
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0802a9

    .line 392
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTopLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080082

    .line 393
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTopBlurredView:Landroid/widget/ImageView;

    const v0, 0x7f080098

    .line 394
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080081

    .line 395
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mButtonBlurredView:Landroid/widget/ImageView;

    const v0, 0x7f080096

    .line 397
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mCallListButton:Landroid/widget/ImageButton;

    .line 398
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onCallListTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08009a

    .line 400
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSpamCallsButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onSpamCallTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080095

    .line 403
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mBlockListButton:Landroid/widget/ImageButton;

    .line 404
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onBlockListTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f08009b

    .line 406
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mTrendingButton:Landroid/widget/ImageButton;

    .line 407
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onTrendingTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080099

    .line 409
    invoke-virtual {p0, v0}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mSettingsButton:Landroid/widget/ImageButton;

    .line 410
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->onSettingsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showAnalyzeEditBox()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setVisibility(I)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->numberToAnalyze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->setSelection(I)V

    .line 668
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->requestFocus()Z

    return-void
.end method

.method private showKeypad(Landroid/widget/EditText;)V
    .locals 3

    .line 673
    new-instance v0, Lcom/telguarder/features/main/MainActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/main/MainActivity$14;-><init>(Lcom/telguarder/features/main/MainActivity;Landroid/widget/EditText;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private systemAlertPermCheck()V
    .locals 4

    .line 178
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->isLookupBlockerCheckNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->requestIgnoreBatteryOptimisations()V

    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/telguarder/helpers/ui/DialogModel;->dialogModelOfTitleAndMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/telguarder/helpers/ui/DialogModel;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/telguarder/helpers/ui/DialogModel$DialogType;->POSITIVE:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->dialogType:Lcom/telguarder/helpers/ui/DialogModel$DialogType;

    .line 189
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->positiveText:Ljava/lang/String;

    .line 190
    new-instance v1, Lcom/telguarder/features/main/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/main/MainActivity$1;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    iput-object v1, v0, Lcom/telguarder/helpers/ui/DialogModel;->dialogEventListener:Lcom/telguarder/helpers/ui/DialogEventListener;

    .line 200
    invoke-static {v0}, Lcom/telguarder/helpers/ui/DialogHelper;->showAlertDialog(Lcom/telguarder/helpers/ui/DialogModel;)V

    return-void
.end method


# virtual methods
.method public initContent()V
    .locals 1

    .line 142
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->initPhoneEventLogManager(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onResume$0$MainActivity()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->setupNumberIfAvailable()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 323
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    invoke-static {p0, p1}, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->onActivityResult(Lcom/telguarder/features/main/MainActivity;I)V

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 326
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [I

    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    aput p2, v0, p3

    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/main/MainActivity;->logPermissionresults([Ljava/lang/String;[I)V

    .line 327
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->requestIgnoreBatteryOptimisations()V

    goto :goto_1

    :cond_1
    const/16 v1, 0x85f

    if-ne p1, v1, :cond_4

    .line 328
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    .line 329
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/main/MainActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v1, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 331
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [I

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    aput p2, v2, p3

    invoke-direct {p0, v1, v2}, Lcom/telguarder/features/main/MainActivity;->logPermissionresults([Ljava/lang/String;[I)V

    .line 332
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->openCustomSettingsPage(Landroid/content/Context;Z)V

    goto :goto_1

    .line 334
    :cond_4
    sget-object p2, Lcom/telguarder/features/main/MainActivity$16;->$SwitchMap$com$telguarder$helpers$ui$UiHelper$PageType:[I

    invoke-static {p1}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->valueOf(I)Lcom/telguarder/helpers/ui/UiHelper$PageType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    .line 354
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetActivity()V

    goto :goto_1

    .line 351
    :pswitch_0
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetTrendingButton()V

    goto :goto_1

    .line 348
    :pswitch_1
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSpamCallButton()V

    goto :goto_1

    .line 345
    :pswitch_2
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetSettingsButton()V

    goto :goto_1

    .line 342
    :pswitch_3
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetCallListButton()V

    goto :goto_1

    .line 339
    :pswitch_4
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetBlockListButton()V

    goto :goto_1

    .line 336
    :pswitch_5
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetActivity()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->isAnimating()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_1

    .line 314
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetActivity()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x7f0b0027

    .line 109
    invoke-virtual {p0, p1}, Lcom/telguarder/features/main/MainActivity;->setContentView(I)V

    const p1, 0x7f080098

    .line 110
    invoke-virtual {p0, p1}, Lcom/telguarder/features/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 111
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->setupViews()V

    .line 112
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraOpenPage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/telguarder/helpers/ui/UiHelper$PageType;

    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpen:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    .line 113
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pageToOpenParameter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpenParameter:Ljava/lang/String;

    return-void

    .line 108
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 306
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 307
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->dispose()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeButton:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->isAnimating()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-ne v0, v1, :cond_1

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->resetActivity()V

    :cond_1
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-static {}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->getInstance()Lcom/telguarder/features/userConsentHandling/TcfConsentManager;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/main/-$$Lambda$MainActivity$z3AATeTtNWI687agd7baU0K0lNk;

    invoke-direct {v0, p0}, Lcom/telguarder/features/main/-$$Lambda$MainActivity$z3AATeTtNWI687agd7baU0K0lNk;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/telguarder/features/userConsentHandling/TcfConsentManager;->requestConsent(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 172
    invoke-static {p0, p1, p3}, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/telguarder/features/main/MainActivity;I[I)V

    .line 173
    invoke-direct {p0, p2, p3}, Lcom/telguarder/features/main/MainActivity;->logPermissionresults([Ljava/lang/String;[I)V

    .line 174
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->systemAlertPermCheck()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 263
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 264
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 265
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpen:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpenParameter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/telguarder/features/main/MainActivity;->automaticPageOpen(Lcom/telguarder/helpers/ui/UiHelper$PageType;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/telguarder/features/main/MainActivity;->pageToOpen:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/telguarder/features/main/MainActivity;->showAnalyzeEditBox()V

    .line 271
    iget-object v0, p0, Lcom/telguarder/features/main/MainActivity;->mAnalyzeEditText:Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeEditText;

    invoke-direct {p0, v0}, Lcom/telguarder/features/main/MainActivity;->showKeypad(Landroid/widget/EditText;)V

    goto :goto_0

    .line 273
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/main/-$$Lambda$MainActivity$4g3Zu59N9WUicMHs6d4bj0Ik2VI;

    invoke-direct {v1, p0}, Lcom/telguarder/features/main/-$$Lambda$MainActivity$4g3Zu59N9WUicMHs6d4bj0Ik2VI;-><init>(Lcom/telguarder/features/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 250
    sput-boolean v0, Lcom/telguarder/features/main/MainActivity;->active:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 256
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 257
    sput-boolean v0, Lcom/telguarder/features/main/MainActivity;->active:Z

    return-void
.end method

.method systemAlertWindow()V
    .locals 0

    return-void
.end method
