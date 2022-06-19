.class public final Lcom/google/android/gms/internal/ads/zzmx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznn;


# instance fields
.field private final track:I

.field private final synthetic zzbdl:Lcom/google/android/gms/internal/ads/zzms;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzms;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzmx;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    return p0
.end method


# virtual methods
.method public final isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzms;->zzaz(I)Z

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzjp;Z)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzms;->zza(ILcom/google/android/gms/internal/ads/zzhv;Lcom/google/android/gms/internal/ads/zzjp;Z)I

    move-result p1

    return p1
.end method

.method public final zzeh(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzms;->zze(IJ)V

    return-void
.end method

.method public final zzhs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzbdl:Lcom/google/android/gms/internal/ads/zzms;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzms;->zzhs()V

    return-void
.end method
