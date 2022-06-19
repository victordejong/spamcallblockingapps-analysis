.class public final Lcom/google/android/gms/internal/ads/ur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/duj;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/internal/ads/uw;

.field private final c:Lcom/google/android/gms/internal/ads/up;

.field private final d:Lcom/google/android/gms/internal/ads/un;

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/uf;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/uo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/uw;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->f:Ljava/util/HashSet;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/un;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/uw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/uw;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/up;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/up;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/up;

    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/um;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string/jumbo v0, "app"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/up;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/up;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ads/un;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ur;->f:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uo;

    .line 26
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 27
    :cond_0
    const-string/jumbo v3, "slots"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uf;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uf;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo v0, "ads"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/um;->a(Ljava/util/HashSet;)V

    .line 34
    return-object v2
.end method

.method public final a(Lcom/google/android/gms/common/util/e;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/uf;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/uf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->c:Lcom/google/android/gms/internal/ads/up;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/up;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/gms/internal/ads/uf;-><init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/ur;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/un;->a()V

    .line 54
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;J)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/un;->a(Lcom/google/android/gms/internal/ads/dya;J)V

    .line 60
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/uf;)V
    .locals 2

    .prologue
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ads/uf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 14
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 36
    if-eqz p1, :cond_1

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/uw;->i()J

    move-result-wide v2

    sub-long v2, v0, v2

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ap:Lcom/google/android/gms/internal/ads/ect;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    .line 42
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/un;->a:I

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/uw;->j()I

    move-result v1

    .line 45
    iput v1, v0, Lcom/google/android/gms/internal/ads/un;->a:I

    goto :goto_0

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/uw;->a(J)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->b:Lcom/google/android/gms/internal/ads/uw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    .line 49
    iget v1, v1, Lcom/google/android/gms/internal/ads/un;->a:I

    .line 50
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/uw;->b(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ur;->d:Lcom/google/android/gms/internal/ads/un;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/un;->b()V

    .line 57
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
