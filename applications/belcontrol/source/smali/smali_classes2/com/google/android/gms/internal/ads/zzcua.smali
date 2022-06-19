.class public final synthetic Lcom/google/android/gms/internal/ads/zzcua;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzguq:Lcom/google/android/gms/internal/ads/zzctx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzctx;Lcom/google/android/gms/internal/ads/zzdmw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzguq:Lcom/google/android/gms/internal/ads/zzctx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgtb:Lcom/google/android/gms/internal/ads/zzdmw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgk;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzctx;->zza(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcgk;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
