.class public Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;


# instance fields
.field private a:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->a:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->a:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->setAudioRouteSelectorListener(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;)V

    :cond_0
    return-void
.end method

.method public onAudioRouteSelected(I)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->setAudioRoute(I)V

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->finish()V

    return-void
.end method

.method public onAudioRouteSelectorDismiss()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d()Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->a:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->a:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorActivity;->finish()V

    :cond_1
    return-void
.end method
