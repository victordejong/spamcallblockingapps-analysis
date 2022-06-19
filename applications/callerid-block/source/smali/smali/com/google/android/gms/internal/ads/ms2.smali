.class final Lcom/google/android/gms/internal/ads/ms2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/gms/internal/ads/rs2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rs2;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ms2;->d:Lcom/google/android/gms/internal/ads/rs2;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ms2;->b:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ms2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ms2;->d:Lcom/google/android/gms/internal/ads/rs2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rs2;->h(Lcom/google/android/gms/internal/ads/rs2;)Lcom/google/android/gms/internal/ads/ss2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ms2;->b:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ms2;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ss2;->l(IJ)V

    return-void
.end method
