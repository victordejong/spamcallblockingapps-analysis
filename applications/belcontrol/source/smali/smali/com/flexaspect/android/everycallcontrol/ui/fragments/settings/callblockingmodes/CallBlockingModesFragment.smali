.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "La21;",
        ">;"
    }
.end annotation


# instance fields
.field public l:Landroid/widget/RadioGroup;

.field public m:Landroid/widget/RadioGroup;

.field public n:Landroid/widget/RadioGroup;

.field public o:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic M(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p1, La21;

    invoke-virtual {p1}, La21;->m()V

    return-void
.end method

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Loe1;->W(Z)V

    return-void
.end method

.method private synthetic P(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->m()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic R(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->m()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic T(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->n()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic V(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->n()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic X(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;Lq71$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m0(Lq71$a;)V

    return-void
.end method

.method public static synthetic Y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;Lq71$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l0(Lq71$c;)V

    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->J()V

    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->J()V

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->K()V

    return-void
.end method

.method private synthetic f0(Landroid/widget/RadioGroup;I)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, La21;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p2, p1}, La21;->o(I)V

    return-void
.end method

.method private synthetic h0(Landroid/widget/RadioGroup;I)V
    .locals 0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast p2, La21;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p2, p1}, La21;->p(I)V

    return-void
.end method

.method public static synthetic j0(Landroid/widget/RadioGroup;I)V
    .locals 1

    invoke-static {}, Lq71$c;->values()[Lq71$c;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    const v0, 0x7f0a04ff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    aget-object p0, p1, p0

    :goto_0
    invoke-static {p0}, Lq71$c;->c(Lq71$c;)V

    return-void
.end method

.method public static synthetic k0(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;Lq71$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->n0(Lq71$a;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    iget-object v0, v0, La21;->g:Lve;

    new-instance v1, Lu11;

    invoke-direct {v1, p0}, Lu11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    iget-object v0, v0, La21;->h:Lve;

    new-instance v1, Ly11;

    invoke-direct {v1, p0}, Ly11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    iget-object v0, v0, La21;->j:Lve;

    new-instance v1, Lw11;

    invoke-direct {v1, p0}, Lw11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public final J()V
    .locals 5

    invoke-static {}, Lq71$a;->a()Lq71$a;

    move-result-object v0

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lq71$a;->g:Lq71$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lfa1;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lfa1;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lq71$a;->g:Lq71$a;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v1, Ls11;

    invoke-direct {v1, p0}, Ls11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-static {v0, v1}, Loe1;->v0(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Low0;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    return-void

    :cond_2
    invoke-static {}, Lfa1;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lq71$a;->f:Lq71$a;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v2, Lx11;

    invoke-direct {v2, p0}, Lx11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-static {v1, v0, v2}, Loe1;->f0(Landroid/content/Context;Lq71$a;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    return-void

    :cond_3
    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lq71$a;->d:Lq71$a;

    if-ne v0, v1, :cond_4

    sget-object v1, Lr71$a;->v:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Low0;

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    sget-object v2, Low0$b;->h:Low0$b;

    new-instance v3, Lv11;

    invoke-direct {v3, p0}, Lv11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    sget-object v4, Lq11;->a:Lq11;

    invoke-direct {v0, v1, v2, v3, v4}, Low0;-><init>(Landroid/content/Context;Low0$b;Landroid/content/DialogInterface$OnCancelListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lr71$a;->v:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    sget-object v1, Lq71$a;->d:Lq71$a;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Loe1;->e0(Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    :cond_6
    return-void
.end method

.method public final K()V
    .locals 3

    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object v0

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lq71$a;->g:Lq71$a;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lfa1;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lfa1;->z()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lq71$a;->g:Lq71$a;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v1, Lp11;

    invoke-direct {v1, p0}, Lp11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-static {v0, v1}, Loe1;->v0(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Low0;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    return-void

    :cond_2
    invoke-static {}, Lfa1;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lq71$a;->f:Lq71$a;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v2, Ln11;

    invoke-direct {v2, p0}, Ln11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-static {v1, v0, v2}, Loe1;->f0(Landroid/content/Context;Lq71$a;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    :cond_3
    return-void
.end method

.method public L()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic N(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->M(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic Q(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->P(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic S(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->R(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic U(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->T(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic W(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->V(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic a0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->Z(Landroid/view/View;)V

    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->b0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->d0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic g0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->f0(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public synthetic i0(Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->h0(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public final l0(Lq71$c;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->n:Landroid/widget/RadioGroup;

    sget-object v1, Lq71$c;->a:Lq71$c;

    if-ne p1, v1, :cond_0

    const p1, 0x7f0a04ff

    goto :goto_0

    :cond_0
    const p1, 0x7f0a04fe

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public final m0(Lq71$a;)V
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment$a;->a:[I

    invoke-virtual {p1}, Lq71$a;->d()Lq71$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    sget-object v0, Lz11;->f:Lz11;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    sget-object v0, Lz11;->d:Lz11;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    sget-object v0, Lz11;->c:Lz11;

    :goto_0
    invoke-virtual {v0}, Lz11;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    :goto_1
    return-void
.end method

.method public final n0(Lq71$a;)V
    .locals 1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment$a;->a:[I

    invoke-virtual {p1}, Lq71$a;->d()Lq71$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m:Landroid/widget/RadioGroup;

    const v0, 0x7f0a050a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0505

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->o:Landroid/app/Dialog;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    if-eqz v0, :cond_0

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->m()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, La21;

    invoke-virtual {v0}, La21;->n()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a04f8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    sget-object p2, Lz11;->d:Lz11;

    invoke-virtual {p2}, Lz11;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lk11;

    invoke-direct {v0, p0}, Lk11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p2, Lz11;->f:Lz11;

    invoke-virtual {p2}, Lz11;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lr11;

    invoke-direct {v0, p0}, Lr11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a04f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m:Landroid/widget/RadioGroup;

    const v0, 0x7f0a050a

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lo11;

    invoke-direct {v0, p0}, Lo11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a04fa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->n:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->l:Landroid/widget/RadioGroup;

    new-instance p2, Lt11;

    invoke-direct {p2, p0}, Lt11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->m:Landroid/widget/RadioGroup;

    new-instance p2, Ll11;

    invoke-direct {p2, p0}, Ll11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->n:Landroid/widget/RadioGroup;

    sget-object p2, Lm11;->a:Lm11;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblockingmodes/CallBlockingModesFragment;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d0031

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, La21;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
