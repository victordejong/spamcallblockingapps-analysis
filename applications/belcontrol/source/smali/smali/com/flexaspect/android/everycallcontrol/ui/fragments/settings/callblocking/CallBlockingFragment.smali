.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment<",
        "Lj11;",
        ">;",
        "Lm91$b;"
    }
.end annotation


# instance fields
.field public n:Lfd;

.field public o:[Ljava/lang/String;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Landroid/app/AlertDialog;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;-><init>()V

    new-instance v0, Lrw0;

    invoke-direct {v0}, Lrw0;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->n:Lfd;

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->o:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r:I

    return-void
.end method

.method private synthetic O()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic Q(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkq0;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->t0(Lkq0;IZ)V

    return-void
.end method

.method private synthetic S(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkq0;

    invoke-virtual {v1}, Lkq0;->d()Lk01;

    move-result-object v1

    sget-object v2, Li11;->f:Li11;

    const-string v3, "purchase_dlg"

    if-ne v1, v2, :cond_3

    sget-object p3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_0

    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->n:Lfd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lfd;->show(Lnd;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p3, Lr71$a;->g:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p2, v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v1, "COMMUNITY_BLACKLIST"

    invoke-static {p2, v1}, Loe1;->m0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :cond_1
    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lr71$a;->h:Lr71$a;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkq0;

    invoke-virtual {v0}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v1, Li11;->g:Li11;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    invoke-static {}, Lo71;->d()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v2, Li11;->j:Li11;

    if-ne v1, v2, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lv01;

    invoke-direct {v1, p0, p1, p3, p2}, Lv01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    sget-object p3, Li11;->k:Li11;

    if-ne v1, p3, :cond_5

    sget-object p3, Lr71$a;->x:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_5
    sget-object p3, Li11;->l:Li11;

    if-ne v1, p3, :cond_6

    sget-object p3, Lr71$a;->y:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_6
    sget-object p3, Li11;->m:Li11;

    if-ne v1, p3, :cond_7

    sget-object p3, Lr71$a;->z:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_7
    sget-object p3, Li11;->n:Li11;

    if-ne v1, p3, :cond_8

    sget-object p3, Lr71$a;->A:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_8
    sget-object p3, Li11;->o:Li11;

    if-ne v1, p3, :cond_9

    sget-object p3, Lr71$a;->B:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_9
    sget-object p3, Li11;->p:Li11;

    if-ne v1, p3, :cond_a

    sget-object p3, Lr71$a;->C:Lr71$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void

    :cond_a
    sget-object p3, Li11;->q:Li11;

    if-ne v1, p3, :cond_d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lr71$a;->D:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q0(ILjava/util/List;)V

    goto :goto_1

    :cond_b
    sget-object p2, Lr71$a;->D:Lr71$a;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lr71$a;->k(Ljava/lang/Boolean;)V

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :cond_c
    :goto_1
    return-void

    :cond_d
    sget-object p3, Li11;->g:Li11;

    if-ne v1, p3, :cond_10

    sget-object p3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_e

    sget-object p3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_e

    move-object p3, p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->n:Lfd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lfd;->show(Lnd;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_f

    sget-object p3, Lr71$a;->g:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-nez p3, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->s0(ILjava/util/List;)V

    goto :goto_2

    :cond_f
    sget-object p3, Lr71$a;->h:Lr71$a;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-static {}, Lo71;->d()V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p0, p2, p3, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    :goto_2
    return-void

    :cond_10
    sget-object p1, Li11;->h:Li11;

    if-ne v1, p1, :cond_14

    invoke-static {}, Lfa1;->e()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    move-object v0, p1

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    goto :goto_3

    :cond_13
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r0()V

    :cond_14
    :goto_3
    return-void
.end method

.method private synthetic U()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1102fb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic W(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    new-instance v1, Le11;

    invoke-direct {v1, p0, p1}, Le11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lnu0;->g(Ljava/util/List;Lst0;)V

    return-void
.end method

.method private synthetic Y(Landroid/widget/NumberPicker;ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r:I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->o:[Ljava/lang/String;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object v0, p1, p5

    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lr71$a;->E:Lr71$a;

    invoke-virtual {p1, v0}, Lr71$a;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p1, Lr71$a;->D:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic a0(ILjava/util/List;Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p3, Lr71$a;->D:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic c0(ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p3, Lr71$a;->D:Lr71$a;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method

.method private synthetic g0(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lfa1;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Lfa1;->M(Landroid/app/Activity;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Lfa1;->A(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loe1;->a0(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic i0(ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p3, Lr71$a;->h:Lr71$a;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic k0(Ljava/util/List;ILandroid/content/DialogInterface;I)V
    .locals 1

    sget-object p3, Lr71$a;->g:Lr71$a;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    sget-object p3, Lr71$a;->h:Lr71$a;

    invoke-virtual {p3, p4}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-virtual {p0, p3, p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic m0(ILjava/util/List;Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p3, Lr71$a;->h:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->J(ZILjava/util/List;)V

    return-void
.end method

.method private synthetic o0(Lkq0;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-static {p3}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p3

    invoke-virtual {p3}, Li91;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lea1;->a:Z

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lea1;->d(Li91;)V

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object p3

    invoke-virtual {p3}, Lr71$b;->h()V

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->u0(Lkq0;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f11063b

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lkq0;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lf11;

    invoke-direct {v0, p0}, Lf11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    :goto_0
    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->j:Lfv0;

    check-cast v0, Lj11;

    iget-object v0, v0, Lj11;->g:Lve;

    new-instance v1, Lb11;

    invoke-direct {v1, p0}, Lb11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->g(Lqe;Lwe;)V

    return-void
.end method

.method public M()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N()V
    .locals 8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->o:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, ""

    move-object v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v6, v0, v4

    sget-object v7, Lr71$a;->E:Lr71$a;

    invoke-virtual {v7}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v3, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v3, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public synthetic P()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->O()V

    return-void
.end method

.method public synthetic R(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->Q(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic T(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->S(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic V()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->U()V

    return-void
.end method

.method public synthetic X(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->W(Ljava/util/List;)V

    return-void
.end method

.method public synthetic Z(Landroid/widget/NumberPicker;ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->Y(Landroid/widget/NumberPicker;ILjava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic b0(ILjava/util/List;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->a0(ILjava/util/List;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic d0(ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->c0(ILjava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic f0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->e0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic h0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->g0(Landroid/view/View;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-object p2, Lm91$c;->d:Lm91$c;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnu0;->d(I)Lkq0;

    move-result-object p1

    sget-object p3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lr71$a;->g:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lkq0;->g(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p1

    invoke-interface {p1, v0}, Lk01;->a(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1, v1}, Lnu0;->d(I)Lkq0;

    move-result-object p1

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object v0

    sget-object v2, Li11;->g:Li11;

    if-ne v0, v2, :cond_2

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lr71$a;->h:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lr71$a;->g:Lr71$a;

    invoke-virtual {p3}, Lr71$a;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-virtual {p1, p2}, Lkq0;->g(Z)V

    invoke-virtual {p1}, Lkq0;->d()Lk01;

    move-result-object p1

    invoke-interface {p1, p2}, Lk01;->a(Z)V

    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lu01;

    invoke-direct {p2, p0}, Lu01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public synthetic j0(ILjava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->i0(ILjava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic l0(Ljava/util/List;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->k0(Ljava/util/List;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic n0(ILjava/util/List;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->m0(ILjava/util/List;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->N()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lqb1;->onPause()V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    sget-object v0, Lm91$c;->d:Lm91$c;

    sget-object v1, Lm91$c;->j:Lm91$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic p0(Lkq0;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->o0(Lkq0;ILjava/lang/String;)V

    return-void
.end method

.method public final q0(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lkq0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->r:I

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->p:Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v2}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110212

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f110211

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lz01;

    invoke-direct {v2, p0, v1, p1, p2}, Lz01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Landroid/widget/NumberPicker;ILjava/util/List;)V

    const v1, 0x7f11012a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lh11;

    invoke-direct {v1, p0, p1, p2}, Lh11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lg11;

    invoke-direct {v1, p0, p1, p2}, Lg11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;ILjava/util/List;)V

    const p1, 0x7f110285

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final r0()V
    .locals 9

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Dialog not inflated"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lfa1;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f1100f1

    goto :goto_0

    :cond_1
    const v1, 0x7f1100f0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    const v1, 0x7f0a015b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ld11;

    invoke-direct {v1, p0}, Ld11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->q:Landroid/app/AlertDialog;

    const v1, 0x7f0a0280

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc11;

    invoke-direct {v1, p0}, Lc11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s0(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lkq0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110213

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lx01;

    invoke-direct {v1, p0, p2, p1}, Lx01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Ljava/util/List;I)V

    const v2, 0x7f11012a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lw01;

    invoke-direct {v1, p0, p1, p2}, Lw01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, La11;

    invoke-direct {v1, p0, p1, p2}, La11;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;ILjava/util/List;)V

    const p1, 0x7f110285

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final t0(Lkq0;IZ)V
    .locals 3

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast p3, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-string v2, "BLOCKED_LIST_FULL"

    invoke-static {p3, v2}, Loe1;->l0(Lcom/kedlin/cca/ui/CCAFragmentActivity;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Lb91;->m(I)Li91;

    move-result-object p3

    invoke-static {}, Lb91;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Li91;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Li91;->s()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lb91;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v1

    iput-boolean v2, v1, Lea1;->a:Z

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v1

    invoke-virtual {v1}, Lr71$b;->h()V

    invoke-virtual {v0, p3}, Lea1;->d(Li91;)V

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->u0(Lkq0;I)V

    return-void

    :cond_1
    iget-object p3, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v0, Ly01;

    invoke-direct {v0, p0, p1, p2}, Ly01;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;Lkq0;I)V

    invoke-static {p3, v0}, Loe1;->i0(Landroid/app/Activity;Loe1$d;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f11063b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lkq0;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lkq0;->g(Z)V

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object p3

    iput-boolean v1, p3, Lea1;->a:Z

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object p3

    invoke-virtual {p3}, Lr71$b;->h()V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final u0(Lkq0;I)V
    .locals 4

    invoke-static {}, Lr71$b;->f()Lr71$b;

    move-result-object v0

    iget-boolean v1, v0, Lea1;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lkq0;->g(Z)V

    const v2, 0x7f1100f4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lea1;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkq0;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {v0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/callblocking/CallBlockingFragment;->M()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d002f

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    const-class v0, Lj11;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->h:Ljava/lang/Class;

    return-void
.end method
