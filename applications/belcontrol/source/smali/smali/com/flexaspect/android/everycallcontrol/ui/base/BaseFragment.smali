.class public abstract Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.super Lqb1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfv0;",
        ">",
        "Lqb1;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public j:Lfv0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lqb1;-><init>()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->y()V

    return-void
.end method

.method private synthetic A(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->H(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    invoke-virtual {v0, p1}, Lfv0;->k(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    iget-object p1, p1, Lfv0;->f:Lve;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lve;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic C(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110555

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->g:Landroid/app/AlertDialog;

    return-void
.end method

.method public static synthetic z(Ljava/lang/Boolean;)V
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


# virtual methods
.method public synthetic B(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic D(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->C(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    iget-object v0, v0, Lfv0;->d:Lve;

    sget-object v1, Lbv0;->a:Lbv0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    iget-object v0, v0, Lfv0;->f:Lve;

    new-instance v1, Lcv0;

    invoke-direct {v1, p0}, Lcv0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->F()V

    return-void
.end method

.method public abstract F()V
.end method

.method public G(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lnd;->I0(Ljava/lang/String;I)V

    return-void
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->g:Landroid/app/AlertDialog;

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

.method public I(Landroidx/fragment/app/Fragment;Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->x(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->G(Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {v0}, Lnd;->j()Ltd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltd;->x(I)Ltd;

    const/16 v3, 0x1001

    invoke-virtual {v1, v3}, Ltd;->w(I)Ltd;

    invoke-virtual {v1, v2, v2, v2, v2}, Ltd;->t(IIII)Ltd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;

    iget v2, v2, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseActivity;->h:I

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lff;->a(Landroidx/fragment/app/Fragment;)Lef;

    move-result-object p1

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lef;->a(Ljava/lang/Class;)Ldf;

    move-result-object p1

    check-cast p1, Lfv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->E()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f110555

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->g:Landroid/app/AlertDialog;

    new-instance v0, Ldv0;

    invoke-direct {v0, p0, p1}, Ldv0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public x(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

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

.method public abstract y()V
.end method
