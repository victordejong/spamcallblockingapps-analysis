.class public final Lcom/google/android/gms/internal/ads/bkv;
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

.field private final c:Lcom/google/android/gms/internal/ads/bli;

.field private final d:Lcom/google/android/gms/internal/ads/cpk;

.field private final e:Lcom/google/android/gms/internal/ads/cov;

.field private final f:Lcom/google/android/gms/internal/ads/brs;

.field private g:Ljava/lang/Boolean;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cpz;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/brs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bkv;->b:Lcom/google/android/gms/internal/ads/cpz;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bkv;->c:Lcom/google/android/gms/internal/ads/bli;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bkv;->d:Lcom/google/android/gms/internal/ads/cpk;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bkv;->f:Lcom/google/android/gms/internal/ads/brs;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->en:Lcom/google/android/gms/internal/ads/af;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/bkv;->h:Z

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->c:Lcom/google/android/gms/internal/ads/bli;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bli;->a()Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkv;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/blh;->a(Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/blh;->a(Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v1, "action"

    .line 84
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-eqz p1, :cond_2

    .line 89
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbd(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "online"

    goto :goto_0

    :cond_1
    const-string p1, "offline"

    :goto_0
    const-string v1, "device_connectivity"

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_timestamp"

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    const-string p1, "offline_ad"

    const-string v1, "1"

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    :cond_2
    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/blh;)V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/blh;->b()Ljava/lang/String;

    move-result-object v5

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/brz;

    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->d:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/internal/ads/brp;->b:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/brz;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->f:Lcom/google/android/gms/internal/ads/brs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/brz;)V

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 78
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

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aZ:Lcom/google/android/gms/internal/ads/af;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bkv;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzbb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->g:Ljava/lang/Boolean;

    .line 72
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bkv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_impression"

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final a()V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkv;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "blocked"

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzcbq;)V
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkv;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbq;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbq;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 5

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bkv;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ifts"

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 32
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchs:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 36
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchs:Ljava/lang/String;

    :cond_1
    if-ltz v1, :cond_2

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "arec"

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bkv;->b:Lcom/google/android/gms/internal/ads/cpz;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/cpz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "areec"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/blh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    .line 45
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bkv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "impression"

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Lcom/google/android/gms/internal/ads/blh;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bkv;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "adapter_shown"

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/blh;->a()V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bkv;->e:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "click"

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bkv;->a(Lcom/google/android/gms/internal/ads/blh;)V

    return-void
.end method
