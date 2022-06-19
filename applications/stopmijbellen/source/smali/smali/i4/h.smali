.class public final Li4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/b;


# instance fields
.field public final a:Li4/r;

.field public final b:Li4/f;

.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Li4/r;Li4/f;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Li4/h;->a:Li4/r;

    iput-object p2, p0, Li4/h;->b:Li4/f;

    iput-object p3, p0, Li4/h;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lf8/i;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li4/h;->b:Li4/f;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lp4/c;->a:Lp6/c;

    const-string v2, "unregisterListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "Unregistered Play Core listener should not be null."

    .line 4
    invoke-static {p1, v1}, Ly/d;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lp4/c;->d:Ljava/util/Set;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lp4/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lf8/i;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Li4/h;->b:Li4/f;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v1, v0, Lp4/c;->a:Lp6/c;

    const-string v2, "registerListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "Registered Play Core listener should not be null."

    .line 4
    invoke-static {p1, v1}, Ly/d;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lp4/c;->d:Ljava/util/Set;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0}, Lp4/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Lr4/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li4/h;->a:Li4/r;

    iget-object v1, p0, Li4/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, v0, Li4/r;->a:Lo4/j;

    if-nez v2, :cond_0

    invoke-static {}, Li4/r;->c()Lr4/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v2, Li4/r;->e:Lp6/c;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "completeUpdate(%s)"

    .line 3
    invoke-virtual {v2, v4, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lr4/l;

    .line 4
    invoke-direct {v2}, Lr4/l;-><init>()V

    iget-object v3, v0, Li4/r;->a:Lo4/j;

    new-instance v4, Li4/n;

    invoke-direct {v4, v0, v2, v2, v1}, Li4/n;-><init>(Li4/r;Lr4/l;Lr4/l;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v4, v2}, Lo4/j;->b(Lo4/a;Lr4/l;)V

    .line 6
    iget-object v0, v2, Lr4/l;->a:Lr4/o;

    :goto_0
    return-object v0
.end method

.method public final d()Lr4/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li4/h;->a:Li4/r;

    iget-object v1, p0, Li4/h;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, v0, Li4/r;->a:Lo4/j;

    if-nez v2, :cond_0

    invoke-static {}, Li4/r;->c()Lr4/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v2, Li4/r;->e:Lp6/c;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "requestUpdateInfo(%s)"

    .line 3
    invoke-virtual {v2, v4, v3}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Lr4/l;

    .line 4
    invoke-direct {v2}, Lr4/l;-><init>()V

    iget-object v3, v0, Li4/r;->a:Lo4/j;

    new-instance v4, Li4/m;

    invoke-direct {v4, v0, v2, v1, v2}, Li4/m;-><init>(Li4/r;Lr4/l;Ljava/lang/String;Lr4/l;)V

    .line 5
    invoke-virtual {v3, v4, v2}, Lo4/j;->b(Lo4/a;Lr4/l;)V

    .line 6
    iget-object v0, v2, Lr4/l;->a:Lr4/o;

    :goto_0
    return-object v0
.end method

.method public final e(Li4/a;ILandroid/app/Activity;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Li4/c;->c(I)Li4/c;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1, p2}, Li4/a;->a(Li4/c;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 3
    iget-boolean v2, p1, Li4/a;->i:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iput-boolean v1, p1, Li4/a;->i:Z

    .line 5
    invoke-virtual {p1, p2}, Li4/a;->a(Li4/c;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p3

    move v4, p4

    .line 6
    invoke-virtual/range {v2 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method
