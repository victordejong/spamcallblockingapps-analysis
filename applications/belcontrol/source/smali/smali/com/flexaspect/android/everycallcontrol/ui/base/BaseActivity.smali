.class public abstract Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfv0;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation


# instance fields
.field public c:Landroid/app/AlertDialog;

.field public d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:Lfv0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic B(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lbc1;->d()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lbc1;->a()V

    :goto_0
    return-void
.end method

.method private synthetic C(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->I(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    invoke-virtual {v0, p1}, Lfv0;->k(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    iget-object p1, p1, Lfv0;->f:Lve;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lve;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->I(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public synthetic D(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->C(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    iget-object v0, v0, Lfv0;->d:Lve;

    sget-object v1, Lwu0;->a:Lwu0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    iget-object v0, v0, Lfv0;->f:Lve;

    new-instance v1, Lvu0;

    invoke-direct {v1, p0}, Lvu0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->G()V

    return-void
.end method

.method public abstract G()V
.end method

.method public H(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnd;->I0(Ljava/lang/String;I)V

    return-void
.end method

.method public final I(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->c:Landroid/app/AlertDialog;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public J(Landroidx/fragment/app/Fragment;Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->z(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->H(Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltd;->x(I)Ltd;

    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Ltd;->w(I)Ltd;

    const v3, 0x7f010024

    const v4, 0x7f010026

    invoke-virtual {v1, v3, v4, v2, v2}, Ltd;->t(IIII)Ltd;

    iget v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->h:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ltd;->r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ltd;->f(Ljava/lang/String;)Ltd;

    :cond_1
    invoke-virtual {v0}, Lnd;->w0()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ltd;->h()I

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->A()V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->g:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110555

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->c:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->d:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lff;->b(Landroidx/fragment/app/FragmentActivity;)Lef;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lef;->a(Ljava/lang/Class;)Ldf;

    move-result-object p1

    check-cast p1, Lfv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->F()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lbc1;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfv0;->f:Lve;

    new-instance v1, Lxu0;

    invoke-direct {v1, p0}, Lxu0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->f:Lfv0;

    iget-object v0, v0, Lfv0;->f:Lve;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lve;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public z(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
