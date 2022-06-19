.class public final synthetic Lcom/google/android/gms/internal/ads/zzclt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdlk:Ljava/lang/Object;

.field private final zzgkt:Ljava/lang/String;

.field private final zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

.field private final zzgnb:Lcom/google/android/gms/internal/ads/zzbaa;

.field private final zzgnc:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzdlk:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgnb:Lcom/google/android/gms/internal/ads/zzbaa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgkt:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgnc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgmp:Lcom/google/android/gms/internal/ads/zzclq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzdlk:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgnb:Lcom/google/android/gms/internal/ads/zzbaa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgkt:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzgnc:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbaa;Ljava/lang/String;J)V

    return-void
.end method
