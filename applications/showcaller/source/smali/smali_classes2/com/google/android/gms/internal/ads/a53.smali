.class final Lcom/google/android/gms/internal/ads/a53;
.super Lcom/google/android/gms/internal/ads/v13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/v13<",
        "Lcom/google/android/gms/internal/ads/a23;",
        "Lcom/google/android/gms/internal/ads/r83;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v13;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/r83;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r83;->D()Lcom/google/android/gms/internal/ads/x83;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x83;->H()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r83;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r83;->D()Lcom/google/android/gms/internal/ads/x83;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p1

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bc3;

    const-string v3, "HMACSHA224"

    .line 7
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bc3;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bc3;

    const-string v3, "HMACSHA512"

    .line 10
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bc3;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bc3;

    const-string v3, "HMACSHA256"

    .line 12
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bc3;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    goto :goto_0

    .line 13
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bc3;

    const-string v3, "HMACSHA384"

    .line 14
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bc3;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    goto :goto_0

    .line 15
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/cc3;

    new-instance v1, Lcom/google/android/gms/internal/ads/bc3;

    const-string v3, "HMACSHA1"

    .line 16
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bc3;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cc3;-><init>(Lcom/google/android/gms/internal/ads/i53;I)V

    :goto_0
    return-object v0
.end method
