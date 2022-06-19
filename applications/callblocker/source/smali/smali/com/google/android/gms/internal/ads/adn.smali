.class public final Lcom/google/android/gms/internal/ads/adn;
.super Lcom/google/android/gms/internal/ads/eaz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aad;

.field private final b:Ljava/lang/Object;

.field private final c:Z

.field private final d:Z

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/ads/ebb;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private i:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private k:F
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private l:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private m:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private n:Lcom/google/android/gms/internal/ads/dh;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aad;FZZ)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eaz;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->h:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adn;->a:Lcom/google/android/gms/internal/ads/aad;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/adn;->i:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/adn;->c:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/adn;->d:Z

    .line 8
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    :goto_0
    const-string/jumbo v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/adm;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/adm;-><init>(Lcom/google/android/gms/internal/ads/adn;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private final b(IIZZ)V
    .locals 7

    .prologue
    .line 102
    sget-object v6, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v0, Lcom/google/android/gms/internal/ads/adp;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/adp;-><init>(Lcom/google/android/gms/internal/ads/adn;IIZZ)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 9
    const-string/jumbo v0, "play"

    .line 10
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    return-void
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/adn;->j:F

    .line 67
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(FFIZF)V
    .locals 6

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/adn;->i:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/adn;->k:F

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 79
    :cond_1
    iput p2, p0, Lcom/google/android/gms/internal/ads/adn;->i:F

    .line 80
    iput p1, p0, Lcom/google/android/gms/internal/ads/adn;->j:F

    .line 81
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/adn;->h:Z

    .line 82
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/adn;->h:Z

    .line 83
    iget v3, p0, Lcom/google/android/gms/internal/ads/adn;->e:I

    .line 84
    iput p3, p0, Lcom/google/android/gms/internal/ads/adn;->e:I

    .line 85
    iget v4, p0, Lcom/google/android/gms/internal/ads/adn;->k:F

    .line 86
    iput p5, p0, Lcom/google/android/gms/internal/ads/adn;->k:F

    .line 87
    iget v5, p0, Lcom/google/android/gms/internal/ads/adn;->k:F

    sub-float v4, v5, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adn;->a:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/aad;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 89
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eqz v0, :cond_3

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->n:Lcom/google/android/gms/internal/ads/dh;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->n:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dh;->a()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_3
    :goto_0
    invoke-direct {p0, v3, p3, v2, p4}, Lcom/google/android/gms/internal/ads/adn;->b(IIZZ)V

    .line 98
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final synthetic a(IIZZ)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v7

    .line 105
    if-eq p1, p2, :cond_8

    move v2, v1

    .line 106
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/adn;->g:Z

    if-nez v3, :cond_9

    if-ne p2, v1, :cond_9

    move v6, v1

    .line 107
    :goto_1
    if-eqz v2, :cond_a

    if-ne p2, v1, :cond_a

    move v5, v1

    .line 108
    :goto_2
    if-eqz v2, :cond_b

    const/4 v3, 0x2

    if-ne p2, v3, :cond_b

    move v4, v1

    .line 109
    :goto_3
    if-eqz v2, :cond_c

    const/4 v2, 0x3

    if-ne p2, v2, :cond_c

    move v3, v1

    .line 110
    :goto_4
    if-eq p3, p4, :cond_d

    move v2, v1

    .line 111
    :goto_5
    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/adn;->g:Z

    if-nez v8, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v6, :cond_2

    .line 113
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->a()V

    .line 115
    :cond_2
    if-eqz v5, :cond_3

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->b()V

    .line 118
    :cond_3
    if-eqz v4, :cond_4

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v0, :cond_4

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->c()V

    .line 121
    :cond_4
    if-eqz v3, :cond_6

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->d()V

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->a:Lcom/google/android/gms/internal/ads/aad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aad;->m()V

    .line 125
    :cond_6
    if-eqz v2, :cond_7

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    if-eqz v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/ebb;->a(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_7
    :goto_6
    :try_start_2
    monitor-exit v7

    return-void

    :cond_8
    move v2, v0

    .line 105
    goto :goto_0

    :cond_9
    move v6, v0

    .line 106
    goto :goto_1

    :cond_a
    move v5, v0

    .line 107
    goto :goto_2

    :cond_b
    move v4, v0

    .line 108
    goto :goto_3

    :cond_c
    move v3, v0

    .line 109
    goto :goto_4

    :cond_d
    move v2, v0

    .line 110
    goto :goto_5

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dh;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adn;->n:Lcom/google/android/gms/internal/ads/dh;

    .line 101
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ebb;)V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

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

.method public final a(Lcom/google/android/gms/internal/ads/ecn;)V
    .locals 7

    .prologue
    .line 21
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/ecn;->a:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/ecn;->b:Z

    iget-boolean v5, p1, Lcom/google/android/gms/internal/ads/ecn;->c:Z

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 23
    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/adn;->l:Z

    .line 24
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/adn;->m:Z

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const-string/jumbo v6, "initialState"

    const-string/jumbo v0, "muteStart"

    .line 27
    if-eqz v1, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    const-string/jumbo v2, "customControlsRequested"

    .line 28
    if-eqz v3, :cond_1

    const-string/jumbo v3, "1"

    :goto_1
    const-string/jumbo v4, "clickToExpandRequested"

    .line 29
    if-eqz v5, :cond_2

    const-string/jumbo v5, "1"

    .line 30
    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/common/util/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 31
    invoke-direct {p0, v6, v0}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    return-void

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 27
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 28
    :cond_1
    const-string/jumbo v3, "0"

    goto :goto_1

    .line 29
    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_2
.end method

.method final synthetic a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->a:Lcom/google/android/gms/internal/ads/aad;

    const-string/jumbo v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const-string/jumbo v0, "mute"

    .line 19
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "unmute"

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 12
    const-string/jumbo v0, "pause"

    .line 13
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 15
    const-string/jumbo v0, "stop"

    .line 16
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/adn;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->h:Z

    monitor-exit v1

    return v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/adn;->e:I

    monitor-exit v1

    return v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()F
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/adn;->i:F

    monitor-exit v1

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()F
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/adn;->j:F

    monitor-exit v1

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/ebb;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adn;->f:Lcom/google/android/gms/internal/ads/ebb;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()F
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/adn;->k:F

    monitor-exit v1

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/adn;->j()Z

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    if-nez v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adn;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/adn;->h:Z

    .line 70
    iget v2, p0, Lcom/google/android/gms/internal/ads/adn;->e:I

    .line 71
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/gms/internal/ads/adn;->e:I

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-direct {p0, v2, v4, v0, v0}, Lcom/google/android/gms/internal/ads/adn;->b(IIZZ)V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
