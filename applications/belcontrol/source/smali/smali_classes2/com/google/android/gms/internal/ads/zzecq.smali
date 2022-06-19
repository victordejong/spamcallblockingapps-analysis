.class public final Lcom/google/android/gms/internal/ads/zzecq;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeaq;",
        "Lcom/google/android/gms/internal/ads/zzegt;",
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
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegt;->zzbfc()Lcom/google/android/gms/internal/ads/zzegw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegw;->zzbff()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebe;->zzhp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzebb;->zzho(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeaq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeco;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegt;->zzbfc()Lcom/google/android/gms/internal/ads/zzegw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegw;->zzbfg()Lcom/google/android/gms/internal/ads/zzegg;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzeco;-><init>(Lcom/google/android/gms/internal/ads/zzegg;Lcom/google/android/gms/internal/ads/zzeaq;)V

    return-object v1
.end method
