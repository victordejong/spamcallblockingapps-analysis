.class public Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_PHONE_EVENT:Ljava/lang/String; = "extraKeyPhoneEvent"

.field public static final EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "extraKeyPhoneNumber"

.field public static final EXTRA_KEY_PHONE_OWNER:Ljava/lang/String; = "extraKeyPhoneOwner"


# instance fields
.field private mBlockButton:Landroid/widget/Button;

.field private mCommentEditText:Landroid/widget/EditText;

.field private mDescriptionEditText:Landroid/widget/EditText;

.field private mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberEditText:Landroid/widget/EditText;

.field private mPhoneOwner:Ljava/lang/String;

.field private mReasonSpinner:Landroid/widget/Spinner;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private wasReportReasonSelectedBefore:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->wasReportReasonSelectedBefore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->validatePage()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->enableSendButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->dismissKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->showToastWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->finish(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->wasReportReasonSelectedBefore:Z

    return p0
.end method

.method static synthetic access$602(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->wasReportReasonSelectedBefore:Z

    return p1
.end method

.method private dismissKeyboard()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    .line 125
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 126
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private enableSendButton(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mBlockButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mBlockButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const p1, 0x7f0500a2

    goto :goto_0

    :cond_0
    const p1, 0x7f05012b

    :goto_0
    invoke-static {p0, p1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private finish(Z)V
    .locals 1

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->setResult(ILandroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->finish()V

    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v0, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneOwner()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getReportableName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneOwner:Ljava/lang/String;

    return-object v0
.end method

.method private setupReasonSpinner()V
    .locals 2

    .line 170
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;

    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->getAllReasons()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$ReasonSpinnerAdapter;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 171
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mReasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mReasonSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;

    invoke-direct {v1, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$5;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showToastWithMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 165
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private validatePage()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->wasReportReasonSelectedBefore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mBlockButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mBlockButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const v0, 0x7f0500a2

    goto :goto_1

    :cond_1
    const v0, 0x7f05012b

    :goto_1
    invoke-static {p0, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0020

    .line 61
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->setContentView(I)V

    const p1, 0x7f08007e

    .line 63
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    const p1, 0x7f080089

    .line 64
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    const p1, 0x7f080080

    .line 65
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f10018a

    .line 66
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 68
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const p1, 0x7f08007f

    .line 69
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$1;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraKeyPhoneEvent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 78
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraKeyPhoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumber:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraKeyPhoneOwner"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneOwner:Ljava/lang/String;

    const p1, 0x7f08025e

    .line 80
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mReasonSpinner:Landroid/widget/Spinner;

    const p1, 0x7f0802c3

    .line 81
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mDescriptionEditText:Landroid/widget/EditText;

    .line 82
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getPhoneOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0802c4

    .line 83
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumberEditText:Landroid/widget/EditText;

    .line 84
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumberEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$2;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0802c2

    .line 93
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mCommentEditText:Landroid/widget/EditText;

    const p1, 0x7f08007a

    .line 94
    invoke-virtual {p0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mBlockButton:Landroid/widget/Button;

    .line 95
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;

    invoke-direct {v0, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$3;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->setupReasonSpinner()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->finish(Z)V

    .line 242
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public reportSpamCall()V
    .locals 10

    .line 138
    iget-object v0, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mPhoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->wasReportReasonSelectedBefore:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mReasonSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    :goto_0
    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->backendKeyword()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 144
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    iget-object v1, p0, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->mCommentEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-instance v9, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;

    invoke-direct {v9, p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity$4;-><init>(Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;)V

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->addBlockedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void

    :cond_2
    :goto_1
    const v0, 0x7f10003e

    .line 140
    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockNumberActivity;->showToastWithMessage(Ljava/lang/String;)V

    return-void
.end method
