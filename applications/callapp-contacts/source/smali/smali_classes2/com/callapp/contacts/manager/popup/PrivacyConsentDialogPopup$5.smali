.class Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 247
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f0a00d0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 251
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 255
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 257
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 258
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {v1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->e(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->c(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_3

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->e(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {p1}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->f(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Lcom/callapp/contacts/widget/GdprButton;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->d(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {v2}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$5;->a:Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    invoke-static {v2}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->b(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-static {v0, p2}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;->a(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;Z)Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/GdprButton;->setData(Lcom/callapp/contacts/widget/GdprButton$GdprDialogButtonData;)V

    return-void
.end method
