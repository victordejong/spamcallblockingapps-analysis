.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel$3;
.super Lcom/kedlin/cca/core/service/BackgroundJob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/kedlin/cca/core/service/BackgroundJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/kedlin/cca/core/service/BackgroundWorker;Landroid/content/Intent;Li91;)V
    .locals 3

    :try_start_0
    new-instance v0, Ld71;

    invoke-direct {v0}, Ld71;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Ld71;->b(Li91;Z)V

    invoke-static {v0}, Lk61;->t(Ld71;)Ld71;

    move-result-object p3

    iget-object p3, p3, Ld71;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    new-array v0, v1, [Ld71$b;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ld71$b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    array-length v2, p3

    if-lez v2, :cond_0

    aget-object p3, p3, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ld71$b;->a()Ld71$b;

    move-result-object p3

    :goto_0
    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/kedlin/cca/core/service/BackgroundWorker;->e(Landroid/content/Intent;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lk61$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->d(Landroid/content/Intent;Lk61$a;)V

    :goto_1
    return-void
.end method
