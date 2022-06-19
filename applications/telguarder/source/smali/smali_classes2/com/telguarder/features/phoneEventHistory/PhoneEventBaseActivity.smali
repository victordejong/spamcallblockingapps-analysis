.class public Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PhoneEventBaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneEventBaseActivity"

.field static volatile active:Z = false


# instance fields
.field protected mArcMenu:Lcom/capricorn/ArcMenu;

.field private mArcMenuContainer:Landroid/widget/LinearLayout;

.field private final mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

.field private mError:Landroid/widget/TextView;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field protected mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreInfoUrl:Ljava/lang/String;

.field protected volatile mPhoneCallLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private nnItemClickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

.field protected pageTitle:I

.field private final preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

.field protected spamFilter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$2;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->nnItemClickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    .line 396
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$6;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 498
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$11;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->initContent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mError:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->nnItemClickListener:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->updateSpamComments()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->placeArcMenuToAppropriatePosition()V

    return-void
.end method

.method static synthetic access$402(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$502(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$600(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;I)I
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getTouchYWithHeaderCorrection(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->isScreenInForeGround()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMoreInfoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private getArcMenuContainerSize()Landroid/graphics/Point;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 359
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 361
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getArcMenuLeftMargin()I
    .locals 3

    .line 335
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuContainerSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1}, Lcom/capricorn/ArcMenu;->getArcLayout()Lcom/capricorn/ArcLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capricorn/ArcLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mLastTouchX:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuMargin(III)I

    move-result v0

    return v0
.end method

.method private getArcMenuMargin(III)I
    .locals 1

    .line 346
    div-int/lit8 v0, p2, 0x2

    if-ge p3, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, v0

    sub-int/2addr p1, p2

    if-le p3, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    return p1
.end method

.method private getArcMenuTopMargin()I
    .locals 3

    .line 340
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuContainerSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1}, Lcom/capricorn/ArcMenu;->getArcLayout()Lcom/capricorn/ArcLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capricorn/ArcLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mLastTouchY:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuMargin(III)I

    move-result v0

    return v0
.end method

.method private getTouchYWithHeaderCorrection(I)I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private initContent()V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$7;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 442
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0801f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 135
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 136
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$1;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 146
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mError:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0801f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isScreenInForeGround()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private placeArcMenuToAppropriatePosition()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->requestArcMenuToMeasureItsSize()V

    .line 315
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuLeftMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 316
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->getArcMenuTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 317
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v1, v0}, Lcom/capricorn/ArcMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$5;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestArcMenuToMeasureItsSize()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {v0}, Lcom/capricorn/ArcMenu;->getArcLayout()Lcom/capricorn/ArcLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/capricorn/ArcLayout;->measure(II)V

    return-void
.end method

.method private setCallLogListTouchListener()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLogListView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setErrorText()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mError:Landroid/widget/TextView;

    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setMenuContainerTouchListener()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenuContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setViewListeners()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setMenuContainerTouchListener()V

    .line 164
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setCallLogListTouchListener()V

    return-void
.end method

.method private updateSpamComments()V
    .locals 2

    .line 524
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$12;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    iput-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    .line 536
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$13;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$13;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 544
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$14;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$14;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelDetailActivityStart()V
    .locals 2

    .line 418
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 419
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->hideItemDetailLoadingProgress()V

    :cond_0
    return-void
.end method

.method protected createArcMenuItemFor(Ljava/lang/String;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;I)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;
    .locals 1

    .line 367
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    invoke-direct {v0}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;-><init>()V

    .line 368
    iput-object p1, v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;->id:Ljava/lang/String;

    .line 369
    iput-object p2, v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;->menuAction:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    .line 370
    iput p3, v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;->imageResourceId:I

    return-object v0
.end method

.method protected createArcMenuItemsForSelectedPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 3

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    .line 265
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    sget-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->CALL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const v2, 0x7f0700a5

    invoke-virtual {p0, v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->createArcMenuItemFor(Ljava/lang/String;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;I)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    sget-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->SMS:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const v2, 0x7f0700a6

    invoke-virtual {p0, v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->createArcMenuItemFor(Ljava/lang/String;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;I)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    sget-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->BLOCK:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const v2, 0x7f0700c1

    invoke-virtual {p0, v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->createArcMenuItemFor(Ljava/lang/String;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;I)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    sget-object v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->STAT:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const v1, 0x7f0700b9

    invoke-virtual {p0, p1, v0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->createArcMenuItemFor(Ljava/lang/String;Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;I)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;

    move-result-object p1

    .line 274
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleArcMenuItemSelections(Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 6

    .line 280
    sget-object v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$15;->$SwitchMap$com$telguarder$features$phoneEventHistory$ArcMenuManager$ArcMenuAction:[I

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem;->menuAction:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    invoke-virtual {p1}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "Unhandled menu item selection!"

    .line 305
    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget p1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    int-to-long v2, p1

    iget-wide p1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;Z)V

    .line 301
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "main_calls"

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallStatisticsPageOpenedFromAction(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "stat"

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendArcMenuSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->startBlockActivityWithPhoneEvent(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 297
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "block"

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendArcMenuSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object p1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->sendSms(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "sms"

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendArcMenuSelection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_3
    new-instance p1, Lcom/telguarder/helpers/contact/BackendLogEntry;

    invoke-direct {p1}, Lcom/telguarder/helpers/contact/BackendLogEntry;-><init>()V

    .line 283
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    iput-object v0, p1, Lcom/telguarder/helpers/contact/BackendLogEntry;->id:Ljava/lang/String;

    .line 284
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iput-object v0, p1, Lcom/telguarder/helpers/contact/BackendLogEntry;->calledNumber:Ljava/lang/String;

    .line 285
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    invoke-static {v0}, Lcom/telguarder/features/numberLookup/ActorType;->valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v0

    iput-object v0, p1, Lcom/telguarder/helpers/contact/BackendLogEntry;->actorType:Lcom/telguarder/features/numberLookup/ActorType;

    .line 288
    :cond_4
    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p0, p2, p1, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->callNumber(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/telguarder/helpers/contact/BackendLogEntry;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->TAG:Ljava/lang/String;

    const-string v0, "call"

    invoke-virtual {p1, p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendArcMenuSelection(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->finish()V

    .line 114
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f0b0021

    .line 74
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setContentView(I)V

    const v0, 0x7f08009f

    .line 75
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    const v1, 0x7f080089

    .line 76
    invoke-virtual {p0, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 77
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mRootView:Landroid/view/View;

    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V

    const p1, 0x7f0800a0

    .line 78
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 79
    iget v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->pageTitle:I

    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 80
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->initViews()V

    .line 81
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setErrorText()V

    .line 82
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setViewListeners()V

    return-void

    .line 73
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->initContent()V

    .line 123
    invoke-virtual {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->cancelDetailActivityStart()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 100
    sput-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->active:Z

    return-void
.end method

.method protected showContent()V
    .locals 1

    .line 476
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$10;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showError()V
    .locals 1

    .line 461
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$9;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$9;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showProgress()V
    .locals 1

    .line 447
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$8;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$8;-><init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startBlockActivityWithPhoneEvent(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extraKeyPhoneEvent"

    .line 252
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected startDetailActivityForPhoneEvent(I)V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_3

    .line 385
    iget-object v1, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v1

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getAnalyzeUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMoreInfoUrl:Ljava/lang/String;

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mPhoneEventLogAdapter:Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventLogAdapter;->showItemDetailLoadingProgress(I)V

    .line 391
    :cond_2
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mMoreInfoUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    invoke-virtual {p1, p0, v0, v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V

    :cond_3
    :goto_0
    return-void

    .line 381
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->initContent()V

    return-void
.end method
