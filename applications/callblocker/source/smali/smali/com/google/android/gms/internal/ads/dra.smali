.class public final Lcom/google/android/gms/internal/ads/dra;
.super Lcom/google/android/gms/internal/ads/dqx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dqs;I)V
    .locals 2

    .prologue
    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/dra;-><init>(Lcom/google/android/gms/internal/ads/dqs;IILjava/lang/Object;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dqs;IILjava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dqx;-><init>(Lcom/google/android/gms/internal/ads/dqs;[I)V

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/ads/dra;->a:I

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dra;->b:Ljava/lang/Object;

    .line 6
    return-void
.end method
