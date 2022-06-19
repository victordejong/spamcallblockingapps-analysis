.class final synthetic Lcom/google/android/gms/internal/ads/zy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s01;

.field private final b:I

.field private final c:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s01;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy;->a:Lcom/google/android/gms/internal/ads/s01;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zy;->b:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zy;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy;->a:Lcom/google/android/gms/internal/ads/s01;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zy;->b:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zy;->c:J

    check-cast p1, Lcom/google/android/gms/internal/ads/u11;

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/u11;->q(Lcom/google/android/gms/internal/ads/s01;IJ)V

    return-void
.end method
