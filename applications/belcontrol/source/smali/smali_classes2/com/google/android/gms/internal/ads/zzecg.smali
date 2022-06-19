.class public final Lcom/google/android/gms/internal/ads/zzecg;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeaq;",
        "Lcom/google/android/gms/internal/ads/zzeew;",
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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeew;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzecx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeew;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzecx;-><init>([B)V

    return-object v0
.end method
