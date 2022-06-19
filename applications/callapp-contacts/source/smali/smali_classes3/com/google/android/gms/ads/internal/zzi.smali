.class final Lcom/google/android/gms/ads/internal/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cwg;


# instance fields
.field private final synthetic zzbpn:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzi;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/cuy;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/cuy;->a(IJ)Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public final zza(IJLjava/lang/String;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzi;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/cuy;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 6
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/google/android/gms/internal/ads/cuy;->b(IJLjava/lang/String;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
