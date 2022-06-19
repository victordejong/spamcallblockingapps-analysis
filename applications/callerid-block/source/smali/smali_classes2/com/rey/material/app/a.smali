.class public Lcom/rey/material/app/a;
.super Landroidx/fragment/app/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/app/a$b;
    }
.end annotation


# instance fields
.field protected k0:Lcom/rey/material/app/a$b;

.field private l0:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/b;-><init>()V

    new-instance v0, Lcom/rey/material/app/a$a;

    invoke-direct {v0, p0}, Lcom/rey/material/app/a$a;-><init>(Lcom/rey/material/app/a;)V

    iput-object v0, p0, Lcom/rey/material/app/a;->l0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;
    .locals 1

    new-instance v0, Lcom/rey/material/app/a;

    invoke-direct {v0}, Lcom/rey/material/app/a;-><init>()V

    iput-object p0, v0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic H1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rey/material/app/a;->L1(Landroid/os/Bundle;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public I0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/b;->I0(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/Parcelable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "arg_builder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public L1(Landroid/os/Bundle;)Lcom/rey/material/app/Dialog;
    .locals 1

    iget-object p1, p0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/rey/material/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->m()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rey/material/app/a$b;->c(Landroid/content/Context;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/rey/material/app/a;->l0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->m0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/rey/material/app/a;->l0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->S(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/rey/material/app/a;->l0:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->b0(Landroid/view/View$OnClickListener;)Lcom/rey/material/app/Dialog;

    return-object p1
.end method

.method public m0(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/b;->m0(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    if-nez v0, :cond_0

    const-string v0, "arg_builder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/rey/material/app/a$b;

    iput-object p1, p0, Lcom/rey/material/app/a;->k0:Lcom/rey/material/app/a$b;

    :cond_0
    return-void
.end method

.method public t0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/b;->G1()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/rey/material/app/Dialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Lcom/rey/material/app/Dialog;->D()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/b;->t0()V

    return-void
.end method
