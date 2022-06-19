.class public final Lcom/google/android/gms/internal/ads/si1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qi1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            "Lcom/google/android/gms/internal/ads/qn1;",
            ")",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "Lcom/google/android/gms/internal/ads/w00;",
            "Lcom/google/android/gms/internal/ads/c10;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/si1;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qi1;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qi1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            "Lcom/google/android/gms/internal/ads/qn1;",
            ")",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "Lcom/google/android/gms/internal/ads/i10;",
            "Lcom/google/android/gms/internal/ads/n10;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/si1;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qi1;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/qn1;)Lcom/google/android/gms/internal/ads/qi1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AppOpenAdRequestComponent::",
            "Lcom/google/android/gms/internal/ads/a70<",
            "TAppOpenAd;>;AppOpenAd:",
            "Lcom/google/android/gms/internal/ads/u30;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zm1;",
            "Lcom/google/android/gms/internal/ads/qn1;",
            ")",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TAppOpenAdRequestComponent;TAppOpenAd;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->i4:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/qh1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qh1;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsv;->d:Lcom/google/android/gms/internal/ads/zzdsv;

    new-instance v2, Lcom/google/android/gms/internal/ads/uh1;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/uh1;-><init>(Lcom/google/android/gms/internal/ads/qi1;)V

    invoke-virtual {p2, v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/qn1;->a(Lcom/google/android/gms/internal/ads/zzdsv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zm1;Lcom/google/android/gms/internal/ads/xn1;)Lcom/google/android/gms/internal/ads/pn1;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/wh1;

    new-instance p2, Lcom/google/android/gms/internal/ads/gi1;

    new-instance v0, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fi1;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/gi1;-><init>(Lcom/google/android/gms/internal/ads/qi1;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ci1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn1;->a:Lcom/google/android/gms/internal/ads/dn1;

    sget-object v2, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ci1;-><init>(Lcom/google/android/gms/internal/ads/dn1;Ljava/util/concurrent/Executor;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pn1;->b:Lcom/google/android/gms/internal/ads/zn1;

    invoke-direct {p1, p2, v0, p0, v2}, Lcom/google/android/gms/internal/ads/wh1;-><init>(Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/zn1;Ljava/util/concurrent/Executor;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/fi1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fi1;-><init>()V

    return-object p0
.end method
