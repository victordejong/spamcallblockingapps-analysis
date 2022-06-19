.class public final Lcom/google/android/gms/internal/ads/jp2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/jp2;->a:Z

    return v0
.end method

.method final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/oq2;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/jp2;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/jp2;->a:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/bq2;->a()Lcom/google/android/gms/internal/ads/bq2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bq2;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/wp2;->a()Lcom/google/android/gms/internal/ads/wp2;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wp2;->b(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/mq2;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp2;->a()Lcom/google/android/gms/internal/ads/yp2;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/yp2;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
