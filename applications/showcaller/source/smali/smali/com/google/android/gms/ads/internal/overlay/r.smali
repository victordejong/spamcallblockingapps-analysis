.class public final Lcom/google/android/gms/ads/internal/overlay/r;
.super Lcom/google/android/gms/ads/internal/overlay/l;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/l;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a0(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
