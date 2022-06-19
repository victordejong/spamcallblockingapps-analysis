.class final Lcom/google/android/gms/internal/ads/r32;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/t52;

.field final synthetic b:Lcom/google/android/gms/internal/ads/s42;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s42;Lcom/google/android/gms/internal/ads/t52;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r32;->a:Lcom/google/android/gms/internal/ads/t52;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/t52;->K(Lcom/google/android/gms/internal/ads/t52;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->J(Lcom/google/android/gms/internal/ads/t52;)Lcom/google/android/gms/internal/ads/il1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->L(Lcom/google/android/gms/internal/ads/t52;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->J(Lcom/google/android/gms/internal/ads/t52;)Lcom/google/android/gms/internal/ads/il1;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/il1;->zza()V

    :cond_1
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t52;->K(Lcom/google/android/gms/internal/ads/t52;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->J(Lcom/google/android/gms/internal/ads/t52;)Lcom/google/android/gms/internal/ads/il1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->L(Lcom/google/android/gms/internal/ads/t52;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/r32;->b:Lcom/google/android/gms/internal/ads/s42;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s42;->c:Lcom/google/android/gms/internal/ads/t52;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t52;->J(Lcom/google/android/gms/internal/ads/t52;)Lcom/google/android/gms/internal/ads/il1;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/il1;->zza()V

    :cond_1
    return-void
.end method
