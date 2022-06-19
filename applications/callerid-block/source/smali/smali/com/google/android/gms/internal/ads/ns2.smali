.class final Lcom/google/android/gms/internal/ads/ns2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:F

.field final synthetic f:Lcom/google/android/gms/internal/ads/rs2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rs2;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ns2;->f:Lcom/google/android/gms/internal/ads/rs2;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ns2;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/ns2;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/ns2;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/ns2;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ns2;->f:Lcom/google/android/gms/internal/ads/rs2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rs2;->h(Lcom/google/android/gms/internal/ads/rs2;)Lcom/google/android/gms/internal/ads/ss2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ns2;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ns2;->c:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/ns2;->d:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/ns2;->e:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ss2;->g(IIIF)V

    return-void
.end method
