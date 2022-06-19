.class public final Lcom/google/android/gms/internal/ads/zzbcy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbbo;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzbdd;
    .locals 0

    if-lez p2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbck;->zzack()I

    move-result p2

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbbl;->zzelm:I

    if-ge p2, p3, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbds;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbds;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbbl;)V

    return-object p2

    :cond_0
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbbl;->zzelg:I

    if-ge p2, p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbdp;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;Lcom/google/android/gms/internal/ads/zzbbl;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdn;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbdo;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdo;-><init>(Lcom/google/android/gms/internal/ads/zzbbo;)V

    return-object p2
.end method
