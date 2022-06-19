.class public final Lcom/google/android/gms/internal/ads/bgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apu;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/aso;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/cho;

.field private final c:Lcom/google/android/gms/internal/ads/bhi;

.field private final d:Lcom/google/android/gms/internal/ads/chd;

.field private final e:Lcom/google/android/gms/internal/ads/cgr;

.field private f:Ljava/lang/Boolean;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cho;Lcom/google/android/gms/internal/ads/bhi;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgw;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgw;->b:Lcom/google/android/gms/internal/ads/cho;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgw;->c:Lcom/google/android/gms/internal/ads/bhi;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bgw;->d:Lcom/google/android/gms/internal/ads/chd;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bgw;->e:Lcom/google/android/gms/internal/ads/cgr;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dC:Lcom/google/android/gms/internal/ads/ect;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bgw;->g:Z

    .line 10
    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->c:Lcom/google/android/gms/internal/ads/bhi;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhi;->a()Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgw;->d:Lcom/google/android/gms/internal/ads/chd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chd;->b:Lcom/google/android/gms/internal/ads/cha;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cha;->b:Lcom/google/android/gms/internal/ads/cgs;

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/cgs;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgw;->e:Lcom/google/android/gms/internal/ads/cgr;

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v1

    .line 71
    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v2, "ancn"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->e:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 74
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "CsiActionsListener.isPatternMatched"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final e()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aL:Lcom/google/android/gms/internal/ads/ect;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgw;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->f:Ljava/lang/Boolean;

    .line 59
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgw;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bgw;->g:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string/jumbo v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "blocked"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bgw;->g:Z

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string/jumbo v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 27
    if-ltz p1, :cond_1

    .line 28
    const-string/jumbo v1, "arec"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bgw;->b:Lcom/google/android/gms/internal/ads/cho;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/cho;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    const-string/jumbo v2, "areec"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 32
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzbxy;)V
    .locals 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bgw;->g:Z

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string/jumbo v0, "ifts"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "exception"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxy;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    const-string/jumbo v1, "msg"

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbxy;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bhh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bgw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    :goto_0
    return-void

    .line 13
    :cond_0
    const-string/jumbo v0, "impression"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bgw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 17
    :cond_0
    const-string/jumbo v0, "adapter_impression"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bgw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string/jumbo v0, "adapter_shown"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/bgw;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bhh;->a()V

    goto :goto_0
.end method
