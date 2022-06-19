.class public final Lcom/google/android/gms/internal/ads/v92;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/w92;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/v22;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/xj2;

.field private final f:Lcom/google/android/gms/internal/ads/p22;

.field private final g:Lcom/google/android/gms/internal/ads/ol1;

.field final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s03;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/v22;Landroid/content/Context;Lcom/google/android/gms/internal/ads/xj2;Lcom/google/android/gms/internal/ads/p22;Lcom/google/android/gms/internal/ads/ol1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v92;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/v92;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/v92;->c:Lcom/google/android/gms/internal/ads/v22;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/v92;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/v92;->e:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/v92;->f:Lcom/google/android/gms/internal/ads/p22;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/v92;->g:Lcom/google/android/gms/internal/ads/ol1;

    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/r03;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "ZZ)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/v92;->f:Lcom/google/android/gms/internal/ads/p22;

    .line 2
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/p22;->a(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/v92;->f:Lcom/google/android/gms/internal/ads/p22;

    .line 3
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/p22;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r90;

    move-result-object p5

    :goto_0
    move-object v1, p5

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/v92;->g:Lcom/google/android/gms/internal/ads/ol1;

    .line 5
    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/ads/ol1;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r90;

    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    const-string v1, "Couldn\'t create RTB adapter : "

    .line 6
    invoke-static {v1, p5}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p5, 0x0

    goto :goto_0

    .line 7
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/ads/y22;

    .line 8
    invoke-direct {v7, p1, v1, v0}, Lcom/google/android/gms/internal/ads/y22;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/r90;Lcom/google/android/gms/internal/ads/vi0;)V

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/v92;->d:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v92;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/v92;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    move-object v4, p3

    .line 11
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/r90;->O4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/u90;)V

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y22;->b()V

    :goto_2
    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z22;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/r03;
    .locals 7

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/z22;->d:Landroid/os/Bundle;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-boolean v5, p2, Lcom/google/android/gms/internal/ads/z22;->b:Z

    iget-boolean v6, p2, Lcom/google/android/gms/internal/ads/z22;->c:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/v92;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/r03;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/v92;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic c()Lcom/google/android/gms/internal/ads/r03;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v92;->c:Lcom/google/android/gms/internal/ads/v22;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v92;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v92;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/v22;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfon;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/v92;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/ads/q92;

    .line 9
    invoke-direct {v5, p0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/q92;-><init>(Lcom/google/android/gms/internal/ads/v92;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 10
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/k03;->e(Lcom/google/android/gms/internal/ads/tz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->X0:Lcom/google/android/gms/internal/ads/cw;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/v92;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    invoke-static {v2, v5, v6, v3, v7}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/a03;

    new-instance v3, Lcom/google/android/gms/internal/ads/r92;

    .line 15
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/r92;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 16
    invoke-static {v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v92;->c:Lcom/google/android/gms/internal/ads/v22;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v22;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfon;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zzc()Lcom/google/android/gms/internal/ads/zzfot;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/z22;

    .line 22
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/z22;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/v92;->e:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbdg;->p:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 23
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    new-instance v6, Lcom/google/android/gms/internal/ads/s92;

    .line 24
    invoke-direct {v6, p0, v4, v2, v5}, Lcom/google/android/gms/internal/ads/s92;-><init>(Lcom/google/android/gms/internal/ads/v92;Ljava/lang/String;Lcom/google/android/gms/internal/ads/z22;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 25
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/k03;->e(Lcom/google/android/gms/internal/ads/tz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/kw;->X0:Lcom/google/android/gms/internal/ads/cw;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v5

    .line 28
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/v92;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    invoke-static {v2, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/k03;->h(Lcom/google/android/gms/internal/ads/r03;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/a03;

    new-instance v5, Lcom/google/android/gms/internal/ads/t92;

    .line 30
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/t92;-><init>(Ljava/lang/String;)V

    const-class v4, Ljava/lang/Throwable;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 31
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/i03;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/u92;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/u92;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/i03;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/w92;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/p92;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/p92;-><init>(Lcom/google/android/gms/internal/ads/v92;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v92;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/k03;->e(Lcom/google/android/gms/internal/ads/tz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
