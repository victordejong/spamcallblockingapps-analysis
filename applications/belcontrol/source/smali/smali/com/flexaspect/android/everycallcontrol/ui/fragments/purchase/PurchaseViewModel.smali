.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;
.super Lfv0;
.source ""

# interfaces
.implements Lm91$b;
.implements Lna1$h;


# instance fields
.field public g:Lna1;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroidx/fragment/app/Fragment;

.field public k:Landroidx/fragment/app/FragmentActivity;

.field public l:Ljava/lang/String;

.field public m:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public n:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/ArrayList<",
            "Lcom/kedlin/cca/core/util/billing/SkuDetails;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->n:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    return-void
.end method

.method public static synthetic m(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Lna1;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    return-object p0
.end method

.method public static synthetic n(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Loa1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->z(Loa1;)V

    return-void
.end method

.method public static synthetic o(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic p(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Lcom/kedlin/cca/core/util/billing/Purchase;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->A(Lcom/kedlin/cca/core/util/billing/Purchase;Z)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/kedlin/cca/core/util/billing/Purchase;Z)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;

    invoke-direct {v0, p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Lcom/kedlin/cca/core/util/billing/Purchase;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->w(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    return-void
.end method

.method public a(Loa1;Lpa1;)V
    .locals 5

    invoke-virtual {p1}, Loa1;->c()Z

    move-result v0

    if-nez v0, :cond_14

    if-nez p2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lpa1;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found purchase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lr71;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :cond_3
    sget-object v3, Lr71;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :cond_5
    sget-object v3, Lr71;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lr71$a;->N0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_6
    move-object v1, v2

    :cond_7
    const-string v3, "callcontrol.all.managed.pro_lifetime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v3, "callcontrol.all.managed.no_ads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lr71$a;->P0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2, v2}, Lpa1;->d(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/Purchase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->A(Lcom/kedlin/cca/core/util/billing/Purchase;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->n:Lve;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lve;->j(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\\(.*?\\)"

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lr71;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p2, v2}, Lpa1;->e(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/SkuDetails;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_d
    move-object v3, v0

    :goto_3
    invoke-virtual {v2, v3}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lge;->g()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f11022b

    invoke-virtual {v2, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lr71;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {p2, v2}, Lpa1;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p2, v2}, Lpa1;->d(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/Purchase;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->r(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    :cond_10
    invoke-virtual {p2, v2}, Lpa1;->e(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/SkuDetails;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_12
    move-object v4, v0

    :goto_5
    invoke-virtual {v2, v4}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->g(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->o:Lve;

    invoke-virtual {p2, p1}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_14
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SKU retrieval error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->z(Loa1;)V

    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
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

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received notification "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object p2, Lm91$c;->l:Lm91$c;

    if-ne p1, p2, :cond_0

    check-cast p3, Lm91$a;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    if-eqz p1, :cond_0

    iget p2, p3, Lm91$a;->a:I

    iget v0, p3, Lm91$a;->b:I

    iget-object p3, p3, Lm91$a;->c:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0, p3}, Lna1;->l(IILandroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    invoke-virtual {p1}, Lna1;->g()V

    :cond_0
    return-void
.end method

.method public r(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V

    invoke-virtual {v0, p1, v1}, Lna1;->d(Ljava/util/List;Lna1$e;)V

    return-void
.end method

.method public final s(Loa1;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Loa1;->b()I

    move-result v1

    const/16 v2, -0x3f2

    if-eq v1, v2, :cond_7

    const/16 v2, -0x3f1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v0, ""

    goto :goto_1

    :pswitch_0
    const v1, 0x7f1102e1

    goto :goto_0

    :pswitch_1
    const v1, 0x7f1102e7

    goto :goto_0

    :pswitch_2
    const v1, 0x7f1102e0

    goto :goto_0

    :pswitch_3
    const v1, 0x7f1102ee

    goto :goto_0

    :pswitch_4
    const v1, 0x7f1102e9

    goto :goto_0

    :pswitch_5
    const v1, 0x7f1102ec

    goto :goto_0

    :pswitch_6
    const v1, 0x7f1102e6

    goto :goto_0

    :cond_0
    const v1, 0x7f1102e4

    goto :goto_0

    :cond_1
    const v1, 0x7f1102e3

    goto :goto_0

    :cond_2
    const v1, 0x7f1102e8

    goto :goto_0

    :cond_3
    const v1, 0x7f1102e5

    goto :goto_0

    :cond_4
    const v1, 0x7f1102eb

    goto :goto_0

    :cond_5
    :pswitch_7
    const v1, 0x7f1102ed

    goto :goto_0

    :cond_6
    const v1, 0x7f1102ea

    goto :goto_0

    :cond_7
    const v1, 0x7f1102e2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loa1;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loa1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " convert to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch -0x3ef
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ALLOWED_LIST_FULL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BLOCKED_LIST_FULL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "RECENT_CALLS_BANNER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PROMO_COMMUNITY_BLACK_LIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PROMO_ENHANCED_CALLER_ID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "COMMUNITY_BLACKLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CCH_COMMUNITY_BLACKLIST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ENHANCED_CALLER_ID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "LOOKUP_NO_CREDITS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lr71;->d:Ljava/util/List;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lr71;->i:Ljava/util/List;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lr71;->f:Ljava/util/List;

    goto :goto_2

    :cond_2
    sget-object p1, Lr71;->e:Ljava/util/List;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lr71;->d:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lr71;->g:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lr71;->i:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lr71;->j:Ljava/util/List;

    goto :goto_1

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lr71;->f:Ljava/util/List;

    goto :goto_0

    :cond_4
    sget-object p1, Lr71;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    sget-object v0, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lr71$a;->N0:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v(Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/util/billing/SkuDetails;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->d()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    invoke-virtual {p2}, Lcom/kedlin/cca/core/util/billing/SkuDetails;->f()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x271b

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;

    invoke-direct {v5, p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;Ljava/lang/String;)V

    move-object v1, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lna1;->m(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILna1$f;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final w(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 5

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$4;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$4;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->j:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "purchase"

    if-eqz v1, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v4, v1, v0, v3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->f(Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->k:Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v4, v1, v0, v3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->g(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/kedlin/cca/core/service/BackgroundJob;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->j:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->l:Ljava/lang/String;

    new-instance p2, Lna1;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lr71;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lna1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m:Lve;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lve;->j(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V

    invoke-virtual {p1, p2}, Lna1;->v(Lna1$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lm91$c;->l:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public y(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->l:Ljava/lang/String;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->k:Landroidx/fragment/app/FragmentActivity;

    new-instance p2, Lna1;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lr71;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lna1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->m:Lve;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lve;->j(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->g:Lna1;

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$b;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;)V

    invoke-virtual {p1, p2}, Lna1;->v(Lna1$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lm91$c;->l:Lm91$c;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public final z(Loa1;)V
    .locals 1

    new-instance v0, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel;->s(Loa1;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfv0;->j(Ljava/lang/Throwable;)V

    return-void
.end method
