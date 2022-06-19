.class public Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;

.field private b:Lcom/callapp/contacts/widget/GdprButton;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 244
    new-instance v0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "Data consent screen shown"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->setCancelable(Z)V

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;Z)Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Z)Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;
    .locals 4

    .line 54
    new-instance v0, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/callapp/contacts/manager/popup/-$$Lambda$PrivacyConsentDialogPopup$h86EZE8e5U8PsrmdFl21F1XI2Ns;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/popup/-$$Lambda$PrivacyConsentDialogPopup$h86EZE8e5U8PsrmdFl21F1XI2Ns;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f0805b5

    goto :goto_1

    :cond_1
    const p1, 0x7f08027a

    :goto_1
    const v2, 0x7f0802ca

    const v3, 0x7f120032

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;-><init>(IILandroid/view/View$OnClickListener;I)V

    return-object v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 55
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 57
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "Data consent screen selected agree"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;

    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;->a()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->dismiss()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->e:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->f:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Lcom/callapp/contacts/widget/GdprButton;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b:Lcom/callapp/contacts/widget/GdprButton;

    return-object p0
.end method

.method public static synthetic lambda$h86EZE8e5U8PsrmdFl21F1XI2Ns(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0198

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 91
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method protected onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->getLayoutResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f120232

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120231

    .line 96
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00d0

    .line 98
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c:Landroid/widget/CheckBox;

    const v2, 0x7f0a0a33

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120233

    .line 101
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0221

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d:Landroid/widget/CheckBox;

    const v2, 0x7f0a0a3f

    .line 104
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f12022a

    .line 107
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    .line 112
    new-instance v5, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$1;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    const/16 v6, 0x21

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v2, 0x7f0a0220

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->e:Landroid/widget/CheckBox;

    const v2, 0x7f0a0a3d

    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f120229

    .line 136
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    .line 141
    new-instance v7, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$2;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$2;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    invoke-virtual {v4, v7, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 157
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v2, 0x7f0a021f

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->f:Landroid/widget/CheckBox;

    const v2, 0x7f0a0a35

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f120228

    .line 165
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 170
    new-instance v5, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$3;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$3;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 186
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v2, 0x7f0a0a39

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12022e

    .line 192
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0a36

    .line 194
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12022b

    .line 195
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0a3a

    .line 197
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12022f

    .line 198
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a0a37

    .line 201
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v3, 0x7f12022c

    .line 204
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    .line 209
    new-instance v5, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$4;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$4;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 225
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v1, 0x7f0a0a3b

    .line 230
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120230

    .line 231
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0a38

    .line 233
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12022d

    .line 234
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a016d

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/GdprButton;

    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b:Lcom/callapp/contacts/widget/GdprButton;

    .line 237
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Z)Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/GdprButton;->setData(Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;)V

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->e:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 241
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->f:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
