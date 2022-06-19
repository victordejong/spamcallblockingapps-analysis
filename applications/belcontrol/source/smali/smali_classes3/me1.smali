.class public Lme1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme1$c;,
        Lme1$d;
    }
.end annotation


# static fields
.field public static a:Lna1;

.field public static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme1;->b:Ljava/util/ArrayList;

    const-class v0, Lme1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lme1;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lna1;
    .locals 1

    sget-object v0, Lme1;->a:Lna1;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lme1;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lme1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Lcom/kedlin/cca/core/util/billing/Purchase;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore success! Item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lr71;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object p0, Lr71$a;->M0:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object p0, Lr71$a;->N0:Lr71$a;

    :goto_1
    invoke-virtual {p0, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object p0, Lr71$a;->O0:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {p0, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    return-void

    :cond_0
    sget-object v0, Lr71;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lr71;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lr71$a;->N0:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "callcontrol.all.managed.pro_lifetime"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lr71$a;->M0:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    sget-object p0, Lr71$a;->O0:Lr71$a;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "callcontrol.all.managed.no_ads"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lr71$a;->P0:Lr71$a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lr71$a;->k(Ljava/lang/Boolean;)V

    :cond_4
    return-void
.end method

.method public static declared-synchronized g()Z
    .locals 6

    const-class v0, Lme1;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lv81;

    invoke-direct {v1}, Lv81;-><init>()V

    invoke-virtual {v1}, Lv81;->H()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv81;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v3, Lv81;->d:Ljava/lang/String;

    sget-object v5, Lv81$a;->b:Lv81$a;

    invoke-static {v4, v5}, Lv81;->F(Ljava/lang/String;Lv81$a;)Z

    new-instance v4, Ly61;

    invoke-direct {v4, v3}, Ly61;-><init>(Lv81;)V

    invoke-static {v4}, Lk61;->x(Ly61;)V

    iget-object v4, v3, Lv81;->d:Ljava/lang/String;

    sget-object v5, Lv81$a;->c:Lv81$a;

    invoke-static {v4, v5}, Lv81;->F(Ljava/lang/String;Lv81$a;)Z
    :try_end_1
    .catch Lk61$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    sget-object v2, Lme1;->c:Ljava/lang/String;

    const-string v4, "Error"

    invoke-static {v2, v4, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v3, Lv81;->d:Ljava/lang/String;

    sget-object v3, Lv81$a;->a:Lv81$a;

    invoke-static {v2, v3}, Lv81;->F(Ljava/lang/String;Lv81$a;)Z

    throw v1

    :catch_0
    move-exception v1

    sget-object v2, Lme1;->c:Ljava/lang/String;

    const-string v4, "API ERROR"

    invoke-static {v2, v4, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v3, Lv81;->d:Ljava/lang/String;

    sget-object v3, Lv81$a;->a:Lv81$a;

    invoke-static {v2, v3}, Lv81;->F(Ljava/lang/String;Lv81$a;)Z

    throw v1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public e()V
    .locals 2

    sget-object v0, Lm91$c;->d:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public f()V
    .locals 3

    new-instance v0, Lna1;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lr71;->w()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lna1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lme1;->a:Lna1;

    :try_start_0
    new-instance v1, Lme1$b;

    invoke-direct {v1, p0}, Lme1$b;-><init>(Lme1;)V

    invoke-virtual {v0, v1}, Lna1;->v(Lna1$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
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

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    sget-object p1, Lme1;->b:Ljava/util/ArrayList;

    sget-object p2, Lr71;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lme1;->b:Ljava/util/ArrayList;

    sget-object p2, Lr71;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lme1;->b:Ljava/util/ArrayList;

    sget-object p2, Lr71;->g:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lme1;->b:Ljava/util/ArrayList;

    sget-object p2, Lr71;->i:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lme1;->b:Ljava/util/ArrayList;

    sget-object p2, Lr71;->j:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lna1;

    invoke-static {}, Lfa1;->k()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lr71;->w()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lna1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p1, Lme1;->a:Lna1;

    :try_start_0
    new-instance p2, Lme1$a;

    invoke-direct {p2, p0}, Lme1$a;-><init>(Lme1;)V

    invoke-virtual {p1, p2}, Lna1;->v(Lna1$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lj91;->u(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
