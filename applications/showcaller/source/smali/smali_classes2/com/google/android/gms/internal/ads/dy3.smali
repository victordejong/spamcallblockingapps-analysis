.class final Lcom/google/android/gms/internal/ads/dy3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/dy3;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dy3;->b:J

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/la;)Lcom/google/android/gms/internal/ads/dy3;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->q()[B

    move-result-object v0

    check-cast p0, Lcom/google/android/gms/internal/ads/pq3;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/pq3;->l([BIIZ)Z

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->D()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->C()J

    move-result-wide v0

    new-instance p1, Lcom/google/android/gms/internal/ads/dy3;

    .line 5
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/dy3;-><init>(IJ)V

    return-object p1
.end method
