.class public final Lcom/google/android/gms/internal/ads/aio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aql;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/chs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chs;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aio;->a:Lcom/google/android/gms/internal/ads/chs;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aio;->a:Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->d()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string/jumbo v1, "Cannot invoke onPause for the mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aio;->a:Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->e()V

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aio;->a:Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string/jumbo v1, "Cannot invoke onResume for the mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aio;->a:Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->c()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string/jumbo v1, "Cannot invoke onDestroy for the mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
