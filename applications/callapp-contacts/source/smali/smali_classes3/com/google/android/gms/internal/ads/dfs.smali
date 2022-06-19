.class final Lcom/google/android/gms/internal/ads/dfs;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/ddb;",
        "Lcom/google/android/gms/internal/ads/dhy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dcw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dhy;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhy;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/did;->a()Lcom/google/android/gms/internal/ads/dhw;

    move-result-object v0

    .line 1011
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dhy;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v1

    .line 5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dhy;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object p1

    .line 2005
    iget p1, p1, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/dfu;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhw;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dkw;

    new-instance v1, Lcom/google/android/gms/internal/ads/dku;

    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/dku;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dkw;-><init>(Lcom/google/android/gms/internal/ads/dfx;I)V

    return-object v0

    .line 11
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dkw;

    new-instance v1, Lcom/google/android/gms/internal/ads/dku;

    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/dku;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dkw;-><init>(Lcom/google/android/gms/internal/ads/dfx;I)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dkw;

    new-instance v1, Lcom/google/android/gms/internal/ads/dku;

    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/dku;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dkw;-><init>(Lcom/google/android/gms/internal/ads/dfx;I)V

    return-object v0
.end method
