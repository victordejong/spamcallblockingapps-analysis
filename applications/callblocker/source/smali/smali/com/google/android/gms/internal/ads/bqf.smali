.class final synthetic Lcom/google/android/gms/internal/ads/bqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/awx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqf;->a:Lcom/google/android/gms/internal/ads/bmx;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bqf;->a:Lcom/google/android/gms/internal/ads/bmx;

    .line 2
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/chs;->a(Z)V

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/chs;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhk;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbxy;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
