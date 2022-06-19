.class public Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f060088

    .line 39
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->d:Z

    .line 24
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDialogInsetBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->e:Landroid/graphics/drawable/Drawable;

    .line 43
    iput p1, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->b:I

    .line 44
    iput p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->c:I

    return-void
.end method

.method public static a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d01bc

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 97
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public onDialogBackPressed()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->g:Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;->a()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->getLayoutResId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a06f7

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    .line 66
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->b:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->d:Z

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const p2, 0x7f0a0a6e

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->f:Landroid/widget/TextView;

    .line 69
    iget v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a:Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public setCallAppDialogEvents(Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->g:Lcom/callapp/contacts/popup/contact/CallAppDialogEvents;

    return-void
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->d:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
