.class public final Lcom/google/android/gms/internal/ads/zzebu;
.super Lcom/google/android/gms/internal/ads/zzeaz;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzeaz<",
        "Lcom/google/android/gms/internal/ads/zzeaq;",
        "Lcom/google/android/gms/internal/ads/zzeec;",
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
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeec;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeib;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzebw;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbm()Lcom/google/android/gms/internal/ads/zzeeg;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzeio;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeax;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeio;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzedn;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbn()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeax;->zza(Lcom/google/android/gms/internal/ads/zzemo;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzebd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeec;->zzbbn()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzefv;->zzbdo()Lcom/google/android/gms/internal/ads/zzega;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzega;->zzbbj()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeib;-><init>(Lcom/google/android/gms/internal/ads/zzeio;Lcom/google/android/gms/internal/ads/zzebd;I)V

    return-object v0
.end method
