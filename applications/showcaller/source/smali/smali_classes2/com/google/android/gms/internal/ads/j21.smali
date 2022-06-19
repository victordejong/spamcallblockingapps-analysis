.class public final Lcom/google/android/gms/internal/ads/j21;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/xj2;

.field private final c:Landroid/os/Bundle;

.field private final d:Lcom/google/android/gms/internal/ads/sj2;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/h21;Lcom/google/android/gms/internal/ads/i21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/h21;->a(Lcom/google/android/gms/internal/ads/h21;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j21;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/h21;->b(Lcom/google/android/gms/internal/ads/h21;)Lcom/google/android/gms/internal/ads/xj2;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j21;->b:Lcom/google/android/gms/internal/ads/xj2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/h21;->c(Lcom/google/android/gms/internal/ads/h21;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j21;->c:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/h21;->d(Lcom/google/android/gms/internal/ads/h21;)Lcom/google/android/gms/internal/ads/sj2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j21;->d:Lcom/google/android/gms/internal/ads/sj2;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/h21;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j21;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j21;->b:Lcom/google/android/gms/internal/ads/xj2;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j21;->c:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/h21;->g(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/h21;

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/xj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j21;->b:Lcom/google/android/gms/internal/ads/xj2;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/sj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j21;->d:Lcom/google/android/gms/internal/ads/sj2;

    return-object v0
.end method

.method final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j21;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method final e(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/j21;->a:Landroid/content/Context;

    return-object p1
.end method
