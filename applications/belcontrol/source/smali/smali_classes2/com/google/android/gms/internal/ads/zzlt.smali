.class public final Lcom/google/android/gms/internal/ads/zzlt;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzaou:[I

.field public final zzaov:[J

.field public final zzaxc:I

.field public final zzayj:I

.field public final zzayl:[I

.field public final zzban:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkArgument(Z)V

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkArgument(Z)V

    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpg;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzaov:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzaou:[I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzayj:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzban:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzayl:[I

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzaxc:I

    return-void
.end method


# virtual methods
.method public final zzec(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzban:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpt;->zza([JJZZ)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzayl:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final zzed(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzban:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpt;->zzb([JJZZ)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzban:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzlt;->zzayl:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
