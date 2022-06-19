.class final Lcom/google/android/gms/internal/ads/p2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/n2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p2;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/n2;

    .line 2
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/n2;-><init>(Lcom/google/android/gms/internal/ads/p2;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/o2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p2;->b:Lcom/google/android/gms/internal/ads/n2;

    return-void
.end method
