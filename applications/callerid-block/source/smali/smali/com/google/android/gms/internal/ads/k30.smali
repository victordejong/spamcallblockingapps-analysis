.class public final Lcom/google/android/gms/internal/ads/k30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/f90;
.implements Lcom/google/android/gms/internal/ads/k80;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/jt;

.field private final d:Lcom/google/android/gms/internal/ads/al1;

.field private final e:Lcom/google/android/gms/internal/ads/zzbbq;

.field private f:Lcom/google/android/gms/dynamic/a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/zzbbq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k30;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/k30;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    return-void
.end method

.method private final declared-synchronized a()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->N:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k30;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/vh;->D0(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbbq;->c:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->P:Lcom/google/android/gms/internal/ads/vl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vl1;->a()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->U2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->P:Lcom/google/android/gms/internal/ads/vl1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/vl1;->b()I

    move-result v0

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->d:Lcom/google/android/gms/internal/ads/zzaug;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzauh;->c:Lcom/google/android/gms/internal/ads/zzauh;

    :goto_0
    move-object v10, v0

    move-object v9, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaug;->b:Lcom/google/android/gms/internal/ads/zzaug;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget v2, v2, Lcom/google/android/gms/internal/ads/al1;->e:I

    if-ne v2, v1, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzauh;->d:Lcom/google/android/gms/internal/ads/zzauh;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzauh;->b:Lcom/google/android/gms/internal/ads/zzauh;

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, ""

    const-string v7, "javascript"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/al1;->g0:Ljava/lang/String;

    invoke-interface/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/vh;->C0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzauh;Lcom/google/android/gms/internal/ads/zzaug;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->V()Landroid/webkit/WebView;

    move-result-object v5

    const-string v6, ""

    const-string v7, "javascript"

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/vh;->E0(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/vh;->H0(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/jt;->H(Lcom/google/android/gms/dynamic/a;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->s()Lcom/google/android/gms/internal/ads/vh;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/vh;->A0(Lcom/google/android/gms/dynamic/a;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/k30;->g:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->X2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized E()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/k30;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/k30;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->d:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->f:Lcom/google/android/gms/dynamic/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k30;->c:Lcom/google/android/gms/internal/ads/jt;

    if-eqz v0, :cond_1

    new-instance v1, Ld/e/a;

    invoke-direct {v1}, Ld/e/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/k30;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/k30;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
