.class public final Lcom/google/android/gms/internal/ads/da2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/ea2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/s03;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/xj2;

.field private final f:Lcom/google/android/gms/internal/ads/sp0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s03;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/sp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da2;->b:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/da2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/da2;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/da2;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/da2;->e:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/da2;->f:Lcom/google/android/gms/internal/ads/sp0;

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/android/gms/internal/ads/r03;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da2;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->n5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/AdFormat;->i:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da2;->f:Lcom/google/android/gms/internal/ads/sp0;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp0;->x()Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/da2;->d:Landroid/content/Context;

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    new-instance v3, Lcom/google/android/gms/internal/ads/vj2;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/vj2;-><init>()V

    const-string v4, "adUnitId"

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/vj2;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/vj2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/da2;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/vj2;->G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>()V

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/vj2;->I(Lcom/google/android/gms/internal/ads/zzbdl;)Lcom/google/android/gms/internal/ads/vj2;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/vj2;->l()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object v2

    .line 12
    invoke-interface {v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->a(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    new-instance v2, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;-><init>()V

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;->b(Ljava/lang/String;)Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/g0;->c()Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->b(Lcom/google/android/gms/ads/nonagon/signalgeneration/i0;)Lcom/google/android/gms/ads/nonagon/signalgeneration/o;

    new-instance v0, Lcom/google/android/gms/internal/ads/n81;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/o;->zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/p;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/p;->a()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->o5:Lcom/google/android/gms/internal/ads/cw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/da2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/a03;

    sget-object v1, Lcom/google/android/gms/internal/ads/ba2;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/da2;->b:Lcom/google/android/gms/internal/ads/s03;

    .line 20
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lcom/google/android/gms/internal/ads/ca2;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/da2;->b:Lcom/google/android/gms/internal/ads/s03;

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ea2;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->m5:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da2;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    const-string v1, "adUnitId"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/aa2;

    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aa2;-><init>(Lcom/google/android/gms/internal/ads/da2;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da2;->b:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/k03;->e(Lcom/google/android/gms/internal/ads/tz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da2;->b:Lcom/google/android/gms/internal/ads/s03;

    sget-object v1, Lcom/google/android/gms/internal/ads/z92;->a:Ljava/util/concurrent/Callable;

    .line 8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
