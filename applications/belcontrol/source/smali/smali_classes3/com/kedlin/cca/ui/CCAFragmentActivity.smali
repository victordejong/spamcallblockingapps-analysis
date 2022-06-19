.class public abstract Lcom/kedlin/cca/ui/CCAFragmentActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static synthetic p(Lcom/kedlin/cca/ui/CCAFragmentActivity;Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic x(Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0, p2}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    const p4, 0x7f0a04b3

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Li91;->s()Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p1}, Li91;->q()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_1

    :cond_1
    const p4, 0x7f0a0598

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    const p1, 0x7f11020b

    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f0a06a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a00db

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p4, v0, v3}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lq71$g;->c:Lq71$g;

    invoke-virtual {p0, p1, p2, p4}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->q(Li91;Ljava/lang/String;Lq71$g;)V

    invoke-virtual {p3}, Landroid/app/AlertDialog;->cancel()V

    const p1, 0x7f11020c

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p3}, Landroid/app/AlertDialog;->cancel()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lke1;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public on_report_failure(Ljava/lang/Integer;Ljava/lang/String;Lk61$a;)V
    .locals 0

    return-void
.end method

.method public on_report_success()V
    .locals 0

    return-void
.end method

.method public q(Li91;Ljava/lang/String;Lq71$g;)V
    .locals 6

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    invoke-virtual {v0, p1}, Lx81;->P(Li91;)V

    iget-wide v1, v0, Lx81;->d:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    const-class v1, Lq71$e;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, v0, Lx81;->j:Ljava/util/EnumSet;

    iput-object p1, v0, Lx81;->g:Li91;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Li91;->l()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lx81;->f:Ljava/lang/String;

    :cond_1
    iput-object p3, v0, Lx81;->l:Lq71$g;

    invoke-virtual {v0}, Lx81;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lq71$g;->c:Lq71$g;

    if-ne p3, p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100fb

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100b4

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f1102c4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lx81;->f:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, v0, Lx81;->f:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lx81;->g:Li91;

    invoke-virtual {v0}, Li91;->l()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Z)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    const-string v0, "Unable to call fragment "

    const v1, 0x7f0a02f6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lqb1;

    if-eqz v3, :cond_1

    move-object p2, v2

    check-cast p2, Lqb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lqb1;->w(Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object p1, v2

    check-cast p1, Lqb1;

    invoke-virtual {p1, p3}, Lqb1;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Lw91;->h(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lrb1;

    if-eqz v3, :cond_6

    move-object p2, v2

    check-cast p2, Lrb1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lrb1;->E(Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object p1, v2

    check-cast p1, Lrb1;

    invoke-virtual {p1, p3}, Lrb1;->w(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lnd;->K0(Ljava/lang/String;I)Z

    move-result p2

    if-nez p4, :cond_2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object p2

    invoke-virtual {p2}, Lnd;->j()Ltd;

    move-result-object p2

    const p4, 0x7f0a02c9

    move-object v0, v2

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p4, v0, p1}, Ltd;->r(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    if-eqz p6, :cond_3

    const p3, 0x7f010024

    const p4, 0x7f010026

    invoke-virtual {p2, p3, p4}, Ltd;->s(II)Ltd;

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p3}, Ltd;->w(I)Ltd;

    :goto_2
    if-eqz p5, :cond_4

    invoke-virtual {p2, p1}, Ltd;->f(Ljava/lang/String;)Ltd;

    :cond_4
    invoke-virtual {p2}, Ltd;->h()I

    check-cast v2, Landroidx/fragment/app/Fragment;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    :cond_5
    return-object v1

    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lj91;->v(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V

    return-void
.end method

.method public w(Ljava/lang/String;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Ljava/lang/Long;)V
    .locals 10

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0165

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Dialog not inflated"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const v1, 0x7f0a04b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p1, 0x7f0a06a8

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    invoke-static {}, Lr71;->n()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljava/lang/String;

    const v5, 0x7f1101a7

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v3, v9

    const-class v5, Li71;

    invoke-static {v2, v5}, Lka1;->d(Landroid/util/SparseArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Li71;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6

    add-int/lit8 v8, v4, 0x1

    iget-object v7, v7, Li71;->a:Ljava/lang/String;

    aput-object v7, v3, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3

    const v4, 0x1090003

    goto :goto_1

    :cond_3
    const v4, 0x7f0d0170

    :goto_1
    invoke-direct {v2, p0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const v2, 0x7f0a015b

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;

    invoke-direct {v3, p0, v1, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity$a;-><init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_4

    const v2, 0x7f0a005c

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/kedlin/cca/ui/CCAFragmentActivity$b;-><init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/Long;Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const p2, 0x7f0a055e

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lwa1;

    invoke-direct {p3, p0, v1, v0, p1}, Lwa1;-><init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00db

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public synthetic y(Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->x(Landroid/widget/EditText;Landroid/view/View;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public final z(Li91;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/kedlin/cca/ui/CCAFragmentActivity$5;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/CCAFragmentActivity$5;-><init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const-string p1, "report"

    invoke-static {p1, p0, v0, v1}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    return-void
.end method
