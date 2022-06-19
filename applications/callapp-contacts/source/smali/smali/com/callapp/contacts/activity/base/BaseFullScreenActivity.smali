.class public abstract Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusBarColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->showActionBar(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method
