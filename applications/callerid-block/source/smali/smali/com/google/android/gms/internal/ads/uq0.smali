.class public final Lcom/google/android/gms/internal/ads/uq0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/dc0;
.implements Lcom/google/android/gms/internal/ads/hz2;
.implements Lcom/google/android/gms/internal/ads/k80;
.implements Lcom/google/android/gms/internal/ads/w70;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/em1;

.field private final d:Lcom/google/android/gms/internal/ads/jr0;

.field private final e:Lcom/google/android/gms/internal/ads/ml1;

.field private final f:Lcom/google/android/gms/internal/ads/al1;

.field private final g:Lcom/google/android/gms/internal/ads/jz0;

.field private h:Ljava/lang/Boolean;

.field private final i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/em1;Lcom/google/android/gms/internal/ads/jr0;Lcom/google/android/gms/internal/ads/ml1;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/jz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uq0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uq0;->c:Lcom/google/android/gms/internal/ads/em1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uq0;->d:Lcom/google/android/gms/internal/ads/jr0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uq0;->e:Lcom/google/android/gms/internal/ads/ml1;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/uq0;->g:Lcom/google/android/gms/internal/ads/jz0;

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->p4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/uq0;->i:Z

    return-void
.end method

.method private final a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->S0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq0;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/l1;->a0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zn;->g(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->h:Ljava/lang/Boolean;

    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->d:Lcom/google/android/gms/internal/ads/jr0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr0;->a()Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq0;->e:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ir0;->a(Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/ir0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ir0;->b(Lcom/google/android/gms/internal/ads/al1;)Lcom/google/android/gms/internal/ads/ir0;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/al1;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/al1;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uq0;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/l1;->h(Landroid/content/Context;)Z

    move-result v1

    if-eq p1, v1, :cond_1

    const-string p1, "offline"

    goto :goto_0

    :cond_1
    const-string p1, "online"

    :goto_0
    const-string v1, "device_connectivity"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_timestamp"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    const-string p1, "offline_ad"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    :cond_2
    return-object v0
.end method

.method private final g(Lcom/google/android/gms/internal/ads/ir0;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ir0;->e()Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/google/android/gms/internal/ads/lz0;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->e:Lcom/google/android/gms/internal/ads/ml1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ml1;->b:Lcom/google/android/gms/internal/ads/kl1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/kl1;->b:Lcom/google/android/gms/internal/ads/dl1;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dl1;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/lz0;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->g:Lcom/google/android/gms/internal/ads/jz0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/jz0;->C(Lcom/google/android/gms/internal/ads/lz0;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method


# virtual methods
.method public final C(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq0;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzym;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzym;->e:Lcom/google/android/gms/internal/ads/zzym;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzym;->b:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzym;->c:Ljava/lang/String;

    :cond_1
    if-ltz v1, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "arec"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/uq0;->c:Lcom/google/android/gms/internal/ads/em1;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/em1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "areec"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method

.method public final E()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->g(Lcom/google/android/gms/internal/ads/ir0;)V

    return-void
.end method

.method public final F()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uq0;->f:Lcom/google/android/gms/internal/ads/al1;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/al1;->d0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->g(Lcom/google/android/gms/internal/ads/ir0;)V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_impression"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method

.method public final d0(Lcom/google/android/gms/internal/ads/zzccw;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq0;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/uq0;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "blocked"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ir0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method

.method public final j()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/uq0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_shown"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uq0;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ir0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ir0;->d()V

    return-void
.end method
