.class final Lcom/google/android/gms/internal/ads/i4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/ads/em3;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/em3;IJLcom/google/android/gms/internal/ads/k4;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/w5;",
            ">;",
            "Lcom/google/android/gms/internal/ads/em3;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i4;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i4;->d:Lcom/google/android/gms/internal/ads/em3;

    iput p3, p0, Lcom/google/android/gms/internal/ads/i4;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/i4;->c:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/i4;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i4;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/i4;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/i4;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/i4;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/i4;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/i4;)Lcom/google/android/gms/internal/ads/em3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/i4;->d:Lcom/google/android/gms/internal/ads/em3;

    return-object p0
.end method
