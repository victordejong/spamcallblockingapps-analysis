.class public final Lcom/google/android/gms/internal/ads/cml;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/crn;)Lcom/google/android/gms/internal/ads/cmh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AppOpenAdRequestComponent::",
            "Lcom/google/android/gms/internal/ads/aqx<",
            "TAppOpenAd;>;AppOpenAd:",
            "Lcom/google/android/gms/internal/ads/anp;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/cqs;",
            "Lcom/google/android/gms/internal/ads/crn;",
            ")",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TAppOpenAdRequestComponent;TAppOpenAd;>;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->eg:Lcom/google/android/gms/internal/ads/af;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/clj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/clj;-><init>()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/crf;->zzhrf:Lcom/google/android/gms/internal/ads/crf;

    new-instance v2, Lcom/google/android/gms/internal/ads/clo;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/clo;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    .line 8
    invoke-virtual {p2, v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/crn;->a(Lcom/google/android/gms/internal/ads/crf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cqs;Lcom/google/android/gms/internal/ads/cru;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object p0

    .line 9
    new-instance p1, Lcom/google/android/gms/internal/ads/clk;

    new-instance p2, Lcom/google/android/gms/internal/ads/cmc;

    new-instance v0, Lcom/google/android/gms/internal/ads/cly;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cly;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/cmc;-><init>(Lcom/google/android/gms/internal/ads/cmh;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/clt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/crm;->a:Lcom/google/android/gms/internal/ads/cqz;

    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/clt;-><init>(Lcom/google/android/gms/internal/ads/cqz;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/crm;->b:Lcom/google/android/gms/internal/ads/crr;

    sget-object v1, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    invoke-direct {p1, p2, v0, p0, v1}, Lcom/google/android/gms/internal/ads/clk;-><init>(Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/crr;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 10
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/cly;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cly;-><init>()V

    return-object p0
.end method
