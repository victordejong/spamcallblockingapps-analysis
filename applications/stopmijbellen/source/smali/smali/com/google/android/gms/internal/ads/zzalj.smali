.class final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfmh;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zzb(IJLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zza:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 2
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/zzfmh;->zze(IJLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
