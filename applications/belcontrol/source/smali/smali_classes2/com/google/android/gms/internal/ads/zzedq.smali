.class public final Lcom/google/android/gms/internal/ads/zzedq;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzebd;",
        "Lcom/google/android/gms/internal/ads/zzefv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdo()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzega;->zzbdu()Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdo()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeds;->zzidt:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeip;

    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzeip;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeir;-><init>(Lcom/google/android/gms/internal/ads/zzedv;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeip;

    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzeip;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeir;-><init>(Lcom/google/android/gms/internal/ads/zzedv;I)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeip;

    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzeip;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeir;-><init>(Lcom/google/android/gms/internal/ads/zzedv;I)V

    return-object v0
.end method
