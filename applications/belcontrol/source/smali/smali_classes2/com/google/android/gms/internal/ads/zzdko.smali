.class public final Lcom/google/android/gms/internal/ads/zzdko;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzhhs:Lcom/google/android/gms/internal/ads/zzatq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final zzhht:Lcom/google/android/gms/internal/ads/zzdkm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdko;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzatq;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzatq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzhht:Lcom/google/android/gms/internal/ads/zzdkm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdko;->zzhhs:Lcom/google/android/gms/internal/ads/zzatq;

    return-void
.end method
