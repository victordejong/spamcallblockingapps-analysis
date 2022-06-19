.class public abstract Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;
.super Lcom/kedlin/cca/ui/CCAFragmentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfv0;",
        ">",
        "Lcom/kedlin/cca/ui/CCAFragmentActivity;"
    }
.end annotation


# instance fields
.field public a:Landroid/app/AlertDialog;

.field public b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:Lfv0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;-><init>()V

    return-void
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->H(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/Boolean;)V
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

.method private synthetic D(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->H(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    invoke-virtual {v0, p1}, Lfv0;->k(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    iget-object p1, p1, Lfv0;->f:Lve;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lve;->l(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public synthetic E(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->D(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    iget-object v0, v0, Lfv0;->d:Lve;

    sget-object v1, Lav0;->a:Lav0;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    iget-object v0, v0, Lfv0;->f:Lve;

    new-instance v1, Lyu0;

    invoke-direct {v1, p0}, Lyu0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->G()V

    return-void
.end method

.method public abstract G()V
.end method

.method public final H(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->a:Landroid/app/AlertDialog;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->A()V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->d:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110555

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->a:Landroid/app/AlertDialog;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->b:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lff;->b(Landroidx/fragment/app/FragmentActivity;)Lef;

    move-result-object p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->b:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lef;->a(Ljava/lang/Class;)Ldf;

    move-result-object p1

    check-cast p1, Lfv0;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->F()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lbc1;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfv0;->f:Lve;

    new-instance v1, Lzu0;

    invoke-direct {v1, p0}, Lzu0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->c:Lfv0;

    iget-object v0, v0, Lfv0;->f:Lve;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lve;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
