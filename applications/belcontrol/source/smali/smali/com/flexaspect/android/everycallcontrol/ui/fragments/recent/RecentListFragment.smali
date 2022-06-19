.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Lcom/kedlin/cca/ui/CCANavBarFilter;

.field public m:Ly51;

.field public n:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic J(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->P(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic L(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->m:Ly51;

    invoke-virtual {p1, p3}, Lmc;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ll81;

    invoke-direct {p2}, Ll81;-><init>()V

    invoke-virtual {p2, p1}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->n:Landroid/widget/EditText;

    iget-object p3, p2, Ll81;->m:Li91;

    invoke-virtual {p3}, Li91;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Ll81;->m:Li91;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->P(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic N(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->P(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public synthetic K(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->J(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public synthetic M(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->L(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic O(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->N(Landroid/view/View;)V

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->n:Landroid/widget/EditText;

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    invoke-virtual {p1, p0, v1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 4

    invoke-super {p0, p1, p2}, Lqb1;->b(Ljava/lang/Object;Z)V

    check-cast p1, Lc01;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->m:Ly51;

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    sget-object v1, Lc01;->c:Lc01;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ll81;->f0(Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a03ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f110407

    new-array v1, v2, [Ljava/lang/Object;

    iget p1, p1, Lc01;->a:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0482

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->n:Landroid/widget/EditText;

    new-instance v0, Lwz0;

    invoke-direct {v0, p0}, Lwz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance p2, Ly51;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ly51;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->m:Ly51;

    const p2, 0x7f0a03ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    new-instance v0, Ly51;

    iget-object v2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Ly51;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->m:Ly51;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lvz0;

    invoke-direct {v0, p0}, Lvz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f0a02df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Luz0;

    invoke-direct {p2, p0}, Luz0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->l:Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object p2, Lc01;->b:Lc01;

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/CCANavBarFilter;->a(Ljava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    return-void
.end method

.method public v(Lsb1;)V
    .locals 2

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p1}, Lsb1;->f()Lcom/kedlin/cca/ui/CCANavBarFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentListFragment;->l:Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lc01;->b:Lc01;

    iget v1, v0, Lc01;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    sget-object v0, Lc01;->c:Lc01;

    iget v1, v0, Lc01;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/kedlin/cca/ui/CCANavBarFilter;->b(ILjava/lang/Object;)Lcom/kedlin/cca/ui/CCANavBarFilter;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d015f

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
