.class public Lme1$c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
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

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lr71;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lr71;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lr71;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lr71;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lr71;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lme1;->a()Lna1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lna1;->q(ZLjava/util/List;)Lpa1;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpa1;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lpa1;->d(Ljava/lang/String;)Lcom/kedlin/cca/core/util/billing/Purchase;

    move-result-object v1

    new-instance v2, Lv81;

    invoke-direct {v2}, Lv81;-><init>()V

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lv81;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/Purchase;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lv81;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/Purchase;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lda1;->f([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lv81;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/kedlin/cca/core/util/billing/Purchase;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lv81;->h:Ljava/lang/String;
    :try_end_0
    .catch Lma1; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ly61;

    invoke-direct {v1, v2}, Ly61;-><init>(Lv81;)V

    invoke-static {v1}, Lk61;->x(Ly61;)V
    :try_end_1
    .catch Lk61$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lme1;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error"

    :goto_1
    invoke-static {v2, v3, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lme1;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "API ERROR"
    :try_end_2
    .catch Lma1; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lme1$c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
