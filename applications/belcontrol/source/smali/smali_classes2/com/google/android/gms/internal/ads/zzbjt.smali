.class public final Lcom/google/android/gms/internal/ads/zzbjt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zzfrx:Lcom/google/android/gms/internal/ads/zzbju;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjt;->zzfrx:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjt;->zzfrx:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Lcom/google/android/gms/internal/ads/zzbju;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjt;->zzfrx:Lcom/google/android/gms/internal/ads/zzbju;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Lcom/google/android/gms/internal/ads/zzbju;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbjw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbjw;-><init>(Lcom/google/android/gms/internal/ads/zzbjt;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
