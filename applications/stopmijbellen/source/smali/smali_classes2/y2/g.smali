.class public final synthetic Ly2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ly2/n;

.field public final synthetic b:Lu2/i;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ly2/n;Lu2/i;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/g;->a:Ly2/n;

    iput-object p2, p0, Ly2/g;->b:Lu2/i;

    iput p3, p0, Ly2/g;->c:I

    iput-object p4, p0, Ly2/g;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Ly2/g;->a:Ly2/n;

    iget-object v1, p0, Ly2/g;->b:Lu2/i;

    iget v2, p0, Ly2/g;->c:I

    iget-object v3, p0, Ly2/g;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 1
    :try_start_0
    iget-object v5, v0, Ly2/n;->f:La3/a;

    iget-object v6, v0, Ly2/n;->c:Lz2/c;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ly2/l;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v7}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    .line 2
    iget-object v5, v0, Ly2/n;->a:Landroid/content/Context;

    const-string v6, "connectivity"

    .line 3
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 4
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-nez v8, :cond_1

    .line 6
    iget-object v5, v0, Ly2/n;->f:La3/a;

    new-instance v6, Ly2/i;

    invoke-direct {v6, v0, v1, v2}, Ly2/i;-><init>(Ly2/n;Lu2/i;I)V

    invoke-interface {v5, v6}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v1, v2}, Ly2/n;->a(Lu2/i;I)V
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 8
    :catch_0
    :try_start_1
    iget-object v0, v0, Ly2/n;->d:Ly2/t;

    add-int/2addr v2, v4

    invoke-interface {v0, v1, v2}, Ly2/t;->a(Lu2/i;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 10
    throw v0
.end method
