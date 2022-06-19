.class public final Lcom/google/android/gms/internal/ads/drm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/drp;


# instance fields
.field private final a:[B

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drm;->a:[B

    .line 5
    return-void

    .line 3
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)I
    .locals 3

    .prologue
    .line 13
    if-nez p3, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 15
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    if-nez v0, :cond_1

    .line 16
    const/4 v0, -0x1

    goto :goto_0

    .line 17
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drm;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drq;)J
    .locals 7

    .prologue
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drm;->b:Landroid/net/Uri;

    .line 7
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drm;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    sub-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drm;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 11
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/drm;->c:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/drm;->a:[B

    array-length v4, v4

    const/16 v5, 0x4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Unsatisfiable range: ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    goto :goto_0

    .line 12
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/drm;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drm;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drm;->b:Landroid/net/Uri;

    .line 24
    return-void
.end method
