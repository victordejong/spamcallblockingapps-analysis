.class public Lcom/criteo/publisher/m0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Lcom/criteo/publisher/a/a;

.field private final b:Lcom/criteo/publisher/e;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/a/a;Lcom/criteo/publisher/e;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/criteo/publisher/m0/e;->a:Lcom/criteo/publisher/a/a;

    .line 37
    iput-object p2, p0, Lcom/criteo/publisher/m0/e;->b:Lcom/criteo/publisher/e;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    .line 39
    iput p1, p0, Lcom/criteo/publisher/m0/e;->d:I

    .line 40
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    .line 41
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->f:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    iget-boolean p1, p0, Lcom/criteo/publisher/m0/e;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->f:Z

    .line 48
    iget-object p1, p0, Lcom/criteo/publisher/m0/e;->a:Lcom/criteo/publisher/a/a;

    const-string p2, "Launch"

    .line 1098
    invoke-virtual {p1, p2}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    .line 69
    iget v0, p0, Lcom/criteo/publisher/m0/e;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/criteo/publisher/m0/e;->d:I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 59
    iget p1, p0, Lcom/criteo/publisher/m0/e;->d:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/criteo/publisher/m0/e;->a:Lcom/criteo/publisher/a/a;

    const-string v0, "Active"

    .line 1102
    invoke-virtual {p1, v0}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    .line 63
    iget p1, p0, Lcom/criteo/publisher/m0/e;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/criteo/publisher/m0/e;->d:I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 54
    iget p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 74
    iget p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 76
    iget-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/criteo/publisher/m0/e;->d:I

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/criteo/publisher/m0/e;->a:Lcom/criteo/publisher/a/a;

    const-string v1, "Inactive"

    .line 1106
    invoke-virtual {p1, v1}, Lcom/criteo/publisher/a/a;->a(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/m0/e;->b:Lcom/criteo/publisher/e;

    .line 1370
    iget-object p1, p1, Lcom/criteo/publisher/e;->c:Lcom/criteo/publisher/j0/b;

    .line 2174
    iget-object v1, p1, Lcom/criteo/publisher/j0/b;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 2175
    :try_start_0
    iget-object v2, p1, Lcom/criteo/publisher/j0/b;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 2176
    invoke-interface {v3, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 2178
    :cond_1
    iget-object p1, p1, Lcom/criteo/publisher/j0/b;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 2179
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/criteo/publisher/m0/e;->e:Z

    .line 83
    iget p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/criteo/publisher/m0/e;->c:I

    return-void
.end method
