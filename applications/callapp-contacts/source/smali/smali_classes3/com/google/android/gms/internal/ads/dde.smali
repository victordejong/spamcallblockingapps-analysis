.class public final Lcom/google/android/gms/internal/ads/dde;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static final a([B)Lcom/google/android/gms/internal/ads/dcz;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/dip;->a([BLcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dip;

    move-result-object p0

    .line 1005
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dip$b;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dih;->a()Lcom/google/android/gms/internal/ads/dih$a;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dih$a;->zzijz:Lcom/google/android/gms/internal/ads/dih$a;

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dih;->a()Lcom/google/android/gms/internal/ads/dih$a;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/dih$a;->zzika:Lcom/google/android/gms/internal/ads/dih$a;

    if-eq v2, v3, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dih;->a()Lcom/google/android/gms/internal/ads/dih$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dih$a;->zzikb:Lcom/google/android/gms/internal/ads/dih$a;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains secret key material"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_2

    .line 3006
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnr;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2007
    new-instance v0, Lcom/google/android/gms/internal/ads/dcz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dcz;-><init>(Lcom/google/android/gms/internal/ads/dip;)V

    return-object v0

    .line 2006
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
