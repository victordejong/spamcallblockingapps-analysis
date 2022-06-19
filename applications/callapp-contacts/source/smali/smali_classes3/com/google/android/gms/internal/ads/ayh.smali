.class public final Lcom/google/android/gms/internal/ads/ayh;
.super Lcom/google/android/gms/internal/ads/awl;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eeg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/awl<",
        "Lcom/google/android/gms/internal/ads/eeg;",
        ">;",
        "Lcom/google/android/gms/internal/ads/eeg;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/eec;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ayi<",
            "Lcom/google/android/gms/internal/ads/eeg;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/awl;-><init>(Ljava/util/Set;)V

    .line 2
    new-instance p2, Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ayh;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ayh;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eec;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/eec;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayh;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/eec;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eec;->a(Lcom/google/android/gms/internal/ads/eeg;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ayh;->c:Lcom/google/android/gms/internal/ads/cov;

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/cov;->R:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->aR:Lcom/google/android/gms/internal/ads/af;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->aQ:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1216
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eec;->b:Lcom/google/android/gms/ads/internal/util/zzbp;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzfc(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 1218
    :cond_1
    :try_start_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eec;->b:Lcom/google/android/gms/ads/internal/util/zzbp;

    sget-wide v0, Lcom/google/android/gms/internal/ads/eec;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzfc(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/eeh;)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ayk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ayk;-><init>(Lcom/google/android/gms/internal/ads/eeh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/awl;->a(Lcom/google/android/gms/internal/ads/awn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eec;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/eec;->b(Lcom/google/android/gms/internal/ads/eeg;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ayh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
