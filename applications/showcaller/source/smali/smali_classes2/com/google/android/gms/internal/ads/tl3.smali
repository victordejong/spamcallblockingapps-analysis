.class final Lcom/google/android/gms/internal/ads/tl3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Z

.field public d:Lcom/google/android/gms/internal/ads/in3;

.field public e:Lcom/google/android/gms/internal/ads/tl3;


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tl3;->a:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tl3;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tl3;->a:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl3;->d:Lcom/google/android/gms/internal/ads/in3;

    iget v2, v2, Lcom/google/android/gms/internal/ads/in3;->b:I

    sub-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public final b()Lcom/google/android/gms/internal/ads/tl3;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tl3;->d:Lcom/google/android/gms/internal/ads/in3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl3;->e:Lcom/google/android/gms/internal/ads/tl3;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tl3;->e:Lcom/google/android/gms/internal/ads/tl3;

    return-object v1
.end method
