.class public final Lcom/google/android/gms/internal/ads/ar1;
.super Ljava/lang/Object;
.source ""


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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ar1;->a:Z

    return v0
.end method

.method final b(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/fs1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ar1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ar1;->a:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/tr1;->a()Lcom/google/android/gms/internal/ads/tr1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tr1;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/or1;->a()Lcom/google/android/gms/internal/ads/or1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/or1;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ds1;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qr1;->a()Lcom/google/android/gms/internal/ads/qr1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/qr1;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
