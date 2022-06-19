.class public final Lcom/google/android/gms/internal/ads/duf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/duc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/internal/ads/duc;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 4
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/duf;->a:Ljava/lang/Object;

    monitor-enter v6

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    const-string/jumbo v0, "Queue empty"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 7
    monitor-exit v6

    .line 27
    :goto_0
    return-object v5

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 10
    const/high16 v4, -0x80000000

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duc;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->j()I

    move-result v3

    .line 15
    if-le v3, v4, :cond_4

    move v1, v2

    .line 19
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move-object v5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22
    monitor-exit v6

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duc;

    .line 24
    if-eqz p1, :cond_3

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 27
    :goto_3
    monitor-exit v6

    move-object v5, v0

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    move v3, v4

    move-object v0, v5

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/internal/ads/duc;)Z
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    monitor-exit v1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/duc;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duf;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 36
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/duc;

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uw;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 41
    monitor-exit v2

    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uw;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    if-eq p1, v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->d()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duc;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 47
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/duc;)V
    .locals 4

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Queue is full, current size = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duf;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/duf;->b:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/duc;->a(I)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duc;->h()V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duf;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
