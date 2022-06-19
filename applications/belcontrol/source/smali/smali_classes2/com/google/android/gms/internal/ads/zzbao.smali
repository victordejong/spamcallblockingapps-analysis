.class public final Lcom/google/android/gms/internal/ads/zzbao;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzejo:Lcom/google/android/gms/internal/ads/zzbam;

.field private final synthetic zzejp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbam;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejp:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzejo:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbam;->zza(Lcom/google/android/gms/internal/ads/zzbam;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbaw;->zzfb()V

    :cond_0
    return-void
.end method
