.class final Lcom/google/android/gms/internal/ads/aac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/media/MediaPlayer;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzbbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aac;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aac;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aac;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aac;->a:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->a(Lcom/google/android/gms/internal/ads/zzbbq;Landroid/media/MediaPlayer;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aac;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->a(Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/aak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aac;->b:Lcom/google/android/gms/internal/ads/zzbbq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->a(Lcom/google/android/gms/internal/ads/zzbbq;)Lcom/google/android/gms/internal/ads/aak;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aak;->b()V

    :cond_0
    return-void
.end method
