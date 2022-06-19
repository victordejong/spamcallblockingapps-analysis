.class final Lcom/google/android/gms/internal/ads/ti2;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:Lcom/google/android/gms/internal/ads/n02;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/si2;)Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/ads/ti2;->a:Lcom/google/android/gms/internal/ads/n02;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->A1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

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
    const-string v3, "LuumUSt3XUsuCPgSU82tKS4YGjV8vTZLYC/R4oEb+DVVcavZKXfpIbTF+tWtCDt5"

    const-string v4, "qpKEg2kaON5OfTQ+xGYzsoPXin1qhXR8JY9zG10Ev8g="

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/si2;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_a

    :cond_4
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ir1;->b(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/z02;->a([B)Lcom/google/android/gms/internal/ads/v02;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/j32;->a:Lcom/google/android/gms/internal/ads/w82;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/w82;->E()Ljava/util/List;

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

    check-cast v3, Lcom/google/android/gms/internal/ads/w72;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkMac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridDecrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkHybridEncrypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeySign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkPublicKeyVerify"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkStreamingAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TinkDeterministicAead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/m12;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j02;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/j02;->zza()Lcom/google/android/gms/internal/ads/e12;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/m12;->e(Lcom/google/android/gms/internal/ads/e12;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->F()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->E()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->G()I

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/j02;->b()Lcom/google/android/gms/internal/ads/o02;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/w72;->H()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/m12;->b(Lcom/google/android/gms/internal/ads/o02;Z)V

    goto/16 :goto_1

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing catalogue_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing primitive_name."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Missing type_url."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/m32;->a(Lcom/google/android/gms/internal/ads/v02;)Lcom/google/android/gms/internal/ads/n02;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/ti2;->a:Lcom/google/android/gms/internal/ads/n02;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_a

    return v1

    :catch_0
    :cond_a
    return v2
.end method
