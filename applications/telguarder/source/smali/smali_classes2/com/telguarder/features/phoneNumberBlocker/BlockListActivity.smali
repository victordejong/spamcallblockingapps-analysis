.class public Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;,
        Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$BlockedNumberHolder;
    }
.end annotation


# static fields
.field static final BLOCK_NUMBER_REQUEST:I = 0x1


# instance fields
.field private deletingItemPosition:I

.field private mAdapter:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

.field private mBlockedNumbers:Landroid/widget/ListView;

.field private mError:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressColor:I

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->deletingItemPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->showProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;ZLjava/lang/Exception;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->handleError(ZLjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->deletingItemPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->deletingItemPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressColor:I

    return p0
.end method

.method private acquireViewReferences()V
    .locals 1

    const v0, 0x7f0801e3

    .line 127
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f08017b

    .line 128
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mBlockedNumbers:Landroid/widget/ListView;

    const v0, 0x7f0802bc

    .line 129
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mError:Landroid/widget/TextView;

    return-void
.end method

.method private handleError(ZLjava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 179
    invoke-static {p0, p2}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->handleError(Landroid/app/Activity;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    const/16 v0, 0x8

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mError:Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/telguarder/helpers/errorhandling/ErrorHelper;->getErrorDataFromException(Landroid/app/Activity;Ljava/lang/Exception;)Lcom/telguarder/helpers/errorhandling/ErrorModel;

    move-result-object p2

    iget-object p2, p2, Lcom/telguarder/helpers/errorhandling/ErrorModel;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 187
    :goto_0
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object p2, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mBlockedNumbers:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private loadBlockedNumbersFromBackend()V
    .locals 2

    .line 134
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isBlockedNumberListNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->handleReportResult()V

    .line 137
    :cond_0
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$2;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->refreshCachedList(Landroid/content/Context;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method public static openBlockList(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 53
    const-class v0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;

    sget-object v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;->BLOCKLIST:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V

    return-void
.end method

.method private showProgress()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mBlockedNumbers:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private startBlockActivity()V
    .locals 2

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public addPlaceholderResults()V
    .locals 4

    .line 194
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-virtual {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->isPlaceholderEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-direct {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 200
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    invoke-direct {v1}, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getReportEntryAdapter()Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;
    .locals 7

    .line 207
    new-instance v6, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getBlockedNumberList()Lcom/telguarder/features/rateAndFeedback/ReportResult;

    move-result-object v0

    iget-object v4, v0, Lcom/telguarder/features/rateAndFeedback/ReportResult;->numbers:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const v5, 0x7f0b002e

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    return-object v6
.end method

.method public handleReportResult()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->addPlaceholderResults()V

    .line 169
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getReportEntryAdapter()Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mAdapter:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    .line 170
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mBlockedNumbers:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->showContent()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mAdapter:Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;

    if-eqz p1, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$ReportEntryAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->finish()V

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 59
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001f

    .line 60
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->setContentView(I)V

    const v0, 0x7f08007b

    .line 61
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08017b

    .line 62
    invoke-virtual {p0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const-string v2, "layout_inflater"

    .line 63
    invoke-virtual {p0, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0b002e

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const v2, 0x7f080089

    .line 65
    invoke-virtual {p0, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v4, v2, v5}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 66
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V

    const p1, 0x7f08007c

    .line 67
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f100033

    .line 68
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->acquireViewReferences()V

    .line 70
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->loadBlockedNumbersFromBackend()V

    const p1, 0x7f050041

    .line 71
    invoke-static {p0, p1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressColor:I

    .line 72
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 75
    new-instance p1, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;

    invoke-direct {p1, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity$1;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f07005c

    .line 87
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f050131

    .line 88
    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    const v1, 0x7f08003e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->startBlockActivity()V

    .line 104
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public showContent()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->mBlockedNumbers:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method
