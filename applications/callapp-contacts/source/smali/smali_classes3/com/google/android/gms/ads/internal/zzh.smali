.class final Lcom/google/android/gms/ads/internal/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbpm:Z

.field private final synthetic zzbpn:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzf;->zzb(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->zzc(Lcom/google/android/gms/ads/internal/zzf;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpm:Z

    .line 6
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/csa;->a(Ljava/lang/String;Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/csa;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/csa;->c()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzh;->zzbpn:Lcom/google/android/gms/ads/internal/zzf;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzf;->zza(Lcom/google/android/gms/ads/internal/zzf;)Lcom/google/android/gms/internal/ads/cuy;

    move-result-object v3

    const/16 v4, 0x7eb

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 12
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
