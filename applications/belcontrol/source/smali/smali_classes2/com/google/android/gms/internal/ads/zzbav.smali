.class public abstract Lcom/google/android/gms/internal/ads/zzbav;
.super Landroid/view/TextureView;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbs;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field public final zzeju:Lcom/google/android/gms/internal/ads/zzbbf;

.field public final zzejv:Lcom/google/android/gms/internal/ads/zzbbp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav;->zzeju:Lcom/google/android/gms/internal/ads/zzbbf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbp;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/zzbbp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbav;->zzejv:Lcom/google/android/gms/internal/ads/zzbbp;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getTotalBytes()J
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method

.method public abstract stop()V
.end method

.method public abstract zza(FF)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbaw;)V
.end method

.method public abstract zzaad()Ljava/lang/String;
.end method

.method public abstract zzaah()J
.end method

.method public abstract zzaai()I
.end method

.method public abstract zzaaj()V
.end method

.method public zzb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbav;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public zzdk(I)V
    .locals 0

    return-void
.end method

.method public zzdl(I)V
    .locals 0

    return-void
.end method

.method public zzdm(I)V
    .locals 0

    return-void
.end method

.method public zzdn(I)V
    .locals 0

    return-void
.end method

.method public zzdo(I)V
    .locals 0

    return-void
.end method

.method public abstract zznb()J
.end method
