.class public Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;


# instance fields
.field private final closeButtonClickListener:Landroid/view/View$OnClickListener;

.field private mAutomaticCloseHandler:Landroid/os/Handler;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mBottomLayoutSecure:Landroid/widget/LinearLayout;

.field private mCallId:Ljava/lang/String;

.field private mCallType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCloseButtonSecure:Landroid/widget/ImageView;

.field private mFloatingView:Landroid/view/View;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLogo:Landroid/widget/ImageView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberView1:Landroid/widget/TextView;

.field private mPhoneNumberView2:Landroid/widget/TextView;

.field private mPhoneNumberView3:Landroid/widget/TextView;

.field private mPhoneNumberViewSecure:Landroid/widget/TextView;

.field private mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mSecurityLevelProgressBar:Landroid/widget/ProgressBar;

.field private mSecurityLevelText:Landroid/widget/TextView;

.field private mTitleDetail:Landroid/widget/TextView;

.field private mTitleSeparator:Landroid/widget/LinearLayout;

.field private mTitleText:Landroid/widget/TextView;

.field private mTitleTextSecureLine1:Landroid/widget/TextView;

.field private mTitleTextSecureLine2:Landroid/widget/TextView;

.field private mTooltipView:Lcom/venmo/view/TooltipView;

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTopLayoutSecure:Landroid/widget/LinearLayout;

