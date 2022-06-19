.class public Lcom/callapp/contacts/popup/RatePopup;
.super Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final c:I

.field private d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;-><init>()V

    const v0, 0x7f0601ec

    .line 29
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/popup/RatePopup;->a:I

    const v0, 0x7f06011a

    .line 30
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/popup/RatePopup;->c:I

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/popup/RatePopup;->d:Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/popup/RatePopup;)V
    .locals 3

    .line 1112
    iget-object v0, p0, Lcom/callapp/contacts/popup/RatePopup;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/RatePopup;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/callapp/contacts/popup/RatePopup;->d:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1114
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->ak:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/util/AppRater$UserRating;->RATED_5STAR:Lcom/callapp/contacts/util/AppRater$UserRating;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1115
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const v0, 0x7f12057b

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1144
    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissOnBtnClicked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentResId()I
    .locals 1

    const v0, 0x7f0d00df

    return v0
.end method

.method public getNegativeBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204d2

    .line 127
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 65
    new-instance v0, Lcom/callapp/contacts/popup/RatePopup$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/RatePopup$1;-><init>(Lcom/callapp/contacts/popup/RatePopup;)V

    return-object v0
.end method

.method public getPositiveBtnText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12057a

    .line 122
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
    .locals 1

    .line 81
    new-instance v0, Lcom/callapp/contacts/popup/RatePopup$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/RatePopup$2;-><init>(Lcom/callapp/contacts/popup/RatePopup;)V

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 40
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/popup/contact/DialogSimpleWithContent;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0a4d

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 43
    iget v0, p0, Lcom/callapp/contacts/popup/RatePopup;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f12057d

    .line 44
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0a48

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 47
    iget v0, p0, Lcom/callapp/contacts/popup/RatePopup;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f12057c

    .line 48
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0315

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f130117

    .line 51
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 52
    iget v0, p0, Lcom/callapp/contacts/popup/RatePopup;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/RatePopup;->setCancelable(Z)V

    return-object p1
.end method
