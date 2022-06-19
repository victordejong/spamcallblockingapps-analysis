.class public final Lcom/google/android/gms/internal/ads/ju1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w71;
.implements Lcom/google/android/gms/internal/ads/kq;
.implements Lcom/google/android/gms/internal/ads/s31;
.implements Lcom/google/android/gms/internal/ads/c31;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/kk2;

.field private final f:Lcom/google/android/gms/internal/ads/rj2;

.field private final g:Lcom/google/android/gms/internal/ads/ej2;

.field private final h:Lcom/google/android/gms/internal/ads/dw1;

.field private i:Ljava/lang/Boolean;

.field private final j:Z

.field private final k:Lcom/google/android/gms/internal/ads/jo2;

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/kk2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ju1;->e:Lcom/google/android/gms/internal/ads/kk2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ju1;->f:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ju1;->h:Lcom/google/android/gms/internal/ads/dw1;

    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->c5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ju1;->j:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ju1;->l:Ljava/lang/String;

    return-void
.end method

.method private final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->Y0:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/c2;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
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

    .line 6
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v1

    const-string v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/ph0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->i:Ljava/lang/Boolean;

    .line 8
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->i:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/io2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->f:Lcom/google/android/gms/internal/ads/rj2;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/io2;->g(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/th0;)Lcom/google/android/gms/internal/ads/io2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/io2;->i(Lcom/google/android/gms/internal/ads/ej2;)Lcom/google/android/gms/internal/ads/io2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->l:Ljava/lang/String;

    const-string v1, "request_id"

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->t:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->t:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ju1;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/c2;->i(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "offline"

    goto :goto_0

    :cond_1
    const-string v0, "online"

    :goto_0
    const-string v1, "device_connectivity"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_timestamp"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    const-string v0, "offline_ad"

    const-string v1, "1"

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_2
    return-object p1
.end method

.method private final l(Lcom/google/android/gms/internal/ads/io2;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jo2;->a(Lcom/google/android/gms/internal/ads/io2;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/google/android/gms/internal/ads/fw1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->k()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->f:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/fw1;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->h:Lcom/google/android/gms/internal/ads/dw1;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dw1;->k(Lcom/google/android/gms/internal/ads/fw1;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method


# virtual methods
.method public final H(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ju1;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final I(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ju1;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->e:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->f:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->g:Lcom/google/android/gms/internal/ads/zzbcz;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbcz;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->g:Lcom/google/android/gms/internal/ads/zzbcz;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->e:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ju1;->e:Lcom/google/android/gms/internal/ads/kk2;

    .line 7
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/kk2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "adapter"

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    if-ltz v0, :cond_2

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "arec"

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "areec"

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    .line 13
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ju1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    const-string v1, "adapter_shown"

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ju1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    const-string v1, "adapter_impression"

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ju1;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->k:Lcom/google/android/gms/internal/ads/jo2;

    const-string v1, "ifts"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "blocked"

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/io2;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jo2;->b(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ju1;->l(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ju1;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju1;->g:Lcom/google/android/gms/internal/ads/ej2;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ej2;->f0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ju1;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/io2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ju1;->l(Lcom/google/android/gms/internal/ads/io2;)V

    return-void
.end method
