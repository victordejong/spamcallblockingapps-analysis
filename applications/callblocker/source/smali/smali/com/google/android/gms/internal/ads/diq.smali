.class final Lcom/google/android/gms/internal/ads/diq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field static a:Lcom/google/android/gms/internal/ads/cst;


# direct methods
.method static a(Lcom/google/android/gms/internal/ads/din;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/diq;->a:Lcom/google/android/gms/internal/ads/cst;

    if-eqz v0, :cond_0

    move v0, v1

    .line 57
    :goto_0
    return v0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bf:Lcom/google/android/gms/internal/ads/ect;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 8
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v3

    .line 18
    :goto_1
    if-nez v0, :cond_4

    move v0, v2

    .line 19
    goto :goto_0

    .line 11
    :cond_2
    const-string/jumbo v0, "M2qSAa8M0FWknYOLhqt+/Fg7hndA+iGyFQHluQ13JM7VYcVOxfDpnSG4HdwfsR6f"

    .line 12
    const-string/jumbo v4, "z17NkROhoKeGkbS2tgYHIJsoqSFhSwk9HYPzNbT9RcI="

    .line 13
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 14
    if-nez v0, :cond_3

    move-object v0, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_3
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_4
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/bkl;->a(Ljava/lang/String;Z)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 24
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ctc;->a([B)Lcom/google/android/gms/internal/ads/csy;

    move-result-object v3

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/cux;->a:Lcom/google/android/gms/internal/ads/cys;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cys;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cyb;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 30
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Missing type_url."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 23
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    .line 31
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 32
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Missing primitive_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 34
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Missing catalogue_name."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkMac"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkHybridDecrypt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkHybridEncrypt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkPublicKeySign"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkPublicKeyVerify"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkStreamingAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TinkDeterministicAead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/csp;

    move-result-object v5

    .line 45
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/csp;->a()Lcom/google/android/gms/internal/ads/cth;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cth;)V

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->c()I

    move-result v8

    .line 48
    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/csp;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/css;

    move-result-object v5

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyb;->d()Z

    move-result v0

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/css;Z)V

    goto/16 :goto_2

    .line 52
    :cond_9
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/cvb;->a(Lcom/google/android/gms/internal/ads/csy;Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/cst;

    move-result-object v0

    .line 53
    sput-object v0, Lcom/google/android/gms/internal/ads/diq;->a:Lcom/google/android/gms/internal/ads/cst;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/diq;->a:Lcom/google/android/gms/internal/ads/cst;

    if-eqz v0, :cond_a

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method
