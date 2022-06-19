.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;

.field public m:Landroid/widget/ListView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->L()V

    return-void
.end method

.method private synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->U()V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

.method private synthetic R(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->K(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, " +"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lk81;

    invoke-direct {v1}, Lk81;-><init>()V

    invoke-virtual {v1, p1}, Lk81;->E(Ljava/lang/String;)Lk81;

    iput-object p1, v1, Lk81;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lv71;->z()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const v1, 0x7f1100de

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->L()V

    goto :goto_0

    :cond_2
    const p1, 0x7f1102fd

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->l:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;

    new-instance v1, Lk81;

    invoke-direct {v1}, Lk81;-><init>()V

    invoke-virtual {v1}, Lk81;->G()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->T()V

    return-void
.end method

.method public M()Ljava/lang/String;
    .locals 1

    const-string v0, "Blocked names"

    return-object v0
.end method

.method public synthetic O(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->N(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->R(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public final T()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->l:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lmc;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->m:Landroid/widget/ListView;

    const/16 v3, 0x8

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final U()V
    .locals 10

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Dialog not inflated"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0a0097

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v2}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v9, 0x0

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    const v2, 0x7f0a015b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lt01;

    invoke-direct {v2, p0}, Lt01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ls01;

    invoke-direct {v2, p0, v0}, Ls01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lqb1;->onPause()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a00a1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lq01;

    invoke-direct {v0, p0}, Lq01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a00a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->n:Landroid/widget/TextView;

    const p2, 0x7f0a00a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->m:Landroid/widget/ListView;

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lk81;

    invoke-direct {v0}, Lk81;-><init>()V

    invoke-virtual {v0}, Lk81;->G()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->l:Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->m:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->T()V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0028

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    return-void
.end method
