.class final Lcom/google/android/gms/internal/ads/dns;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dns;->a:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dns;->b:J

    .line 4
    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/gms/internal/ads/dnt;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dns;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dns;)J
    .locals 2

    .prologue
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dns;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dns;)I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dns;->a:I

    return v0
.end method
