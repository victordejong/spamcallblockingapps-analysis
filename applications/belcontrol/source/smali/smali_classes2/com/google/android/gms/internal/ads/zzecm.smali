.class public final Lcom/google/android/gms/internal/ads/zzecm;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeaq;",
        "Lcom/google/android/gms/internal/ads/zzegp;",
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
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzegp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegp;->zzbew()Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzegs;->zzbez()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzebe;->zzhp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebb;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzebb;->zzho(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeaq;

    move-result-object p1

    return-object p1
.end method
