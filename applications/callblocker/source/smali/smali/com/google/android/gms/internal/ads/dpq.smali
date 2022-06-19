.class public final Lcom/google/android/gms/internal/ads/dpq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqr;


# instance fields
.field private final a:[Lcom/google/android/gms/internal/ads/dqr;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dqr;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpq;->a:[Lcom/google/android/gms/internal/ads/dqr;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 11
    move v0, v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dpq;->n_()J

    move-result-wide v4

    .line 14
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    .line 15
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dpq;->a:[Lcom/google/android/gms/internal/ads/dqr;

    array-length v7, v6

    move v3, v1

    move v2, v1

    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    .line 16
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/dqr;->n_()J

    move-result-wide v10

    cmp-long v9, v10, v4

    if-nez v9, :cond_1

    .line 17
    invoke-interface {v8, p1, p2}, Lcom/google/android/gms/internal/ads/dqr;->a(J)Z

    move-result v8

    or-int/2addr v2, v8

    .line 18
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_2
    or-int/2addr v0, v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    :cond_3
    return v0
.end method

.method public final n_()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dpq;->a:[Lcom/google/android/gms/internal/ads/dqr;

    array-length v8, v5

    const/4 v4, 0x0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 6
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dqr;->n_()J

    move-result-wide v10

    .line 7
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 8
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 9
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method
