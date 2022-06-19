.class final Lcom/google/android/gms/internal/ads/dtj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/google/android/gms/internal/ads/dcq;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/dtg;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dtj;->a:Lcom/google/android/gms/internal/ads/dcq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bE:Lcom/google/android/gms/internal/ads/af;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "4ioREl2wGHUH3L1Ffod4L799Wcu9qX0THPnnrMniz0uOTIixizwJO+JKyjfP+vUT"

    const-string v4, "/fmVllZVlSra7BEtwv3jJDV2EycO3hpoom0fb/ewpTo="

    .line 13
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/dtg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_4

    return v2

    .line 20
    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bxn;->a(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dde;->a([B)Lcom/google/android/gms/internal/ads/dcz;

    move-result-object p0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/dfe;->a:Lcom/google/android/gms/internal/ads/djc;

    .line 1005
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/djc;->zzilu:Lcom/google/android/gms/internal/ads/dnr;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dio;

    .line 1007
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzijv:Ljava/lang/String;

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2006
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zziko:Ljava/lang/String;

    .line 31
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkAead"

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 4010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkMac"

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkHybridDecrypt"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 6010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkHybridEncrypt"

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 7010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkPublicKeySign"

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 8010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkPublicKeyVerify"

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 9010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkStreamingAead"

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 10010
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    const-string v5, "TinkDeterministicAead"

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 11010
    :cond_6
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dio;->zzikr:Ljava/lang/String;

    .line 44
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ddm;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dcm;

    move-result-object v4

    .line 45
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dcm;->b()Lcom/google/android/gms/internal/ads/ddh;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V

    .line 48
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dcm;->a()Lcom/google/android/gms/internal/ads/dct;

    move-result-object v4

    .line 13009
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/dio;->zzikq:Z

    .line 49
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dct;Z)V

    goto/16 :goto_1

    .line 34
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dfi;->a(Lcom/google/android/gms/internal/ads/dcz;)Lcom/google/android/gms/internal/ads/dcq;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/dtj;->a:Lcom/google/android/gms/internal/ads/dcq;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_b

    return v1

    :catch_0
    :cond_b
    return v2
.end method
