.class public final synthetic Lcom/google/android/gms/internal/ads/zzcsc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

.field private final zzgtl:Lcom/google/android/gms/internal/ads/zzcrz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcrz;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgtl:Lcom/google/android/gms/internal/ads/zzcrz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzgtl:Lcom/google/android/gms/internal/ads/zzcrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzghw:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsc;->zzfva:Lcom/google/android/gms/internal/ads/zzdmw;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcrz;->zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
