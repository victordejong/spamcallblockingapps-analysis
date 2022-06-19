.class public Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpamCommentSubmitRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$ReasonSpinnerAdapter;
    }
.end annotation


# instance fields
.field private mBlockCheckbox:Landroid/widget/CheckBox;

.field private mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

.field private mItemView:Landroid/view/View;

.field private mReportReasonSpinner:Landroid/widget/Spinner;

.field private mSendButton:Landroid/widget/Button;

.field private mSpamReportCommentTextView:Landroid/widget/TextView;

.field private wasReportReasonSelectedBefore:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->wasReportReasonSelectedBefore:Z

    .line 49
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->enableSendButton(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->dismissKeyboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->validatePage()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->showToastWithMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->wasReportReasonSelectedBefore:Z

    return p0
.end method

.method static synthetic access$502(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->wasReportReasonSelectedBefore:Z

    return p1
.end method

.method static synthetic access$600(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    return-object p0
.end method

.method private dismissKeyboard()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getInstance()Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getInstance()Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getInstance()Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private enableSendButton(Z)V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSendButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f0500a2

    goto :goto_0

    :cond_0
    const p1, 0x7f05012b

    :goto_0
    invoke-static {v1, p1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private getBlockCheckbox()Landroid/widget/CheckBox;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mBlockCheckbox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mBlockCheckbox:Landroid/widget/CheckBox;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mBlockCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getSendButton()Landroid/widget/Button;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSendButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSendButton:Landroid/widget/Button;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSendButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getSpamReportCommentTextView()Landroid/widget/TextView;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSpamReportCommentTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f080264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSpamReportCommentTextView:Landroid/widget/TextView;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mSpamReportCommentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getSpamReportReasonSpinner()Landroid/widget/Spinner;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mReportReasonSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mReportReasonSpinner:Landroid/widget/Spinner;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mReportReasonSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private setupReasonSpinner()V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportReasonSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    iget-object v2, v2, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f070129

    goto :goto_0

    :cond_0
    const v2, 0x7f070128

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$ReasonSpinnerAdapter;

    invoke-static {}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->getInstance()Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    move-result-object v1

    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->getAllReasons()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$ReasonSpinnerAdapter;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Landroid/content/Context;Ljava/util/List;)V

    .line 186
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportReasonSpinner()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportReasonSpinner()Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setupReportingFeature()V
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSendButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    iget-object v1, v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f050119

    goto :goto_0

    :cond_0
    const v1, 0x7f050118

    :goto_0
    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v0

    .line 95
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSendButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 96
    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    const v2, 0x7f0800d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportCommentTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$2;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showToastWithMessage(Ljava/lang/String;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private validatePage()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportCommentTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->wasReportReasonSelectedBefore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->enableSendButton(Z)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    .line 58
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->setupReportingFeature()V

    .line 59
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->setupReasonSpinner()V

    return-void
.end method

.method public reportSpamCall()V
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->wasReportReasonSelectedBefore:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportReasonSpinner()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    :goto_0
    invoke-virtual {v0}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->backendKeyword()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 127
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    iget-object v0, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v4, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getSpamReportCommentTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v1

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mData:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;

    iget-object v3, v3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitData;->mPhoneEvent:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v3, v3, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v3, v7}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->getBlockCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    new-instance v8, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;

    invoke-direct {v8, p0, v6}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$3;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v8}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->addBlockedNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void

    .line 122
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->showToastWithMessage(Ljava/lang/String;)V

    return-void
.end method
