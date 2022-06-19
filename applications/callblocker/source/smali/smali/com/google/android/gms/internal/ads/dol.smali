.class final Lcom/google/android/gms/internal/ads/dol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dol;->a:I

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dol;->b:J

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/dol;->c:I

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dol;)J
    .locals 2

    .prologue
    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dol;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/dol;)I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dol;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/dol;)I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dol;->c:I

    return v0
.end method
