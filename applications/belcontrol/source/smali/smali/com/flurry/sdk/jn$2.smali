.class public final Lcom/flurry/sdk/jn$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/jn;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {p2}, Lcom/flurry/sdk/a$a;->a(Landroid/os/IBinder;)Lcom/flurry/sdk/a;

    move-result-object p2

    invoke-static {p2}, Lcom/flurry/sdk/jn;->a(Lcom/flurry/sdk/a;)Lcom/flurry/sdk/a;

    invoke-static {}, Lcom/flurry/sdk/jn;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jn$b;

    const/4 v1, 0x0

    invoke-static {}, Lcom/flurry/sdk/jn;->c()Lcom/flurry/sdk/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jn$b;->b(ILcom/flurry/sdk/a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jn;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/jn;->a()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/jn;->d()Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/sdk/jn;->a(Lcom/flurry/sdk/a;)Lcom/flurry/sdk/a;

    invoke-static {}, Lcom/flurry/sdk/jn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/jn$b;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/flurry/sdk/jn$b;->b(ILcom/flurry/sdk/a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/jn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
