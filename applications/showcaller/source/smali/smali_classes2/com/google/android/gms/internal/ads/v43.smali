.class final Lcom/google/android/gms/internal/ads/v43;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/eb3;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/s63;

.field private d:Lcom/google/android/gms/internal/ads/u53;

.field private e:I

.field private f:Lcom/google/android/gms/internal/ads/e73;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d93;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d93;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/r23;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d93;->D()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/v63;->D(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/v63;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p23;->h(Lcom/google/android/gms/internal/ads/d93;)Lcom/google/android/gms/internal/ads/mf3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/s63;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v43;->c:Lcom/google/android/gms/internal/ads/s63;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/v63;->C()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v43;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/r23;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d93;->D()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/x53;->E(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/x53;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p23;->h(Lcom/google/android/gms/internal/ads/d93;)Lcom/google/android/gms/internal/ads/mf3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/u53;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v43;->d:Lcom/google/android/gms/internal/ads/u53;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x53;->C()Lcom/google/android/gms/internal/ads/d63;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d63;->D()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v43;->e:I

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x53;->D()Lcom/google/android/gms/internal/ads/u83;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u83;->D()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v43;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/v43;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/g43;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/d93;->D()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/i73;->D(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/i73;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/p23;->h(Lcom/google/android/gms/internal/ads/d93;)Lcom/google/android/gms/internal/ads/mf3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e73;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v43;->f:Lcom/google/android/gms/internal/ads/e73;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i73;->C()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v43;->b:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 21
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/w43;
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/i13;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/v43;->b:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/r23;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/s63;->F()Lcom/google/android/gms/internal/ads/r63;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v43;->c:Lcom/google/android/gms/internal/ads/s63;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    iget v3, p0, Lcom/google/android/gms/internal/ads/v43;->b:I

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/r63;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/r63;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/s63;

    new-instance v1, Lcom/google/android/gms/internal/ads/w43;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/p23;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/i13;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/w43;-><init>(Lcom/google/android/gms/internal/ads/i13;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/r23;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/v43;->e:I

    .line 9
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/v43;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/v43;->b:I

    .line 10
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/a63;->G()Lcom/google/android/gms/internal/ads/z53;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v43;->d:Lcom/google/android/gms/internal/ads/u53;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/u53;->D()Lcom/google/android/gms/internal/ads/a63;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/z53;->s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/z53;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/a63;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/r83;->G()Lcom/google/android/gms/internal/ads/q83;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v43;->d:Lcom/google/android/gms/internal/ads/u53;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/u53;->E()Lcom/google/android/gms/internal/ads/r83;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/q83;->s(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/q83;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/r83;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/u53;->G()Lcom/google/android/gms/internal/ads/t53;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/v43;->d:Lcom/google/android/gms/internal/ads/u53;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/u53;->C()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/t53;->q(I)Lcom/google/android/gms/internal/ads/t53;

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/t53;->r(Lcom/google/android/gms/internal/ads/a63;)Lcom/google/android/gms/internal/ads/t53;

    .line 22
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/t53;->s(Lcom/google/android/gms/internal/ads/r83;)Lcom/google/android/gms/internal/ads/t53;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/u53;

    new-instance v1, Lcom/google/android/gms/internal/ads/w43;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    .line 24
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/p23;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/i13;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/w43;-><init>(Lcom/google/android/gms/internal/ads/i13;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/g43;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/e73;->F()Lcom/google/android/gms/internal/ads/d73;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v43;->f:Lcom/google/android/gms/internal/ads/e73;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ee3;->o(Lcom/google/android/gms/internal/ads/ie3;)Lcom/google/android/gms/internal/ads/ee3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/v43;->b:I

    .line 28
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzs([BII)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/d73;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/d73;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e73;

    new-instance v0, Lcom/google/android/gms/internal/ads/w43;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v43;->a:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/l13;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/p23;->i(Ljava/lang/String;Lcom/google/android/gms/internal/ads/mf3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/l13;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/w43;-><init>(Lcom/google/android/gms/internal/ads/l13;)V

    return-object v0

    .line 31
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v43;->b:I

    return v0
.end method
