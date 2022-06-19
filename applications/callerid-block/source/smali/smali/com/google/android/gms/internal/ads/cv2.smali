.class final Lcom/google/android/gms/internal/ads/cv2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/rt2;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/fv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fv2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cv2;->a:Lcom/google/android/gms/internal/ads/fv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cv2;->a:Lcom/google/android/gms/internal/ads/fv2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fv2;->g(Lcom/google/android/gms/internal/ads/fv2;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cv2;->a:Lcom/google/android/gms/internal/ads/fv2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fv2;->f(Lcom/google/android/gms/internal/ads/fv2;)V

    return-void
.end method
