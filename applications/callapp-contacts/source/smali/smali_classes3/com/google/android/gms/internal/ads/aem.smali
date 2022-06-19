.class public final Lcom/google/android/gms/internal/ads/aem;
.super Lcom/google/android/gms/internal/ads/emn;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/abb;

.field final b:Ljava/lang/Object;

.field c:I

.field d:Lcom/google/android/gms/internal/ads/emp;

.field e:Z

.field f:Z

.field g:Lcom/google/android/gms/internal/ads/ff;

.field private final h:Z

.field private final i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abb;FZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/emn;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->f:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/abb;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/aem;->j:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/aem;->h:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/aem;->i:Z

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 33
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    .line 34
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p1, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v0, Lcom/google/android/gms/internal/ads/ael;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/ael;-><init>(Lcom/google/android/gms/internal/ads/aem;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/aem;->k:F

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(FFIZF)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->j:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->l:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 79
    :goto_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/aem;->j:F

    .line 80
    iput p1, p0, Lcom/google/android/gms/internal/ads/aem;->k:F

    .line 81
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aem;->f:Z

    .line 82
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/aem;->f:Z

    .line 83
    iget p2, p0, Lcom/google/android/gms/internal/ads/aem;->c:I

    .line 84
    iput p3, p0, Lcom/google/android/gms/internal/ads/aem;->c:I

    .line 85
    iget v2, p0, Lcom/google/android/gms/internal/ads/aem;->l:F

    .line 86
    iput p5, p0, Lcom/google/android/gms/internal/ads/aem;->l:F

    sub-float/2addr p5, v2

    .line 87
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v2

    if-lez p5, :cond_2

    .line 88
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/aem;->a:Lcom/google/android/gms/internal/ads/abb;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/abb;->s()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 92
    :try_start_1
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/aem;->g:Lcom/google/android/gms/internal/ads/ff;

    if-eqz p5, :cond_3

    .line 93
    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/ff;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    .line 96
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/aem;->a(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final a(IIZZ)V
    .locals 8

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v7, Lcom/google/android/gms/internal/ads/aeo;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aeo;-><init>(Lcom/google/android/gms/internal/ads/aem;IIZZ)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emp;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/emp;

    .line 54
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaaz;)V
    .locals 7

    .line 21
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaaz;->zzaee:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzaaz;->zzaef:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaaz;->zzaeg:Z

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 23
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/aem;->m:Z

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aem;->n:Z

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "initialState"

    const-string v3, "muteStart"

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v4, "customControlsRequested"

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v5, "clickToExpandRequested"

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    const/4 v6, 0x3

    .line 1001
    invoke-static {v6}, Lcom/google/android/gms/common/util/g;->a(I)Ljava/util/Map;

    move-result-object v6

    .line 1002
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    invoke-interface {v6, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 31
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/aem;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aem;->f:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->c:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()F
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->j:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()F
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->k:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Lcom/google/android/gms/internal/ads/emp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->d:Lcom/google/android/gms/internal/ads/emp;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()F
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/aem;->l:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aem;->h:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aem;->m:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()Z
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aem;->j()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aem;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aem;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 64
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
