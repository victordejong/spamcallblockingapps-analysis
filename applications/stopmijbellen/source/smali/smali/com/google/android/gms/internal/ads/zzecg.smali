.class public final synthetic Lcom/google/android/gms/internal/ads/zzecg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzech;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcdq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzech;Lcom/google/android/gms/internal/ads/zzcdq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecg;->zza:Lcom/google/android/gms/internal/ads/zzech;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecg;->zzb:Lcom/google/android/gms/internal/ads/zzcdq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecg;->zza:Lcom/google/android/gms/internal/ads/zzech;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecg;->zzb:Lcom/google/android/gms/internal/ads/zzcdq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzech;->zzc(Lcom/google/android/gms/internal/ads/zzcdq;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
