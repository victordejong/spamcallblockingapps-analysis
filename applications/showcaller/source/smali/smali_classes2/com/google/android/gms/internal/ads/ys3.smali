.class public final Lcom/google/android/gms/internal/ads/ys3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xq3;


# instance fields
.field private final d:J

.field private final e:Lcom/google/android/gms/internal/ads/xq3;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/xq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ys3;->d:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ys3;->e:Lcom/google/android/gms/internal/ads/xq3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ys3;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ys3;->d:J

    return-wide v0
.end method


# virtual methods
.method public final o(II)Lcom/google/android/gms/internal/ads/yr3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys3;->e:Lcom/google/android/gms/internal/ads/xq3;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xq3;->o(II)Lcom/google/android/gms/internal/ads/yr3;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/google/android/gms/internal/ads/ur3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys3;->e:Lcom/google/android/gms/internal/ads/xq3;

    new-instance v1, Lcom/google/android/gms/internal/ads/xs3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/xs3;-><init>(Lcom/google/android/gms/internal/ads/ys3;Lcom/google/android/gms/internal/ads/ur3;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xq3;->r(Lcom/google/android/gms/internal/ads/ur3;)V

    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys3;->e:Lcom/google/android/gms/internal/ads/xq3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xq3;->t()V

    return-void
.end method
