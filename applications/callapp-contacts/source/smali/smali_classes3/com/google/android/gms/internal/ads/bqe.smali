.class public final Lcom/google/android/gms/internal/ads/bqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/art;
.implements Lcom/google/android/gms/internal/ads/ash;
.implements Lcom/google/android/gms/internal/ads/avw;
.implements Lcom/google/android/gms/internal/ads/eir;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/cpz;

.field private final c:Lcom/google/android/gms/internal/ads/cpk;

.field private final d:Lcom/google/android/gms/internal/ads/cov;

.field private final e:Lcom/google/android/gms/internal/ads/brs;

.field private f:Ljava/lang/Boolean;

.field private final g:Z

.field private final h:Lcom/google/android/gms/internal/ads/cty;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cpz;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqe;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqe;->b:Lcom/google/android/gms/internal/ads/cpz;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqe;->c:Lcom/google/android/gms/internal/ads/cpk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bqe;->e:Lcom/google/android/gms/internal/ads/brs;

    .line 7
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->en:Lcom/google/android/gms/internal/ads/af;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bqe;->g:Z

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    .line 11
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bqe;->i:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;
    .locals 2

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->c:Lcom/google/android/gms/internal/ads/cpk;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/yo;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->i:Ljava/lang/String;

    const-string v1, "request_id"

    .line 89
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "online"

    goto :goto_0

    :cond_1
    const-string v0, "offline"

    :goto_0
    const-string v1, "device_connectivity"

    .line 97
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 99
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event_timestamp"

    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    const-string v0, "offline_ad"

    const-string v1, "1"

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    :cond_2
    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ctz;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->b(Lcom/google/android/gms/internal/ads/ctz;)Ljava/lang/String;

    move-result-object v5

    .line 105
    new-instance p1, Lcom/google/android/gms/internal/ads/brz;

    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->c:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/internal/ads/brp;->b:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/brz;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->e:Lcom/google/android/gms/internal/ads/brs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/brz;)V

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p1

    const-string v1, "CsiActionsListener.isPatternMatched"

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private final c()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aZ:Lcom/google/android/gms/internal/ads/af;

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqe;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->f:Ljava/lang/Boolean;

    .line 76
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bqe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "adapter_impression"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final a()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqe;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "ifts"

    .line 63
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "blocked"

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzcbq;)V
    .locals 3

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqe;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 52
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbq;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbq;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 57
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 4

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bqe;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchs:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 36
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchs:Ljava/lang/String;

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bqe;->b:Lcom/google/android/gms/internal/ads/cpz;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/cpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ifts"

    .line 39
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    const-string v2, "reason"

    const-string v3, "adapter"

    .line 40
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    if-ltz v0, :cond_2

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "arec"

    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "areec"

    .line 46
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/ctz;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bqe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqe;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bqe;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->h:Lcom/google/android/gms/internal/ads/cty;

    const-string v1, "adapter_shown"

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cty;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqe;->d:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    .line 15
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqe;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctz;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bqe;->a(Lcom/google/android/gms/internal/ads/ctz;)V

    return-void
.end method
