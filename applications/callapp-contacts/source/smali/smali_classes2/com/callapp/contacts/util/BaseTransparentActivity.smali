.class public abstract Lcom/callapp/contacts/util/BaseTransparentActivity;
.super Lcom/callapp/contacts/activity/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishActivityOnLastPopupCanceled()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->getLayoutResourceId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 46
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getTransparentTheme()I

    move-result v0

    return v0
.end method

.method public isColoringTheStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 22
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-ne p1, p2, :cond_0

    const/4 p1, -0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->setRequestedOrientation(I)V

    return-void
.end method
