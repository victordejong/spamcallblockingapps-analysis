.class final Lcom/google/android/gms/internal/ads/fj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Lcom/google/android/gms/internal/ads/jj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jj;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fj;->f:Lcom/google/android/gms/internal/ads/jj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/fj;->d:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/fj;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fj;->f:Lcom/google/android/gms/internal/ads/jj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jj;->a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/kj;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/fj;->d:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fj;->e:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/kj;->x(IJ)V

    return-void
.end method
