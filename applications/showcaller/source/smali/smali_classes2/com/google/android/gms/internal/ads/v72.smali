.class final Lcom/google/android/gms/internal/ads/v72;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/il1;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x92;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/x92;Lcom/google/android/gms/internal/ads/w82;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/s9;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x92;->H0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/hh1;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hh1;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x92;->K0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/s6;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v72;->a:Lcom/google/android/gms/internal/ads/x92;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/x92;->K0(Lcom/google/android/gms/internal/ads/x92;)Lcom/google/android/gms/internal/ads/s6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/s6;->b()V

    :cond_0
    return-void
.end method
