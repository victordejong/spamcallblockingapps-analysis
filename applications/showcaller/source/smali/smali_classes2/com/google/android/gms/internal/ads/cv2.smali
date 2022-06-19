.class final Lcom/google/android/gms/internal/ads/cv2;
.super Lcom/google/android/gms/internal/ads/fv2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field final synthetic j:Lcom/google/android/gms/internal/ads/dv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dv2;Lcom/google/android/gms/internal/ads/hv2;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cv2;->j:Lcom/google/android/gms/internal/ads/dv2;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/fv2;-><init>(Lcom/google/android/gms/internal/ads/hv2;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 1

    add-int/lit16 p1, p1, 0xfa0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fv2;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final d(I)I
    .locals 0

    return p1
.end method
