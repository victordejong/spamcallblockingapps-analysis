.class public Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FeedbackActivity.java"


# instance fields
.field private mCancel:Landroid/view/View;

.field private mCancelTextView:Landroid/widget/TextView;

.field private mDone:Landroid/view/View;

.field private mDoneTextView:Landroid/widget/TextView;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mMainContainer:Landroid/view/View;

.field private mMessageEditText:Landroid/widget/EditText;

.field private mNameEditText:Landroid/widget/EditText;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTopicEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->areRequiredFieldFilledIn()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->postNewReport()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->showProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->showContent()V

    return-void
.end method

.method private applyTypeFaceOnViews()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getBoldTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mDoneTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getBoldTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mCancelTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getBoldTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mNameEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getLightTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getLightTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTopicEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getLightTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMessageEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/telguarder/helpers/ui/FontManager;->getInstance()Lcom/telguarder/helpers/ui/FontManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/ui/FontManager;->getLightTypeFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private areRequiredFieldFilledIn()Ljava/lang/Boolean;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMessageEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private createComment()Ljava/lang/String;
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100146

    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f100077

    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100147

    invoke-static {p0, v3}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTopicEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100145

    invoke-static {p0, v1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMessageEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f080218

    .line 56
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTitleTextView:Landroid/widget/TextView;

    const v0, 0x7f080217

    .line 57
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mNameEditText:Landroid/widget/EditText;

    const v0, 0x7f080215

    .line 58
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mEmailEditText:Landroid/widget/EditText;

    const v0, 0x7f080219

    .line 59
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTopicEditText:Landroid/widget/EditText;

    const v0, 0x7f080216

    .line 60
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMessageEditText:Landroid/widget/EditText;

    const v0, 0x7f080211

    .line 61
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mCancel:Landroid/view/View;

    const v0, 0x7f080212

    .line 62
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mCancelTextView:Landroid/widget/TextView;

    const v0, 0x7f080213

    .line 63
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mDone:Landroid/view/View;

    const v0, 0x7f080214

    .line 64
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mDoneTextView:Landroid/widget/TextView;

    const v0, 0x7f08021b

    .line 65
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f08021a

    .line 66
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMainContainer:Landroid/view/View;

    return-void
.end method

.method private postNewReport()V
    .locals 4

    .line 130
    new-instance v0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$3;-><init>(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;Landroid/app/Activity;)V

    .line 146
    invoke-static {}, Lcom/telguarder/features/rateAndFeedback/ReportManager;->getInstance()Lcom/telguarder/features/rateAndFeedback/ReportManager;

    move-result-object v1

    sget-object v2, Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;->FEEDBACK:Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;

    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->createComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/telguarder/features/rateAndFeedback/ReportManager;->postReport(Landroid/content/Context;Lcom/telguarder/features/rateAndFeedback/ReportManager$ReportType;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method private setCancelListener()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mCancel:Landroid/view/View;

    new-instance v1, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$1;-><init>(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setDoneListener()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mDone:Landroid/view/View;

    new-instance v1, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity$2;-><init>(Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setLayout()V
    .locals 1

    const v0, 0x7f0b0023

    .line 51
    invoke-virtual {p0, v0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setContentView(I)V

    return-void
.end method

.method private setViewListeners()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setCancelListener()V

    .line 90
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setDoneListener()V

    return-void
.end method

.method private setViewValues()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mDoneTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mCancelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showContent()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMainContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showProgress()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->mMainContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setLayout()V

    .line 43
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->initViews()V

    .line 44
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->applyTypeFaceOnViews()V

    .line 45
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setViewValues()V

    .line 46
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;->setViewListeners()V

    return-void
.end method
