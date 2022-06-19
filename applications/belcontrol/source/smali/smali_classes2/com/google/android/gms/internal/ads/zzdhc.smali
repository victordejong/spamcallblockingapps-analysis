.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzheq:Lcom/google/android/gms/internal/ads/zzdhd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhc;->zzheq:Lcom/google/android/gms/internal/ads/zzdhd;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhc;->zzheq:Lcom/google/android/gms/internal/ads/zzdhd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdha;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdhd;->zzher:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdhd;->zzduo:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdha;-><init>(Ljava/util/List;)V

    return-object v1
.end method
