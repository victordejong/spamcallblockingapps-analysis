.class public final Lcom/kedlin/cca/core/PushListenerService$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/core/PushListenerService;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/core/PushListenerService$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lw91$a;)V
    .locals 1

    sget-object v0, Lr71$a;->K:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Lcom/kedlin/cca/core/PushListenerService;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw91$a;->C:Lw91$a;

    invoke-virtual {p0, v1}, Lcom/kedlin/cca/core/PushListenerService$c;->a(Lw91$a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FCM Registration Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kedlin/cca/core/PushListenerService$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lw91$a;->B:Lw91$a;

    invoke-virtual {p0, v1}, Lcom/kedlin/cca/core/PushListenerService$c;->a(Lw91$a;)V

    sget-object v1, Lr71$a;->K:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kedlin/cca/core/PushListenerService$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/kedlin/cca/core/PushListenerService$c;->a:Ljava/lang/String;

    invoke-static {v2}, Lk61;->C(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Lw91$a;->E:Lw91$a;

    invoke-virtual {p0, v1}, Lcom/kedlin/cca/core/PushListenerService$c;->a(Lw91$a;)V

    const-string v1, "Failed to send token"

    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    sget-object v2, Lw91$a;->A:Lw91$a;

    invoke-virtual {p0, v2}, Lcom/kedlin/cca/core/PushListenerService$c;->a(Lw91$a;)V

    iget-object v2, p0, Lcom/kedlin/cca/core/PushListenerService$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr71$a;->o(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    sget-object v2, Lw91$a;->D:Lw91$a;

    invoke-virtual {p0, v2}, Lcom/kedlin/cca/core/PushListenerService$c;->a(Lw91$a;)V

    const-string v2, "Failed to send token"

    invoke-static {p0, v2, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
