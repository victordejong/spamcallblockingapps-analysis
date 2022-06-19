.class public final Lcom/google/android/gms/internal/ads/pn3;
.super Lcom/google/android/gms/internal/ads/y4;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final f:[B

.field private g:Landroid/net/Uri;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/y4;-><init>(Z)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn3;->f:[B

    return-void
.end method


# virtual methods
.method public final c([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn3;->f:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/pn3;->h:I

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/pn3;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/pn3;->h:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    .line 3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/y4;->r(I)V

    return p3
.end method

.method public final e(Lcom/google/android/gms/internal/ads/fb;)J
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn3;->g:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/y4;->p(Lcom/google/android/gms/internal/ads/fb;)V

    .line 3
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/fb;->f:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pn3;->f:[B

    array-length v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gtz v5, :cond_2

    long-to-int v1, v0

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/pn3;->h:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/fb;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    int-to-long v5, v2

    .line 6
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn3;->j:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/y4;->q(Lcom/google/android/gms/internal/ads/fb;)V

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/fb;->g:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/pn3;->i:I

    int-to-long v0, p1

    return-wide v0

    .line 9
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzak;

    const/16 v0, 0x7d8

    .line 10
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>(I)V

    throw p1
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn3;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn3;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/y4;->s()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn3;->g:Landroid/net/Uri;

    return-void
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn3;->g:Landroid/net/Uri;

    return-object v0
.end method
