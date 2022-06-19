.class public final synthetic Lcom/google/android/gms/internal/ads/zzcrt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgta:Lcom/google/android/gms/internal/ads/zzcru;

.field private final zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgtd:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgta:Lcom/google/android/gms/internal/ads/zzcru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtd:Lcom/google/android/gms/internal/ads/zzcig;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgta:Lcom/google/android/gms/internal/ads/zzcru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtc:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzgtd:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcru;->zza(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzcig;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
