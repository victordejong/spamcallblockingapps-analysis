.class public Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;
.super Lcom/callapp/contacts/widget/SettingsRowView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/SettingsRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0a07e8

    .line 30
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->b:Landroid/widget/TextView;

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const v0, 0x7f0601cc

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    invoke-super {p0, p0}, Lcom/callapp/contacts/widget/SettingsRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->e:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)[Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)Landroid/widget/TextView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->b:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0262

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1063
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;

    iget-object v3, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->d:[Ljava/lang/String;

    iget v5, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->e:I

    new-instance v6, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice$1;-><init>(Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChoices(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->d:[Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->e:I

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    .line 39
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->b:Landroid/widget/TextView;

    aget-object p1, p2, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    iput-object p3, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->c:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
