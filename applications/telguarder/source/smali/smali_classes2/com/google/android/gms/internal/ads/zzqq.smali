.class final Lcom/google/android/gms/internal/ads/zzqq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbna:Lcom/google/android/gms/internal/ads/zzqj;

.field private final synthetic zzbne:I

.field private final synthetic zzbnf:I

.field private final synthetic zzbng:I

.field private final synthetic zzbnh:F


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqj;IIIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbne:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbnf:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbng:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbnh:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbna:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzqj;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbne:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbnf:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbng:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqq;->zzbnh:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzqk;->zzb(IIIF)V

    return-void
.end method
