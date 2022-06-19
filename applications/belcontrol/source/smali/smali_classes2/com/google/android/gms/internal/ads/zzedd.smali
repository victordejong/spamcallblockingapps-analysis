.class public final Lcom/google/android/gms/internal/ads/zzedd;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeat;",
        "Lcom/google/android/gms/internal/ads/zzefo;",
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
    .locals 10

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->zzbcu()Lcom/google/android/gms/internal/ads/zzefk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcw()Lcom/google/android/gms/internal/ads/zzefr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdj()Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefs;)Lcom/google/android/gms/internal/ads/zzehz;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->zzbde()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefo;->zzbdf()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzehx;->zza(Lcom/google/android/gms/internal/ads/zzehz;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/ads/zzedj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcx()Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeff;->zzbcr()Lcom/google/android/gms/internal/ads/zzegg;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(Lcom/google/android/gms/internal/ads/zzegg;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeht;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdl()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdk()Lcom/google/android/gms/internal/ads/zzeft;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzeft;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzefk;->zzbcy()Lcom/google/android/gms/internal/ads/zzefe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzedh;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeic;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzeht;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzeic;Lcom/google/android/gms/internal/ads/zzehr;)V

    return-object p1
.end method
