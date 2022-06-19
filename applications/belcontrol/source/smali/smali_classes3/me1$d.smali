.class public Lme1$d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    invoke-static {}, Lme1;->a()Lna1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lme1;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lna1;->q(ZLjava/util/List;)Lpa1;

    move-result-object v0

    invoke-static {}, Lme1;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpa1;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lr71;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lr71;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lr71;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lr71$a;->N0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "callcontrol.all.managed.pro_lifetime"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lr71$a;->M0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lr71$a;->O0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "callcontrol.all.managed.no_ads"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lr71$a;->P0:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Lpa1;->d(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/Purchase;

    move-result-object v2

    invoke-static {v2}, Lv81;->E(Lcom/kedlin/cca/core/util/billing/Purchase;)Z
    :try_end_0
    .catch Lma1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lme1;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    sget-object v1, Lm91$c;->j:Lm91$c;

    invoke-static {p0, v1, p1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    throw v0

    :catch_0
    :cond_6
    sget-object v0, Lm91$c;->j:Lm91$c;

    invoke-static {p0, v0, p1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme1$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
