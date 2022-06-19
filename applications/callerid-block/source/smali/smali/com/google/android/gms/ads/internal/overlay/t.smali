.class public final Lcom/google/android/gms/ads/internal/overlay/t;
.super Lcom/google/android/gms/ads/internal/overlay/n;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/n;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final J0(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/n;->w:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/n;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
