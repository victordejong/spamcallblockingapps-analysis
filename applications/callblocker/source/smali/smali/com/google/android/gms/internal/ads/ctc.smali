.class public final Lcom/google/android/gms/internal/ads/ctc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static final a([B)Lcom/google/android/gms/internal/ads/csy;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/cye;->a([BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cye;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cye;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cye$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxu;->c()Lcom/google/android/gms/internal/ads/cxu$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/cxu$b;->a:Lcom/google/android/gms/internal/ads/cxu$b;

    if-eq v3, v4, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cxu;->c()Lcom/google/android/gms/internal/ads/cxu$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/cxu$b;->b:Lcom/google/android/gms/internal/ads/cxu$b;

    if-eq v3, v4, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cye$a;->b()Lcom/google/android/gms/internal/ads/cxu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxu;->c()Lcom/google/android/gms/internal/ads/cxu$b;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/cxu$b;->c:Lcom/google/android/gms/internal/ads/cxu$b;

    if-ne v0, v3, :cond_0

    .line 7
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "keyset contains secret key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    move-exception v0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/csy;->a(Lcom/google/android/gms/internal/ads/cye;)Lcom/google/android/gms/internal/ads/csy;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method
