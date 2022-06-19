.class final Lcom/google/android/gms/internal/ads/zzecy;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeau;",
        "Lcom/google/android/gms/internal/ads/zzefn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzefn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbdb()Lcom/google/android/gms/internal/ads/zzefo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefo;->zzbcu()Lcom/google/android/gms/internal/ads/zzefk;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcw()Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdj()Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefs;)Lcom/google/android/gms/internal/ads/zzehz;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object p1

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzehx;->zza(Lcom/google/android/gms/internal/ads/zzehz;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 11
    new-instance p1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeie;->zzikm:Lcom/google/android/gms/internal/ads/zzeie;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzeie;->zzhw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 13
    invoke-virtual {v2, p1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 15
    new-instance v7, Lcom/google/android/gms/internal/ads/zzedj;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcx()Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeff;->zzbcr()Lcom/google/android/gms/internal/ads/zzegg;

    move-result-object p1

    invoke-direct {v7, p1}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(Lcom/google/android/gms/internal/ads/zzegg;)V

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehu;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdl()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v4

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdk()Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzeft;)Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcy()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeic;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzeic;Lcom/google/android/gms/internal/ads/zzehr;)V

    return-object p1
.end method
