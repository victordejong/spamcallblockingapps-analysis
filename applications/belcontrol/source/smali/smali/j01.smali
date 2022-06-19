.class public Lj01;
.super Lfv0;
.source ""


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

.field public final j:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/List<",
            "Lkq0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    new-instance p1, Lj01$a;

    invoke-direct {p1, p0}, Lj01$a;-><init>(Lj01;)V

    iput-object p1, p0, Lj01;->j:Lve;

    invoke-static {}, Lr71$a;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj01;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic m(Lj01;)V
    .locals 0

    invoke-virtual {p0}, Lj01;->q()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-virtual {p0}, Lj01;->n()V

    invoke-super {p0}, Lfv0;->e()V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lj01;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lr71$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lj01;->o()V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    invoke-static {}, Lr71$a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj01;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lj01;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kedlin/cca/core/CCAService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/kedlin/cca/core/CCAService;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lj01;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v1, v0}, Lfa1;->O(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lm91;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lj01;->h:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method public final q()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Li01;->values()[Li01;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lkq0;

    invoke-direct {v5, v4}, Lkq0;-><init>(Lk01;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj01;->j:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
