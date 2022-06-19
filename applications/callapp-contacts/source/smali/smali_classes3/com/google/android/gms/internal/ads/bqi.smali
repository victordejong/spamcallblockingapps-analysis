.class public final Lcom/google/android/gms/internal/ads/bqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/axs;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/cty;

.field private final e:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cty;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->b:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqi;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqi;->e:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method private final c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->e:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->c:Ljava/lang/String;

    .line 33
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tms"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    const-string v1, "tid"

    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->a:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "init_started"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqi;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "adapter_init_started"

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqi;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    const-string v2, "ancn"

    .line 10
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "adapter_init_finished"

    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqi;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    const-string v2, "ancn"

    .line 20
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    const-string v1, "rqe"

    .line 21
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 22
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->b:Z

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "init_finished"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqi;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqi;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqi;->d:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "adapter_init_finished"

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqi;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    const-string v2, "ancn"

    .line 15
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method
