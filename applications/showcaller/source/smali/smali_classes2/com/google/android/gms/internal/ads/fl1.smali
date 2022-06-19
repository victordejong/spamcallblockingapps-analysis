.class public final Lcom/google/android/gms/internal/ads/fl1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/t31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/wn0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fl1;->d:Lcom/google/android/gms/internal/ads/wn0;

    return-void
.end method


# virtual methods
.method public final U(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fl1;->d:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->onPause()V

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fl1;->d:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->onResume()V

    :cond_0
    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fl1;->d:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->destroy()V

    :cond_0
    return-void
.end method
