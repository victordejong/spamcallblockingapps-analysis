.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;
.source ""

# interfaces
.implements Lua1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity<",
        "Lfv0;",
        ">;",
        "Lua1;"
    }
.end annotation


# instance fields
.field public g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

.field public h:Landroid/view/animation/Animation;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const v0, 0x7f0d001e

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->d:I

    const v0, 0x7f0a02c9

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->f:I

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->o0(F)V

    :goto_0
    return-void
.end method

.method public final J(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->j:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-direct {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;-><init>()V

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->f:I

    const-string v3, "DIALPAD_FRAGMENT"

    invoke-virtual {v0, v2, v1, v3}, Ltd;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ltd;->y(Landroidx/fragment/app/Fragment;)Ltd;

    :goto_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->l0(Z)V

    invoke-virtual {v0}, Ltd;->h()I

    return-void
.end method

.method public f(Lta1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(Lta1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->a(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->j:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->k:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->j()Ltd;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;

    invoke-virtual {p1, v0}, Ltd;->o(Landroidx/fragment/app/Fragment;)Ltd;

    invoke-virtual {p1}, Ltd;->h()I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f010022

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->h:Landroid/view/animation/Animation;

    const p1, 0x7f010023

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->J(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lta1;->c(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->k:Z

    return-void
.end method
