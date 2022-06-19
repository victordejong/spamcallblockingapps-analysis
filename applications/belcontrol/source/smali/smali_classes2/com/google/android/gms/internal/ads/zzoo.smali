.class public final Lcom/google/android/gms/internal/ads/zzoo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzon;


# instance fields
.field private final data:[B

.field private uri:Landroid/net/Uri;

.field private zzbib:I

.field private zzbic:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzpg;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->data:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbic:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->data:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbib:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbib:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbib:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbic:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbic:I

    return p3
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzos;)J
    .locals 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzos;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->uri:Landroid/net/Uri;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzos;->position:J

    long-to-int v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbib:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzos;->zzco:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoo;->data:[B

    array-length v3, v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    :cond_0
    long-to-int v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbic:I

    if-lez v0, :cond_1

    add-int/2addr v2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->data:[B

    array-length v1, v1

    if-gt v2, v1, :cond_1

    int-to-long v0, v0

    return-wide v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoo;->zzbib:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzos;->zzco:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzoo;->data:[B

    array-length p1, p1

    const/16 v4, 0x4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unsatisfiable range: ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], length: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
