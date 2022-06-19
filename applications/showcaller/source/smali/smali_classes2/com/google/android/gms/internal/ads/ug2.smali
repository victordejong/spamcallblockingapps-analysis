.class public final Lcom/google/android/gms/internal/ads/ug2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/vl2;)Lcom/google/android/gms/internal/ads/sg2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/el2;",
            "Lcom/google/android/gms/internal/ads/vl2;",
            ")",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "Lcom/google/android/gms/internal/ads/zv0;",
            "Lcom/google/android/gms/internal/ads/fw0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ug2;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/vl2;)Lcom/google/android/gms/internal/ads/sg2;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/vl2;)Lcom/google/android/gms/internal/ads/sg2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/el2;",
            "Lcom/google/android/gms/internal/ads/vl2;",
            ")",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "Lcom/google/android/gms/internal/ads/kw0;",
            "Lcom/google/android/gms/internal/ads/qw0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ug2;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/vl2;)Lcom/google/android/gms/internal/ads/sg2;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/vl2;)Lcom/google/android/gms/internal/ads/sg2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AppOpenAdRequestComponent::",
            "Lcom/google/android/gms/internal/ads/g21<",
            "TAppOpenAd;>;AppOpenAd:",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/el2;",
            "Lcom/google/android/gms/internal/ads/vl2;",
            ")",
            "Lcom/google/android/gms/internal/ads/sg2<",
            "TAppOpenAdRequestComponent;TAppOpenAd;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->F4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/q1;->m()Lcom/google/android/gms/internal/ads/jh0;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ph0;->p()Lcom/google/android/gms/ads/internal/util/q1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/q1;->n()Lcom/google/android/gms/internal/ads/jh0;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jh0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->V4:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->E4:Lcom/google/android/gms/internal/ads/cw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/sf2;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sf2;-><init>()V

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfcg;->f:Lcom/google/android/gms/internal/ads/zzfcg;

    new-instance v2, Lcom/google/android/gms/internal/ads/vf2;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/vf2;-><init>(Lcom/google/android/gms/internal/ads/sg2;)V

    .line 13
    invoke-virtual {p2, v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/vl2;->a(Lcom/google/android/gms/internal/ads/zzfcg;Landroid/content/Context;Lcom/google/android/gms/internal/ads/el2;Lcom/google/android/gms/internal/ads/bm2;)Lcom/google/android/gms/internal/ads/ul2;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/xf2;

    new-instance v1, Lcom/google/android/gms/internal/ads/ig2;

    new-instance p2, Lcom/google/android/gms/internal/ads/hg2;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/hg2;-><init>()V

    .line 14
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ig2;-><init>(Lcom/google/android/gms/internal/ads/sg2;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/eg2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ul2;->a:Lcom/google/android/gms/internal/ads/jl2;

    sget-object v5, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-direct {v2, p2, v5}, Lcom/google/android/gms/internal/ads/eg2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Ljava/util/concurrent/Executor;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ul2;->b:Lcom/google/android/gms/internal/ads/dm2;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ul2;->a:Lcom/google/android/gms/internal/ads/jl2;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jl2;->a()Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object p0

    .line 15
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfcj;->k:Ljava/lang/String;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xf2;-><init>(Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/sg2;Lcom/google/android/gms/internal/ads/dm2;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/hg2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hg2;-><init>()V

    return-object p0
.end method
