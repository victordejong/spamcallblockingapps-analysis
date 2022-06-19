.class public Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LastPhoneCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;
    }
.end annotation


# static fields
.field static active:Z = false

.field private static mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent; = null

.field private static mCallTimeStamp:Ljava/lang/Long; = null

.field private static mCallType:I = 0x0

.field private static mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity; = null

.field private static mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult; = null

.field public static mPhoneNumberFromCall:Ljava/lang/String; = null

.field private static mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData; = null

.field static mShowSpam:Z = true

.field private static mWasTestNumber:Ljava/lang/Boolean;


# instance fields
.field private adDebugClickCount:I

.field private adDebuglongClickDuration:I

.field private isAdDebugLongPress:Z

.field private isInFront:Z

.field private mAddressTextView:Landroid/widget/TextView;

.field private mAdvertAfterUnlock:Z

.field private mBack:Landroid/view/View;

.field private mBlockCallTextView:Landroid/widget/TextView;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mCSViewAdapter:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

.field private mContactCompanyNameTextView:Landroid/widget/TextView;

.field private mContactNameTextView:Landroid/widget/TextView;

.field private mContactPhoneNumberLayout:Landroid/widget/LinearLayout;

.field private mContactPhoneNumberTextView:Landroid/widget/TextView;

.field private mFirstRecyclerlayoutErrorHandled:Z

.field private mHeaderImage:Landroid/widget/ImageView;

.field private mMoreInfoButtonLinearLayout:Landroid/widget/LinearLayout;

.field private mMoreInfoButtonText:Landroid/widget/Button;

.field private mMoreInfoUrl:Ljava/lang/String;

.field private mNotificationNumberInfo:Ljava/lang/String;

.field public mPostcallStartTimeStamp:Ljava/lang/Long;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSaveContactButtonLinearLayout:Landroid/widget/LinearLayout;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUnblockCallTextView:Landroid/widget/TextView;

.field private final preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

.field private ratingNeeded:Z

.field private stoppedByUser:Z

.field private userInteractionTime:J

.field public wasCallBackButtonPressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->ratingNeeded:Z

    .line 86
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    .line 88
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAdvertAfterUnlock:Z

    const-wide/16 v1, 0x0

    .line 90
    iput-wide v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->userInteractionTime:J

    .line 91
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasCallBackButtonPressed:Z

    const/16 v1, 0x7d0

    .line 112
    iput v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebuglongClickDuration:I

    .line 113
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebugClickCount:I

    .line 114
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isAdDebugLongPress:Z

    .line 116
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mFirstRecyclerlayoutErrorHandled:Z

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPostcallStartTimeStamp:Ljava/lang/Long;

    const-string v0, ""

    .line 118
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    .line 571
    new-instance v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$2;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 77
    sget v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    return v0
.end method

.method static synthetic access$1000()Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    .line 77
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;
    .locals 1

    .line 77
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->handleResult(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isPassOrPinSet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAdvertAfterUnlock:Z

    return p0
.end method

.method static synthetic access$302(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAdvertAfterUnlock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->resetMoreinfoButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mUnblockCallTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)Landroid/widget/TextView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBlockCallTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Lcom/telguarder/features/rateAndFeedback/ReportResult;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->removeNumberFromBlockedList(Lcom/telguarder/features/rateAndFeedback/ReportResult;Ljava/lang/String;)V

    return-void
.end method

.method private applyHeaderValues()V
    .locals 3

    const v0, 0x7f08015f

    .line 484
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f080166

    .line 485
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 486
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mHeaderImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$P9_icp81RUwitol3EYo31IsFrQg;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$P9_icp81RUwitol3EYo31IsFrQg;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mHeaderImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$ja7PeEbyHeLYnsoRsco4U5FcPRY;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$ja7PeEbyHeLYnsoRsco4U5FcPRY;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private applyThemeValues()V
    .locals 7

    const v0, 0x7f1101d8

    .line 431
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setTheme(I)V

    const v0, 0x7f080089

    .line 432
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZZ)V

    return-void
.end method

.method private getCustomLayoutManager()Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;
    .locals 2

    .line 467
    new-instance v0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;

    invoke-direct {v0, p0}, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$U6h-C9Mt38dziHFKndMxampCG2s;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$U6h-C9Mt38dziHFKndMxampCG2s;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    iput-object v1, v0, Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;->mCustomCallBack:Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller$CustomCallBack;

    return-object v0
.end method

.method public static getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;
    .locals 1

    .line 127
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    return-object v0
.end method

