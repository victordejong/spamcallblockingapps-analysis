.class final Lcom/google/android/gms/internal/ads/gj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:F

.field final synthetic h:Lcom/google/android/gms/internal/ads/jj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jj;IIIF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gj;->h:Lcom/google/android/gms/internal/ads/jj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/gj;->d:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/gj;->e:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/gj;->f:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/gj;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gj;->h:Lcom/google/android/gms/internal/ads/jj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jj;->a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/kj;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/gj;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/gj;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/gj;->f:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/gj;->g:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/kj;->i(IIIF)V

    return-void
.end method
