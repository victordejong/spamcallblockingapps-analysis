.class final Lcom/google/android/gms/internal/ads/sp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcw;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sp;->c:Lcom/google/android/gms/internal/ads/zzbcw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sp;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sp;->c:Lcom/google/android/gms/internal/ads/zzbcw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sp;->b:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcw;->J(Lcom/google/android/gms/internal/ads/zzbcw;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sp;->c:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sp;->c:Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcw;->K(Lcom/google/android/gms/internal/ads/zzbcw;)Lcom/google/android/gms/internal/ads/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aq;->b()V

    :cond_0
    return-void
.end method
