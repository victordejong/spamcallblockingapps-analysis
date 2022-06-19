.class public Landroidx/fragment/app/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:Landroid/app/Dialog;

.field b:Z

.field private c:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/content/DialogInterface$OnDismissListener;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Landroidx/lifecycle/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/u<",
            "Landroidx/lifecycle/p;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 188
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Landroidx/fragment/app/c$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$1;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->e:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Landroidx/fragment/app/c$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$2;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 126
    new-instance v0, Landroidx/fragment/app/c$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$3;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->g:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroidx/fragment/app/c;->h:I

    .line 138
    iput v0, p0, Landroidx/fragment/app/c;->i:I

    const/4 v1, 0x1

    .line 139
    iput-boolean v1, p0, Landroidx/fragment/app/c;->j:Z

    .line 140
    iput-boolean v1, p0, Landroidx/fragment/app/c;->k:Z

    const/4 v1, -0x1

    .line 141
    iput v1, p0, Landroidx/fragment/app/c;->l:I

    .line 143
    new-instance v1, Landroidx/fragment/app/c$4;

    invoke-direct {v1, p0}, Landroidx/fragment/app/c$4;-><init>(Landroidx/fragment/app/c;)V

    iput-object v1, p0, Landroidx/fragment/app/c;->n:Landroidx/lifecycle/u;

    .line 169
    iput-boolean v0, p0, Landroidx/fragment/app/c;->b:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 213
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 107
    new-instance p1, Landroidx/fragment/app/c$1;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c$1;-><init>(Landroidx/fragment/app/c;)V

    iput-object p1, p0, Landroidx/fragment/app/c;->e:Ljava/lang/Runnable;

    .line 115
    new-instance p1, Landroidx/fragment/app/c$2;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c$2;-><init>(Landroidx/fragment/app/c;)V

    iput-object p1, p0, Landroidx/fragment/app/c;->f:Landroid/content/DialogInterface$OnCancelListener;

    .line 126
    new-instance p1, Landroidx/fragment/app/c$3;

    invoke-direct {p1, p0}, Landroidx/fragment/app/c$3;-><init>(Landroidx/fragment/app/c;)V

    iput-object p1, p0, Landroidx/fragment/app/c;->g:Landroid/content/DialogInterface$OnDismissListener;

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Landroidx/fragment/app/c;->h:I

    .line 138
    iput p1, p0, Landroidx/fragment/app/c;->i:I

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Landroidx/fragment/app/c;->j:Z

    .line 140
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Landroidx/fragment/app/c;->l:I

    .line 143
    new-instance v0, Landroidx/fragment/app/c$4;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$4;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->n:Landroidx/lifecycle/u;

    .line 169
    iput-boolean p1, p0, Landroidx/fragment/app/c;->b:Z

    return-void
.end method

