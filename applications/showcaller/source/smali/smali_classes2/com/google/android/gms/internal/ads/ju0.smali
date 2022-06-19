.class public final Lcom/google/android/gms/internal/ads/ju0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/t31;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ok2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ok2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ju0;->d:Lcom/google/android/gms/internal/ads/ok2;

    return-void
.end method


# virtual methods
.method public final U(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ju0;->d:Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ok2;->l()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju0;->d:Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ok2;->m()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ju0;->d:Lcom/google/android/gms/internal/ads/ok2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ok2;->s(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ju0;->d:Lcom/google/android/gms/internal/ads/ok2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ok2;->i()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfaw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
