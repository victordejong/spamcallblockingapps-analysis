.class final Lcom/google/android/gms/internal/ads/zzedl;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzebd;",
        "Lcom/google/android/gms/internal/ads/zzedx;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedx;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeiq;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->zzbbe()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzejr;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzeiq;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzedx;->zzbbf()Lcom/google/android/gms/internal/ads/zzeeb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeeb;->zzbbj()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeir;-><init>(Lcom/google/android/gms/internal/ads/zzedv;I)V

    return-object v0
.end method
