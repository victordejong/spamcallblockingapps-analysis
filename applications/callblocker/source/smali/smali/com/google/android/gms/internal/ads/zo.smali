.class public abstract Lcom/google/android/gms/internal/ads/zo;
.super Landroid/view/TextureView;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aai;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/zy;

.field protected final b:Lcom/google/android/gms/internal/ads/aaj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zo;->a:Lcom/google/android/gms/internal/ads/zy;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/aaj;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/ads/aaj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aai;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zo;->b:Lcom/google/android/gms/internal/ads/aaj;

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(FF)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/ads/zl;)V
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zo;->setVideoPath(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 7
    return-void
.end method

.method public abstract d()V
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public abstract e()V
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract setVideoPath(Ljava/lang/String;)V
.end method
