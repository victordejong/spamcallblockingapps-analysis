.class final Lcom/google/android/gms/internal/ads/zzks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkn;


# instance fields
.field private final synthetic zzasr:Lcom/google/android/gms/internal/ads/zzkq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzkq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkq;Lcom/google/android/gms/internal/ads/zzkp;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzks;-><init>(Lcom/google/android/gms/internal/ads/zzkq;)V

    return-void
.end method


# virtual methods
.method public final zza(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkq;->zza(ID)V

    return-void
.end method

.method public final zza(IILcom/google/android/gms/internal/ads/zzjz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkq;->zza(IILcom/google/android/gms/internal/ads/zzjz;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkq;->zza(ILjava/lang/String;)V

    return-void
.end method

.method public final zzal(I)I
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkq;->zzal(I)I

    move-result p1

    return p1
.end method

.method public final zzam(I)Z
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzkq;->zzam(I)Z

    move-result p1

    return p1
.end method

.method public final zzan(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkq;->zzan(I)V

    return-void
.end method

.method public final zzd(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkq;->zzd(IJ)V

    return-void
.end method

.method public final zzd(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzks;->zzasr:Lcom/google/android/gms/internal/ads/zzkq;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzkq;->zzd(IJJ)V

    return-void
.end method
