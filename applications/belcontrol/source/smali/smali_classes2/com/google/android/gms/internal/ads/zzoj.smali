.class public final Lcom/google/android/gms/internal/ads/zzoj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzbhx:Lcom/google/android/gms/internal/ads/zznu;

.field public final zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

.field public final zzbhz:Ljava/lang/Object;

.field public final zzbia:[Lcom/google/android/gms/internal/ads/zzia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznu;Lcom/google/android/gms/internal/ads/zzoi;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhx:Lcom/google/android/gms/internal/ads/zznu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhz:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzoj;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzoj;->zzbhy:Lcom/google/android/gms/internal/ads/zzoi;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzoi;->zzbe(I)Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzpt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzoj;->zzbia:[Lcom/google/android/gms/internal/ads/zzia;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzpt;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