.field private final widgetTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$4;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$4;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->closeButtonClickListener:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->widgetTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hideWidget(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/venmo/view/TooltipView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTooltipView:Lcom/venmo/view/TooltipView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->saveWidgetPosition(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getWm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayoutSecure:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayoutSecure:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButtonSecure:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView1:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/ImageView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/LinearLayout;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleSeparator:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleDetail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetWithDcyIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->results(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    return-void
.end method

.method static synthetic access$302(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->noResults(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->lookupFailed(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->lookupCancelled(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->lookupNotAllowed(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mAutomaticCloseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mAutomaticCloseHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setupViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setupListeners()V

    return-void
.end method

.method static synthetic access$700(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetLoadingState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showHiddenNumber(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->startLookup(Landroid/content/Context;)V

    return-void
.end method

.method private addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/telguarder/helpers/contact/ContactUtils;->getRegionDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 810
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".*\\d.*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<var>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</var>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 811
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p1, " ("

    .line 813
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private changeWidgetState(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;IIII)V
    .locals 14

    .line 424
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;-><init>()V

    sput-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    .line 427
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p5

    move/from16 v12, p7

    move-object/from16 v13, p6

    invoke-direct/range {v2 .. v13}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$7;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;ILandroid/text/Spanned;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private changeWidgetStateSecure(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 509
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;-><init>()V

    sput-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    .line 512
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$3bkf_x6ZjcRUuTVXbynxqQwoaYU;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private displayDataOnCallWidget(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 2

    .line 724
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getSpamResult(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getRegionDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showSpamData(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 728
    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getName(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->securityLevel()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetSpamSecureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getAppropriateWidgetGravity(Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)I
    .locals 4

    .line 273
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$10;->$SwitchMap$com$telguarder$features$phoneCallWidget$CallWidgetLocation:[I

    invoke-virtual {p2}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/16 v1, 0x50

    const/16 v2, 0x10

    const/16 v3, 0x30

    if-eq p2, v0, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    return v3

    .line 285
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCallWidgetLocationCustomGravity()I

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    const-string p2, "keyguard"

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-nez p1, :cond_4

    return v3

    .line 279
    :cond_4
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    .line 280
    :cond_5
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    sget-object p2, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/16 v1, 0x30

    :cond_7
    return v1
.end method

.method private getCompanyOnly(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;
    .locals 2

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    const-string v1, ", "

    invoke-direct {p0, p1, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContactOnly(Lcom/telguarder/helpers/contact/Contact;)Ljava/lang/String;
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContactWithCompany(Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "[^A-Za-z0-9]"

    const-string v2, "<b>"

    .line 775
    :try_start_0
    iget-object v3, p2, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 776
    iget-object v3, p2, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 777
    invoke-virtual {p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 779
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v1, v5, :cond_0

    if-ge v4, v1, :cond_2

    goto :goto_0

    :cond_0
    if-ge v4, v5, :cond_1

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 781
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 787
    :catch_0
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    const-string v1, ", "

    invoke-direct {p0, p1, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b><br>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
    .locals 2

    const-class v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;-><init>()V

    sput-object v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    .line 103
    :cond_0
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getName(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 754
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$10;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupResult$DisplayType:[I

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getDisplayType()Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 760
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getUnknown(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 759
    :pswitch_1
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getPersonOnly(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 758
    :pswitch_2
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p3

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getPersonWithCompany(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 757
    :pswitch_3
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getCompanyOnly(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 756
    :pswitch_4
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object p3

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getContactWithCompany(Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 755
    :pswitch_5
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getContactOnly(Lcom/telguarder/helpers/contact/Contact;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    const-string p1, ""

    return-object p1

    .line 763
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getUnknown(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPersonOnly(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    const-string v1, ", "

    invoke-direct {p0, p1, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPersonWithCompany(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;
    .locals 2

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    const-string v1, ", "

    invoke-direct {p0, p1, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b><br>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSecLevelDrawable(I)I
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    const p1, 0x7f070138

    return p1

    :cond_0
    const/16 v0, 0x28

    if-gt p1, v0, :cond_1

    const p1, 0x7f070139

    return p1

    :cond_1
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_2

    const p1, 0x7f07013a

    return p1

    :cond_2
    const/16 v0, 0x50

    if-gt p1, v0, :cond_3

    const p1, 0x7f07013b

    return p1

    :cond_3
    const p1, 0x7f070137

    return p1
.end method

.method private getSecLevelText(I)I
    .locals 2

    const v0, 0x7f100037

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x28

    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x3c

    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x50

    if-ge p1, v1, :cond_3

    return v0

    :cond_3
    const p1, 0x7f10002f

    return p1
.end method

.method private getSecLevelTitle(I)I
    .locals 2

    const v0, 0x7f100181

    const/16 v1, 0x14

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x28

    if-ge p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x3c

    const v1, 0x7f100182

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x50

    if-ge p1, v0, :cond_3

    return v1

    :cond_3
    const p1, 0x7f10002e

    return p1
.end method

.method private getSecurityPercentage(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 599
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_6

    .line 603
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lcom/telguarder/helpers/contact/ContactManager;->isPhonenumberInContactList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    .line 604
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getCallCountForNumber(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    if-eqz p2, :cond_1

    const/16 p1, 0x5f

    const/16 p2, 0x5f

    goto :goto_2

    :cond_1
    :goto_1
    const/16 p2, 0x5a

    goto :goto_2

    .line 606
    :cond_2
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getCallCountForNumber(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x55

    const/16 p2, 0x55

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x50

    const/16 p2, 0x50

    :cond_6
    :goto_2
    return p2
.end method

.method private getUnknown(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 803
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-static {p2}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p2, 0x7f10003d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, " ("

    .line 804
    invoke-direct {p0, p1, p2, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->addTitleCountryCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWm(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1

    const-string v0, "window"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    return-object p1
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 2

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private hideWidget(Landroid/content/Context;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 265
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during call widget hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 266
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getWm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error during call widget remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public static declared-synchronized isInstantiated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mInstance:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isWidgetShowNeeded(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)Z
    .locals 1

    .line 682
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 683
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isVisibleAndNeedsUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->updateContentWith(Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    .line 686
    :cond_0
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hideWidget(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private lookupCancelled(Landroid/content/Context;)V
    .locals 1

    .line 856
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendWidgetIsClosedLookupCancelAction()V

    .line 857
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hideWidget(Landroid/content/Context;)V

    return-void
.end method

.method private lookupFailed(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    const/4 p2, 0x0

    .line 842
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetShowNeeded(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f100091

    .line 843
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetErrorState(Landroid/content/Context;Landroid/text/Spanned;)V

    const/4 p2, 0x1

    .line 844
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private lookupNotAllowed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 868
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetShowNeeded(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10002d

    .line 869
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetErrorState(Landroid/content/Context;Landroid/text/Spanned;)V

    const/4 v0, 0x1

    .line 870
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private noResults(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 828
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetShowNeeded(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 829
    invoke-direct {p0, p1, v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getName(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetSpamSecureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private results(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-eqz v0, :cond_0

    .line 702
    iput-object p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 704
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->updateHistoryCache(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetShowNeeded(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->displayDataOnCallWidget(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V

    const/4 p2, 0x0

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private saveWidgetPosition(Landroid/content/Context;II)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$6;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;IILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setupListeners()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->widgetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->closeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButtonSecure:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->closeButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupViews(Landroid/content/Context;)V
    .locals 5

    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hideWidget(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ca

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const/16 v1, 0x8

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButton:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 160
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802eb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayout:Landroid/widget/LinearLayout;

    .line 161
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 162
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleText:Landroid/widget/TextView;

    .line 163
    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleSeparator:Landroid/widget/LinearLayout;

    .line 165
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleDetail:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLogo:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0800a9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/venmo/view/TooltipView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTooltipView:Lcom/venmo/view/TooltipView;

    .line 168
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v3, 0x7f0802e2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView1:Landroid/widget/TextView;

    .line 169
    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView2:Landroid/widget/TextView;

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802e4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberView3:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayoutSecure:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayoutSecure:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    .line 179
    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v2, 0x7f0802ea

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine2:Landroid/widget/TextView;

    .line 183
    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/telguarder/helpers/ui/FontManager;->getRegularTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 184
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v0, 0x7f08023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelProgressBar:Landroid/widget/ProgressBar;

    .line 187
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v0, 0x7f08023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelText:Landroid/widget/TextView;

    .line 188
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberViewSecure:Landroid/widget/TextView;

    .line 189
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    const v0, 0x7f0802df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButtonSecure:Landroid/widget/ImageView;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V
    .locals 2

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showHiddenNumber(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f100181

    .line 746
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1000b7

    .line 747
    invoke-static {p1, v0}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 748
    invoke-static {p1}, Lcom/telguarder/helpers/contact/ContactUtils;->getHiddenNumberDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetSpamWarningState(Landroid/content/Context;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V

    return-void
.end method

.method private showSpamData(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V
    .locals 7

    .line 734
    invoke-virtual {p2, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getSpamTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {p2, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getSpamMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 736
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v4}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    .line 738
    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetSpamWarningState(Landroid/content/Context;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    .line 740
    invoke-direct/range {v0 .. v6}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetSpamAlertState(Landroid/content/Context;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showTooltip(Landroid/content/Context;)V
    .locals 3

    .line 292
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->isCallWidgetTooltipNeeded(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTooltipView:Lcom/venmo/view/TooltipView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/venmo/view/TooltipView;->setVisibility(I)V

    .line 294
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getWidgetTooltipHideCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 295
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showWidgetErrorState(Landroid/content/Context;Landroid/text/Spanned;)V
    .locals 11

    .line 390
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f050123

    .line 393
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v7

    const v0, 0x7f050046

    .line 394
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v9, 0x7f070135

    const v10, 0x7f070132

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 390
    invoke-direct/range {v0 .. v10}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetState(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;IIII)V

    return-void
.end method

.method private showWidgetLoadingState(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 385
    invoke-direct {p0, p1, v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getName(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetStateSecure(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private showWidgetSpamAlertState(Landroid/content/Context;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V
    .locals 11

    move-object v1, p1

    const v0, 0x7f050131

    .line 416
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v7

    const v0, 0x7f05004a

    .line 417
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v8

    const v9, 0x7f070135

    const v10, 0x7f070133

    move-object v0, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    .line 415
    invoke-direct/range {v0 .. v10}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetState(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;IIII)V

    return-void
.end method

.method private showWidgetSpamSecureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetStateSecure(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private showWidgetSpamWarningState(Landroid/content/Context;Ljava/lang/String;Landroid/text/Spanned;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;)V
    .locals 11

    move-object v1, p1

    const v0, 0x7f050131

    .line 407
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v7

    const v0, 0x7f050119

    .line 408
    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v8

    const v9, 0x7f070136

    const v10, 0x7f070133

    move-object v0, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p2

    move-object v6, p3

    .line 406
    invoke-direct/range {v0 .. v10}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->changeWidgetState(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;IIII)V

    return-void
.end method

.method private showWidgetWithDcyIfNeeded(Landroid/content/Context;)V
    .locals 2

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;->openPermDcyActivity(Landroid/content/Context;)V

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidget(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method private startLookup(Landroid/content/Context;)V
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$8;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 653
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateHistoryCache(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;)V
    .locals 1

    .line 713
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getCompanyCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 716
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getPersonCall()Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    goto :goto_0

    .line 717
    :cond_1
    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 718
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;->getContact()Lcom/telguarder/helpers/contact/Contact;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->updateLastCallHistoryListItem(Landroid/content/Context;Lcom/telguarder/helpers/contact/Contact;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isWidgetVisible()Z
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$changeWidgetStateSecure$2$PhoneCallWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 513
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayoutSecure:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mBottomLayoutSecure:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCloseButtonSecure:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 520
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelText:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f10004f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, p2

    goto :goto_0

    :cond_0
    const-string v4, "?"

    :goto_0
    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "%s %s%%"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<var>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberViewSecure:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberViewSecure:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 527
    :goto_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumberViewSecure:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    .line 530
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "<<font color=\"#6c6c6c\" face=\"arial\">"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p4, 0x7f10002c

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".</font>"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine2:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 534
    :cond_2
    new-instance p3, Ljava/lang/Thread;

    new-instance p4, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$Rpd7Q-pieGdjK8D_wZjzK5cLUD8;

    invoke-direct {p4, p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$Rpd7Q-pieGdjK8D_wZjzK5cLUD8;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 546
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 548
    :goto_2
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTopLayoutSecure:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 549
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidgetWithDcyIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$null$0$PhoneCallWidget(ILandroid/content/Context;)V
    .locals 5

    .line 537
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelText:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f10004f

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s %s%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mSecurityLevelProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getSecLevelDrawable(I)I

    move-result v1

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font face=\"arial\"><b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getSecLevelTitle(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mTitleTextSecureLine2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font face=\"arial\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getSecLevelText(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$null$1$PhoneCallWidget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getSecurityPercentage(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 536
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$-MPVQM9gv5c93Izn9kecFEv1seA;

    invoke-direct {v1, p0, p2, p1}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneCallWidget$-MPVQM9gv5c93Izn9kecFEv1seA;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAutomaticCloseTimer(Landroid/content/Context;Z)V
    .locals 3

    if-nez p2, :cond_0

    .line 658
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mCallType:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    if-eq p2, v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1770

    .line 659
    :goto_0
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;J)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showWidget(Landroid/content/Context;)V
    .locals 14

    .line 203
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setupViews(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setupListeners()V

    .line 211
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 212
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x7da

    const v6, 0x80008

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x7f6

    const v12, 0x80008

    const/4 v13, -0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 226
    :goto_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCallWidgetLocation()Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getAppropriateWidgetGravity(Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 228
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getVerticalOffset()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, 0x0

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :try_start_1
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getWm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p1, "Error during call widget show"

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 231
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getWm(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mFloatingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-eqz v1, :cond_5

    .line 234
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    iget v3, v3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->saveLastLookedupNumber(Ljava/lang/String;IZ)V

    .line 236
    :cond_5
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showTooltip(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 242
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    if-eqz p1, :cond_6

    .line 243
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->mPscd:Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    iget v2, v2, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->saveLastLookedupNumber(Ljava/lang/String;IZ)V

    :cond_6
    :goto_2
    return-void
.end method
