.class final Lcom/google/android/gms/internal/ads/ml3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/dv3;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dv3;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ml3;->a:Lcom/google/android/gms/internal/ads/dv3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ml3;->b:[Z

    iget p1, p1, Lcom/google/android/gms/internal/ads/dv3;->c:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ml3;->c:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ml3;->d:[Z

    return-void
.end method