.method private static handleResult(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->updateContentWith(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    goto :goto_0

    .line 195
    :cond_0
    sput-object p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 196
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPhoneEventByNumber(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p0

    sput-object p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    :cond_1
    :goto_0
    return-void
.end method

.method private initListSections()V
    .locals 3

    const v0, 0x7f080208

    .line 459
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 460
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    sget v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCSViewAdapter:Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    .line 461
    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 462
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getCustomLayoutManager()Lcom/telguarder/helpers/ui/LinearLayoutManagerWithSmoothScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0800a6

    .line 442
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBack:Landroid/view/View;

    const v0, 0x7f0800a8

    .line 443
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mHeaderImage:Landroid/widget/ImageView;

    const v0, 0x7f080163

    .line 444
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    const v0, 0x7f08015e

    .line 445
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const v0, 0x7f080165

    .line 446
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080164

    .line 447
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberTextView:Landroid/widget/TextView;

    const v0, 0x7f080159

    .line 448
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const v0, 0x7f080162

    .line 449
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0802bf

    .line 450
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    const v0, 0x7f080167

    .line 451
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mSaveContactButtonLinearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0802bd

    .line 452
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBlockCallTextView:Landroid/widget/TextView;

    const v0, 0x7f0802c1

    .line 453
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mUnblockCallTextView:Landroid/widget/TextView;

    const v0, 0x7f08015b

    .line 454
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static isInstantiated()Z
    .locals 1

    .line 122
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPassOrPinSet()Z
    .locals 2

    const-string v0, "keyguard"

    .line 396
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$null$2()V
    .locals 1

    .line 474
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 208
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isPresented()Z

    move-result p0

    if-nez p0, :cond_0

    .line 209
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 211
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static synthetic lambda$openLastPhoneCall$0(Landroid/content/Context;)V
    .locals 6

    .line 171
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    move-result-object v0

    sget-object v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    new-instance v3, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$1;

    invoke-direct {v3}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$1;-><init>()V

    .line 186
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    move-result-object v1

    sget v4, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    invoke-virtual {v1, v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getCallTypeByCallLogCallType(I)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->lookupResultsForPhoneNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$PhoneNumberLookupCallbackListener;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;Z)V

    return-void
.end method

.method private loadCallLogWithResults(Z)V
    .locals 4

    .line 723
    sget-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mShowSpam:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityRed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    .line 725
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getSpamResult(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    sget v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    invoke-static {p1, v0, v1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->openLastPhoneCallSpam(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;I)V

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 727
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isPresented()Z

    move-result p1

    if-nez p1, :cond_3

    .line 728
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isPassOrPinSet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 729
    iput-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAdvertAfterUnlock:Z

    goto :goto_0

    .line 731
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPostcallStartTimeStamp:Ljava/lang/Long;

    .line 732
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onLoadAd(Landroid/content/Context;Z)V

    .line 733
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->stopPreloadKeepAlive()V

    .line 736
    :cond_3
    :goto_0
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setBlockButtonState(Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamPersonal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 739
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showPersonalSpam()V

    goto :goto_1

    .line 741
    :cond_4
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    if-eqz p1, :cond_5

    const-string p1, ""

    .line 742
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    .line 743
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$5;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupResult$DisplayType:[I

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getDisplayType()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 750
    :pswitch_0
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showUnknownNumber()V

    goto :goto_1

    .line 749
    :pswitch_1
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showPerson()V

    goto :goto_1

    .line 748
    :pswitch_2
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showPersonWithCompany()V

    goto :goto_1

    .line 747
    :pswitch_3
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompany()V

    goto :goto_1

    .line 746
    :pswitch_4
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showContactWithPerson(Lcom/telguarder/helpers/contact/Contact;)V

    goto :goto_1

    .line 745
    :pswitch_5
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showContactWithCompany()V

    goto :goto_1

    .line 744
    :pswitch_6
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showContact()V

    goto :goto_1

    .line 753
    :cond_5
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showUnknownNumber()V

    .line 756
    :goto_1
    sget p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setCallTypeImage(I)V

    .line 757
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setCallTime()V

    .line 758
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mSaveContactButtonLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
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

.method public static openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;Z)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    .line 132
    invoke-static/range {v0 .. v6}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;JLjava/lang/Long;Z)V

    return-void
.end method

.method public static openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;JLjava/lang/Long;Z)V
    .locals 3

    .line 137
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Open last call task error"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 139
    :goto_0
    sput-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    .line 141
    :cond_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 145
    :cond_1
    sput-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mWasTestNumber:Ljava/lang/Boolean;

    .line 146
    sput-boolean p6, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mShowSpam:Z

    .line 147
    sput-object p5, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallTimeStamp:Ljava/lang/Long;

    .line 148
    invoke-static {p0, p1, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    .line 149
    sput-object p2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    long-to-int p4, p3

    .line 150
    sput p4, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p2, p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPhoneEventByNumber(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    :cond_2
    sput-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 153
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 154
    sget-boolean p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mShowSpam:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityRed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 155
    :cond_3
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    sget-object p2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getSpamResult(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    sget p2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallType:I

    invoke-static {p0, p1, p2}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->openLastPhoneCallSpam(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;I)V

    return-void

    .line 159
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    instance-of p2, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez p2, :cond_5

    const p2, 0x14808000

    .line 161
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/high16 p2, 0x10000000

    .line 166
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 170
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasData()Z

    move-result p1

    if-nez p1, :cond_7

    .line 171
    :cond_6
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$__baG7xveqpCpwwcboMhLUi6088;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$__baG7xveqpCpwwcboMhLUi6088;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_7
    return-void
.end method

.method private registerScreenStateReceiver()V
    .locals 2

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$ScreenStateReceiver;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    iput-object v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Last call activity screen_off receiver register error"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private removeNumberFromBlockedList(Lcom/telguarder/features/rateAndFeedback/ReportResult;Ljava/lang/String;)V
    .locals 1

    .line 692
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 695
    :cond_0
    iget-object p1, p1, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 696
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    .line 699
    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/telguarder/helpers/contact/ContactUtils;->isNumberTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private resetMoreinfoButton()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 594
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 595
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    const v2, 0x7f050123

    invoke-static {p0, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 596
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 597
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private setBackClickListener()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBack:Landroid/view/View;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$b2iSpAsjsZFixw6rN-sSnxpD2tc;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$b2iSpAsjsZFixw6rN-sSnxpD2tc;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setBlockButtonState(Ljava/lang/String;)V
    .locals 3

    .line 712
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isNumberBlocked(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 713
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mUnblockCallTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBlockCallTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mUnblockCallTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBlockCallTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setBlockCallLayoutListener()V
    .locals 2

    .line 658
    new-instance v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$gFqh1zyBh-fy6b0mQ3BqvUVjDBM;

    invoke-direct {v0, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$gFqh1zyBh-fy6b0mQ3BqvUVjDBM;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    const v1, 0x7f0802bd

    .line 686
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802c1

    .line 687
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCallBackLayoutListener()V
    .locals 2

    const v0, 0x7f0802be

    .line 539
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$2GHEBlrhQnBmjwmE8iT6BeljobA;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$2GHEBlrhQnBmjwmE8iT6BeljobA;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCallTime()V
    .locals 5

    .line 925
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallTimeStamp:Ljava/lang/Long;

    const v1, 0x7f080161

    if-nez v0, :cond_0

    .line 926
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 928
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 929
    sget-object v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mCallTimeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 930
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "d.MMM HH:mm"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setCallTypeImage(I)V
    .locals 3

    const v0, 0x7f08015d

    .line 902
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    const v2, 0x7f070072

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const-string p1, "Unhandled call actorType!"

    .line 917
    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f070073

    .line 914
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f070071

    .line 911
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 908
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f070070

    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setLayout()V
    .locals 1

    const v0, 0x7f0b0025

    .line 437
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setContentView(I)V

    return-void
.end method

.method private setMoreInfoLayoutListener()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$UZ6T7xIeQQz772qasCQaF0IwP_A;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setSaveContactLayoutListener()V
    .locals 2

    const v0, 0x7f0802c0

    .line 603
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$khDhw5e76MLN7sZ1BIMNnsDMCww;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$khDhw5e76MLN7sZ1BIMNnsDMCww;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setViewListeners()V
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setBackClickListener()V

    .line 526
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setCallBackLayoutListener()V

    .line 527
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setMoreInfoLayoutListener()V

    .line 528
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setSaveContactLayoutListener()V

    .line 529
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setBlockCallLayoutListener()V

    return-void
.end method

.method private showAdDebugInfoScreen()V
    .locals 3

    .line 512
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    .line 513
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v0, 0x1

    .line 514
    sput-boolean v0, Lcom/telguarder/features/advertisements/AdInfoActivity;->adDebugInfoEnabled:Z

    .line 515
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/telguarder/features/advertisements/AdInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 516
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    invoke-virtual {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 518
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop(Z)V

    return-void
.end method

.method private showCompany()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 859
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 860
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    :goto_0
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    return-void
.end method

.method private showCompanyName(Ljava/lang/String;)V
    .locals 3

    .line 764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 767
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 768
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const v0, 0x7f050100

    invoke-static {p0, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 769
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 774
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const v0, 0x7f050103

    invoke-static {p0, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method private showContact()V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    .line 822
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showContactWithCompany()V
    .locals 7

    const-string v0, "[^A-Za-z0-9]"

    const-string v1, ""

    .line 828
    iget-object v2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 830
    :try_start_0
    sget-object v3, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 831
    sget-object v3, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v3

    iget-object v3, v3, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 832
    sget-object v4, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v4}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 834
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v4, v6, :cond_0

    if-ge v5, v4, :cond_2

    goto :goto_0

    :cond_0
    if-ge v5, v6, :cond_1

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    .line 836
    :cond_2
    :goto_1
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    invoke-direct {p0, v1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    goto :goto_2

    .line 839
    :cond_3
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    goto :goto_2

    .line 842
    :cond_4
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 845
    :catch_0
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 847
    :goto_2
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    .line 848
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 849
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 852
    :cond_5
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private showContactWithPerson(Lcom/telguarder/helpers/contact/Contact;)V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, ""

    .line 885
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 886
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 887
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 890
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    :goto_1
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    return-void
.end method

.method private showPerson()V
    .locals 1

    const/4 v0, 0x0

    .line 897
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showContactWithPerson(Lcom/telguarder/helpers/contact/Contact;)V

    return-void
.end method

.method private showPersonWithCompany()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 879
    :goto_0
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mNotificationNumberInfo:Ljava/lang/String;

    return-void
.end method

.method private showPersonalSpam()V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1, p0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getSpamTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->hasCompany()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 807
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 814
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showUnknownNumber()V
    .locals 4

    .line 781
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getUnknownNumberWithRegionDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    .line 784
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showCompanyName(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactNameTextView:Landroid/widget/TextView;

    const v2, 0x7f100181

    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/telguarder/helpers/contact/ContactUtils;->getHiddenNumberDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactPhoneNumberLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const v2, 0x7f050100

    invoke-static {p0, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mContactCompanyNameTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 793
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 794
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 795
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    const v3, 0x7f1000b7

    invoke-static {p0, v3}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mAddressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private unregisterScreenStateReceiver()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Last call activity screen_off receiver unregister error"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 966
    sget-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->active:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 962
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInFront:Z

    return v0
.end method

.method public isVisibleAndNeedsUpdate()Z
    .locals 1

    .line 958
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInFront:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$applyHeaderValues$5$LastPhoneCallActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 488
    iput-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isAdDebugLongPress:Z

    .line 489
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$sGPSqL2HXVz1wy-w1hHOB1Gbv8M;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$sGPSqL2HXVz1wy-w1hHOB1Gbv8M;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    iget v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebuglongClickDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 495
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isAdDebugLongPress:Z

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$applyHeaderValues$7$LastPhoneCallActivity(Landroid/view/View;)V
    .locals 3

    .line 500
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Dx8pxRhEFaOQJxLy70kksBA0Ok0;

    invoke-direct {v0, p0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Dx8pxRhEFaOQJxLy70kksBA0Ok0;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    iget p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebugClickCount:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 502
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebugClickCount:I

    .line 503
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showAdDebugInfoScreen()V

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    .line 505
    iput p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebugClickCount:I

    :goto_0
    return-void
.end method

.method public synthetic lambda$getCustomLayoutManager$3$LastPhoneCallActivity(Ljava/lang/Exception;)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Recyclerview layout children error: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 471
    :try_start_0
    iget-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mFirstRecyclerlayoutErrorHandled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 472
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mFirstRecyclerlayoutErrorHandled:Z

    const-string p1, " attempt to fix with a full refresh notification..\n"

    .line 473
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 474
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO-YQ;->INSTANCE:Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO-YQ;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public synthetic lambda$null$4$LastPhoneCallActivity()V
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isAdDebugLongPress:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->showAdDebugInfoScreen()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$6$LastPhoneCallActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->adDebugClickCount:I

    return-void
.end method

.method public synthetic lambda$setBackClickListener$8$LastPhoneCallActivity(Landroid/view/View;)V
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$setBlockCallLayoutListener$12$LastPhoneCallActivity(Landroid/view/View;)V
    .locals 2

    .line 659
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 660
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isNumberBlocked(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mUnblockCallTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 661
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    new-instance v1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$4;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->removeBlockedNumber(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    goto :goto_0

    .line 674
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_1

    const-string v1, "extraKeyPhoneEvent"

    .line 676
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 677
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extraKeyPhoneOwner"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    :cond_1
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    const-string v1, "extraKeyPhoneNumber"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 681
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$setCallBackLayoutListener$9$LastPhoneCallActivity(Landroid/view/View;)V
    .locals 1

    .line 540
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 541
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPostCallCallBackAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 542
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasCallBackButtonPressed:Z

    .line 543
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    .line 544
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->callNumber(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/telguarder/helpers/contact/BackendLogEntry;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$setMoreInfoLayoutListener$10$LastPhoneCallActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 553
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 554
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getAnalyzeUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoUrl:Ljava/lang/String;

    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 557
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    const p2, 0x7f05012b

    invoke-static {p0, p2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 558
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    invoke-virtual {p1, p0, p2, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 561
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object p2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-eq p1, p2, :cond_1

    .line 562
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setSelected(Z)V

    .line 563
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mMoreInfoButtonText:Landroid/widget/Button;

    const p2, 0x7f050123

    invoke-static {p0, p2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public synthetic lambda$setSaveContactLayoutListener$11$LastPhoneCallActivity(Landroid/view/View;)V
    .locals 0

    .line 604
    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    if-nez p1, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    new-instance p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$3;

    invoke-direct {p1, p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity$3;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;)V

    .line 651
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    .line 652
    invoke-static {p0, p1}, Lcom/telguarder/features/sharing/ShareHelper;->startContactsAppWithShareable(Landroid/app/Activity;Lcom/telguarder/features/sharing/Shareable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$updateContentWith$13$LastPhoneCallActivity(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    .line 938
    sput-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mLastLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 939
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mPhoneNumberFromCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPhoneEventByNumber(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    sput-object p1, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mBasePhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    const/4 p1, 0x0

    .line 940
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->loadCallLogWithResults(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setTurnScreenOn(Z)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 267
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v0, 0x1

    .line 367
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->cleanAdNetworkFlowDebugInfo(Z)V

    .line 368
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasTestNumber()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/telguarder/features/advertisements/AdvertManager;->updateAdvertCache(Landroid/content/Context;Z)V

    .line 369
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;)V

    .line 370
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    .line 371
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 206
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    .line 207
    sget-object v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;->INSTANCE:Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 216
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setLayout()V

    .line 226
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->initViews()V

    .line 227
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->applyThemeValues()V

    .line 228
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->applyHeaderValues()V

    .line 229
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->setViewListeners()V

    .line 230
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->initListSections()V

    .line 231
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->registerScreenStateReceiver()V

    .line 232
    invoke-static {}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->getInstance()Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->shouldShowRateDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->ratingNeeded:Z

    goto :goto_1

    .line 235
    :cond_2
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->prepareForPostcallActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 237
    :goto_1
    iput-boolean p1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasCallBackButtonPressed:Z

    .line 238
    sput-object p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    return-void

    .line 205
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 350
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->unregisterScreenStateReceiver()V

    .line 340
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 343
    sput-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mInstance:Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    .line 344
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->onBackPressed()V

    .line 361
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 293
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInFront:Z

    .line 295
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 301
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInFront:Z

    .line 303
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 304
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->resetMoreinfoButton()V

    .line 306
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 274
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    goto :goto_0

    .line 278
    :cond_0
    sget-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->active:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 279
    sput-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->active:Z

    .line 280
    iget-boolean v1, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->ratingNeeded:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->loadCallLogWithResults(Z)V

    .line 282
    invoke-static {}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->getInstance()Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->showRateDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 283
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->ratingNeeded:Z

    goto :goto_0

    .line 285
    :cond_1
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->loadCallLogWithResults(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 312
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 313
    sput-boolean v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->active:Z

    .line 314
    iget-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isPassOrPinSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mPostcallAdvertProvider:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->name:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertCancelAction(Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->userInteractionTime:J

    .line 378
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserInteraction()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 5

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->userInteractionTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 385
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->isAdClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->wasTestNumber()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->updateAdvertCache(Landroid/content/Context;Z)V

    .line 387
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/helpers/location/LocationHelper;->updateCoarseLocation(Landroid/content/Context;)V

    .line 388
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onHomePressed()V

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stoppedByUser:Z

    .line 391
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInFront:Z

    .line 328
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->unregisterScreenStateReceiver()V

    .line 329
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 330
    :cond_0
    invoke-static {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 331
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->onStop()V

    .line 332
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->finish()V

    :cond_1
    return-void
.end method

.method public updateContentWith(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 937
    new-instance v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$PvsmJkuOqxHd6KPvCTicvKCaMzU;-><init>(Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public wasTestNumber()Z
    .locals 1

    .line 948
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mWasTestNumber:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 949
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mLastNumberWasTestNumber:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mWasTestNumber:Ljava/lang/Boolean;

    .line 951
    :cond_0
    sget-object v0, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->mWasTestNumber:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
