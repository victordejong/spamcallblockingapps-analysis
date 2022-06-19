.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;
.super Lrb1;
.source ""


# instance fields
.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lrb1;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    return-void
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lrb1;->p:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->M(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->J(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->K(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public D(Lsb1;)V
    .locals 1

    const v0, 0x7f110494

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    move-result-object p1

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    sget-object v0, Lsb1$c;->g:Lsb1$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->j(Ljava/util/EnumSet;)Lsb1;

    return-void
.end method

.method public final J(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->K(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final K(Ljava/lang/String;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    invoke-static {}, Lw71;->c()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->N(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {}, Lbc1;->d()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->L()V

    if-eqz p2, :cond_1

    new-instance p2, Lx81;

    invoke-direct {p2}, Lx81;-><init>()V

    invoke-virtual {p2}, Lv71;->f()Z

    :cond_1
    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$7;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$7;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "server_data_restore"

    invoke-static {p1, p0, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    invoke-static {}, Lw71;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Ls51;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11062b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f110629

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110624

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$e;

    invoke-direct {v1, p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1101b0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110627

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;

    invoke-direct {v1, p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final N(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lta1;->I:Lta1;

    invoke-virtual {v2}, Lta1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110346

    goto :goto_0

    :cond_0
    const v2, 0x7f110347

    :goto_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f11062b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110760

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;

    invoke-direct {v2, p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110531

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 2

    invoke-super {p0, p1}, Lrb1;->g(Lsb1$c;)V

    sget-object v0, Lsb1$c;->g:Lsb1$c;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "Backup"

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lta1;->I:Lta1;

    invoke-virtual {p1, p0}, Lta1;->j(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f1106d1

    invoke-static {}, Lw71;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const p1, 0x7f110345

    :cond_2
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    invoke-static {}, Lw71;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Ls51;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public m(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lyd;->m(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iget-object p2, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {p2}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f11062a

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f110628

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f110626

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    new-instance p4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;

    invoke-direct {p4, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/io/File;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110625

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d0109

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0564

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$1;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0087

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f110525

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0086

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f110526

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    invoke-static {}, Lw71;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p3, Ls51;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->s:Ljava/util/List;

    const v2, 0x7f0d0108

    invoke-direct {p3, p1, v2, v0, v1}, Ls51;-><init>(Landroid/content/Context;IILjava/util/List;)V

    invoke-virtual {p0, p3}, Lyd;->n(Landroid/widget/ListAdapter;)V

    return-object p2
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lta1;->I:Lta1;

    invoke-virtual {v1}, Lta1;->d()Z

    move-result v1

    const v2, 0x7f0a007a

    const v3, 0x7f0a027d

    const v4, 0x7f0a027a

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f110530

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;->L()V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1104d3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public on_get_device_list_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    invoke-static {}, Lbc1;->a()V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const p2, 0x7f110528

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public on_get_device_list_success(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lx61$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lbc1;->a()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx61$a;

    iget-wide v5, v5, Lx61$a;->c:J

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx61$a;

    iget-object v6, v6, Lx61$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<br/> <small>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</small>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110525

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/MoreBackupFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const v0, 0x7f110527

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public on_server_data_restore_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    invoke-static {}, Lbc1;->a()V

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    const p2, 0x7f1100d9

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public on_server_data_restore_success()V
    .locals 3

    invoke-static {}, Lbc1;->a()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    const v1, 0x7f1100db

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