.method static synthetic a(Landroidx/fragment/app/c;)Landroid/app/Dialog;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method private a(ZZ)V
    .locals 3

    .line 321
    iget-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    const/4 v1, 0x0

    .line 325
    iput-boolean v1, p0, Landroidx/fragment/app/c;->q:Z

    .line 326
    iget-object v1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 330
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 331
    iget-object v1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 337
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/fragment/app/c;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 338
    iget-object p2, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/c;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/c;->o:Z

    .line 345
    iget p2, p0, Landroidx/fragment/app/c;->l:I

    if-ltz p2, :cond_3

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget p2, p0, Landroidx/fragment/app/c;->l:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->b(I)V

    const/4 p1, -0x1

    .line 348
    iput p1, p0, Landroidx/fragment/app/c;->l:I

    return-void

    .line 350
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p2

    .line 351
    invoke-virtual {p2, p0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    if-eqz p1, :cond_4

    .line 353
    invoke-virtual {p2}, Landroidx/fragment/app/s;->c()I

    return-void

    .line 355
    :cond_4
    invoke-virtual {p2}, Landroidx/fragment/app/s;->b()I

    return-void
.end method

.method static synthetic b(Landroidx/fragment/app/c;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/fragment/app/c;->g:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic c(Landroidx/fragment/app/c;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroidx/fragment/app/c;->k:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 p1, 0x3

    .line 612
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCreateDialog called for DialogFragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/c;->a(ZZ)V

    return-void
.end method

.method public a(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    .line 577
    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 583
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Landroidx/fragment/app/c;->q:Z

    .line 258
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 260
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-direct {p0, v0, v1}, Landroidx/fragment/app/c;->a(ZZ)V

    return-void
.end method

.method createFragmentContainer()Landroidx/fragment/app/e;
    .locals 2

    .line 505
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/e;

    move-result-object v0

    .line 506
    new-instance v1, Landroidx/fragment/app/c$5;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/c$5;-><init>(Landroidx/fragment/app/c;Landroidx/fragment/app/e;)V

    return-object v1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 388
    iget v0, p0, Landroidx/fragment/app/c;->i:I

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 445
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Landroidx/fragment/app/c;->n:Landroidx/lifecycle/u;

    const-string v1, "observeForever"

    .line 1224
    invoke-static {v1}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 1225
    new-instance v1, Landroidx/lifecycle/LiveData$a;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/LiveData$a;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/u;)V

    .line 1226
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->c:Landroidx/a/a/b/b;

    invoke-virtual {p1, v0, v1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$b;

    .line 1227
    instance-of v0, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1234
    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    .line 447
    :cond_0
    iget-boolean p1, p0, Landroidx/fragment/app/c;->q:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 450
    iput-boolean p1, p0, Landroidx/fragment/app/c;->p:Z

    :cond_1
    return-void

    .line 1228
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 471
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Handler;

    .line 475
    iget v0, p0, Landroidx/fragment/app/c;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 478
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->h:I

    const-string v0, "android:theme"

    .line 479
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->i:I

    const-string v0, "android:cancelable"

    .line 480
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->j:Z

    .line 481
    iget-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 482
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/c;->l:I

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 737
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 738
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 742
    iput-boolean v1, p0, Landroidx/fragment/app/c;->o:Z

    const/4 v1, 0x0

    .line 746
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 747
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 748
    iget-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 753
    :cond_0
    iput-object v1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Landroidx/fragment/app/c;->b:Z

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 457
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 458
    iget-boolean v0, p0, Landroidx/fragment/app/c;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    .line 464
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c;->n:Landroidx/lifecycle/u;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 624
    iget-boolean p1, p0, Landroidx/fragment/app/c;->o:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 629
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 630
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDismiss called for DialogFragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x1

    .line 632
    invoke-direct {p0, p1, p1}, Landroidx/fragment/app/c;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5

    .line 545
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 546
    iget-boolean v1, p0, Landroidx/fragment/app/c;->k:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    iget-boolean v3, p0, Landroidx/fragment/app/c;->m:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_3

    .line 1641
    iget-boolean v1, p0, Landroidx/fragment/app/c;->b:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1643
    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/c;->m:Z

    .line 1644
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    .line 1647
    iget-boolean v4, p0, Landroidx/fragment/app/c;->k:Z

    if-eqz v4, :cond_2

    .line 1648
    iget v4, p0, Landroidx/fragment/app/c;->h:I

    invoke-virtual {p0, p1, v4}, Landroidx/fragment/app/c;->a(Landroid/app/Dialog;I)V

    .line 1649
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1650
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 1651
    iget-object v4, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1653
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    iget-boolean v4, p0, Landroidx/fragment/app/c;->j:Z

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1654
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    iget-object v4, p0, Landroidx/fragment/app/c;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1655
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    iget-object v4, p0, Landroidx/fragment/app/c;->g:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1656
    iput-boolean v3, p0, Landroidx/fragment/app/c;->b:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1660
    iput-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    :goto_0
    iput-boolean v1, p0, Landroidx/fragment/app/c;->m:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/c;->m:Z

    .line 1664
    throw p1

    .line 560
    :cond_3
    :goto_1
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 561
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "get layout inflater for DialogFragment "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz p1, :cond_5

    .line 565
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_5
    return-object v0

    .line 547
    :cond_6
    :goto_2
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 548
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    iget-boolean p1, p0, Landroidx/fragment/app/c;->k:Z

    :cond_7
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 699
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 700
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android:dialogShowing"

    .line 702
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android:savedDialogState"

    .line 703
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 705
    :cond_0
    iget v0, p0, Landroidx/fragment/app/c;->h:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 706
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    :cond_1
    iget v0, p0, Landroidx/fragment/app/c;->i:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 709
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/c;->j:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 712
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 714
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 715
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    :cond_4
    iget v0, p0, Landroidx/fragment/app/c;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 718
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 683
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 685
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 686
    iput-boolean v1, p0, Landroidx/fragment/app/c;->o:Z

    .line 687
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 689
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 690
    invoke-static {v0, p0}, Landroidx/lifecycle/ae;->a(Landroid/view/View;Landroidx/lifecycle/p;)V

    .line 691
    invoke-static {v0, p0}, Landroidx/lifecycle/af;->a(Landroid/view/View;Landroidx/lifecycle/ad;)V

    .line 692
    invoke-static {v0, p0}, Landroidx/savedstate/e;->a(Landroid/view/View;Landroidx/savedstate/d;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 725
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 726
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 671
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 672
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    .line 673
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 489
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 492
    iget-object p1, p0, Landroidx/fragment/app/c;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 493
    iget-object p1, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    .line 494
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 496
    iget-object p2, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 401
    iput-boolean p1, p0, Landroidx/fragment/app/c;->j:Z

    .line 402
    iget-object v0, p0, Landroidx/fragment/app/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Landroidx/fragment/app/c;->k:Z

    return-void
.end method

.method public final v_()Landroid/app/Dialog;
    .locals 3

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 381
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DialogFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
