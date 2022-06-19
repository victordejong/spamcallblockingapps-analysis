.class public final Lcom/google/android/gms/internal/ads/zzaa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$tag:Ljava/lang/String;

.field private final synthetic zzam:J

.field private final synthetic zzan:Lcom/google/android/gms/internal/ads/zzab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzan:Lcom/google/android/gms/internal/ads/zzab;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaa;->val$tag:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzam:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzan:Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzb(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzao$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaa;->val$tag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzam:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzao$zza;->zza(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzan:Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzb(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzao$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaa;->zzan:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzao$zza;->zzd(Ljava/lang/String;)V

    return-void
.end method
