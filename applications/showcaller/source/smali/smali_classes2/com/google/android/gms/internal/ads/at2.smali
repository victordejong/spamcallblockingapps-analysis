.class final Lcom/google/android/gms/internal/ads/at2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(J)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    const-wide/16 v4, -0x211

    add-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    div-long/2addr v2, p1

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/at2;->c:Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/u4;Lcom/google/android/gms/internal/ads/z3;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->a:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/at2;->c:Z

    if-eqz v0, :cond_1

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    return-wide p1

    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/z3;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    shl-int/lit8 v4, v4, 0x8

    .line 3
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/pr3;->i(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/at2;->c:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/at2;->a:J

    const-string p1, "C2Mp3TimestampTracker"

    const-string v0, "MPEG audio header is invalid."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/z3;->e:J

    return-wide p1

    .line 6
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/at2;->d(J)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/at2;->b:J

    return-wide p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/u4;)J
    .locals 2

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->B:I

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/at2;->d(J)J

    move-result-wide v0

    return-wide v0
.end method
