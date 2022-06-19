.class public final Lcom/verizon/ads/ActivityStateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/ActivityStateManager$ActivityObserver;,
        Lcom/verizon/ads/ActivityStateManager$ActivityState;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/verizon/ads/ActivityStateManager$ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/verizon/ads/ActivityStateManager$ActivityObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/verizon/ads/ActivityStateManager$ActivityObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/verizon/ads/ActivityStateManager;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/ActivityStateManager;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    if-nez p1, :cond_0

    .line 152
    sget-object p1, Lcom/verizon/ads/ActivityStateManager;->a:Lcom/verizon/ads/Logger;

    const-string v0, "application cannot be null."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/ActivityStateManager;)Landroid/util/SparseArray;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized getState(Landroid/app/Activity;)Lcom/verizon/ads/ActivityStateManager$ActivityState;
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 224
    :try_start_0
    sget-object p1, Lcom/verizon/ads/ActivityStateManager;->a:Lcom/verizon/ads/Logger;

    const-string v0, "activity should not be null."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    .line 226
    sget-object p1, Lcom/verizon/ads/ActivityStateManager$ActivityState;->UNKNOWN:Lcom/verizon/ads/ActivityStateManager$ActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 229
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/ActivityStateManager$ActivityState;

    if-nez p1, :cond_1

    .line 232
    sget-object p1, Lcom/verizon/ads/ActivityStateManager$ActivityState;->UNKNOWN:Lcom/verizon/ads/ActivityStateManager$ActivityState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 235
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object p2, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v1, Lcom/verizon/ads/ActivityStateManager$ActivityState;->CREATED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object p2, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 385
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->b(Landroid/app/Activity;)V

    goto :goto_1

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lcom/verizon/ads/ActivityStateManager$ActivityState;->PAUSED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    .line 330
    invoke-virtual {v1, p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->onPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    .line 337
    invoke-virtual {v1, p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->onPaused(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 340
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lcom/verizon/ads/ActivityStateManager$ActivityState;->RESUMED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    .line 311
    invoke-virtual {v1, p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->onResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;

    .line 318
    invoke-virtual {v1, p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->onResumed(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 321
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 365
    :try_start_0
    iget-object p2, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p2, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 372
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->c(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 376
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lcom/verizon/ads/ActivityStateManager$ActivityState;->STARTED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->d(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 302
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget-object v2, Lcom/verizon/ads/ActivityStateManager$ActivityState;->STOPPED:Lcom/verizon/ads/ActivityStateManager$ActivityState;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 356
    invoke-static {p1}, Lcom/verizon/ads/ActivityStateManager$ActivityObserver;->e(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 359
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized registerActivityObserver(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityObserver;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setState(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityState;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 249
    :try_start_0
    sget-object p1, Lcom/verizon/ads/ActivityStateManager;->a:Lcom/verizon/ads/Logger;

    const-string p2, "activity must not be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 255
    :try_start_1
    sget-object p1, Lcom/verizon/ads/ActivityStateManager;->a:Lcom/verizon/ads/Logger;

    const-string p2, "activityState must not be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    new-instance v1, Lcom/verizon/ads/ActivityStateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/ads/ActivityStateManager$1;-><init>(Lcom/verizon/ads/ActivityStateManager;Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized unregisterActivityObserver(Landroid/app/Activity;Lcom/verizon/ads/ActivityStateManager$ActivityObserver;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/verizon/ads/ActivityStateManager;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 206
    :cond_2
    :goto_0
    :try_start_2
    iget-object p2, p0, Lcom/verizon/ads/ActivityStateManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
