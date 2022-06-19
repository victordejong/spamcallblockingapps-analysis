.class public Lna1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1;->e(Ljava/util/List;Lna1$d;Lna1$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lna1$d;

.field public final synthetic c:Landroid/os/Handler;

.field public final synthetic d:Lna1$e;

.field public final synthetic f:Lna1;


# direct methods
.method public constructor <init>(Lna1;Ljava/util/List;Lna1$d;Landroid/os/Handler;Lna1$e;)V
    .locals 0

    iput-object p1, p0, Lna1$c;->f:Lna1;

    iput-object p2, p0, Lna1$c;->a:Ljava/util/List;

    iput-object p3, p0, Lna1$c;->b:Lna1$d;

    iput-object p4, p0, Lna1$c;->c:Landroid/os/Handler;

    iput-object p5, p0, Lna1$c;->d:Lna1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lna1$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/core/util/billing/Purchase;

    :try_start_0
    iget-object v3, p0, Lna1$c;->f:Lna1;

    invoke-virtual {v3, v2}, Lna1;->c(Lcom/kedlin/cca/core/util/billing/Purchase;)V

    new-instance v3, Loa1;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kedlin/cca/core/util/billing/Purchase;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lma1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lma1;->a()Loa1;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lna1$c;->f:Lna1;

    invoke-virtual {v1}, Lna1;->g()V

    iget-object v1, p0, Lna1$c;->f:Lna1;

    iget-boolean v1, v1, Lna1;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lna1$c;->b:Lna1$d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lna1$c;->c:Landroid/os/Handler;

    new-instance v2, Lna1$c$a;

    invoke-direct {v2, p0, v0}, Lna1$c$a;-><init>(Lna1$c;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lna1$c;->f:Lna1;

    iget-boolean v1, v1, Lna1;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lna1$c;->d:Lna1$e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lna1$c;->c:Landroid/os/Handler;

    new-instance v2, Lna1$c$b;

    invoke-direct {v2, p0, v0}, Lna1$c$b;-><init>(Lna1$c;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
