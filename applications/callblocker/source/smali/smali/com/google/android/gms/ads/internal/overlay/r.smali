.class public final Lcom/google/android/gms/ads/internal/overlay/r;
.super Lcom/google/android/gms/ads/internal/overlay/c;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/app/Activity;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->d:I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/r;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    return-void
.end method
