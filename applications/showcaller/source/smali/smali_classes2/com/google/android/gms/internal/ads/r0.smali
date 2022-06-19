.class final Lcom/google/android/gms/internal/ads/r0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field static a:Lcom/google/android/gms/internal/ads/n13;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/q0;)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/r0;->a:Lcom/google/android/gms/internal/ads/n13;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->Q1:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "wC9I8kYd+RKAHfQkBEAJYQw7avQUH+U9s6BQ/SJiEcKjDl2sT+FDEb6J3VYVY+ui"

    const-string v4, "FSkZmgTbP/gL1jHU7M+TcfgVpePk57vWMdHk6knGCa4="

    .line 4
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/q0;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_a

    .line 6
    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p24;->b(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/b23;->a([B)Lcom/google/android/gms/internal/ads/x13;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/o43;->a:Lcom/google/android/gms/internal/ads/ia3;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia3;->C()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/g93;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkMac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridDecrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridEncrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeySign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeyVerify"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkStreamingAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkDeterministicAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/p23;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j13;

    move-result-object v4

    .line 22
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/j13;->zza()Lcom/google/android/gms/internal/ads/h23;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/p23;->e(Lcom/google/android/gms/internal/ads/h23;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->D()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->C()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->E()I

    .line 24
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/j13;->b()Lcom/google/android/gms/internal/ads/o13;

    move-result-object v4

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/g93;->F()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/p23;->b(Lcom/google/android/gms/internal/ads/o13;Z)V

    goto/16 :goto_1

    .line 26
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/r43;->a(Lcom/google/android/gms/internal/ads/x13;)Lcom/google/android/gms/internal/ads/n13;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/r0;->a:Lcom/google/android/gms/internal/ads/n13;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_a

    return v1

    :catch_0
    :cond_a
    return v2
.end method
