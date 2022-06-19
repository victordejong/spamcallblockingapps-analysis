.class public final Lcom/google/android/gms/internal/ads/bdn;
.super Lcom/google/android/gms/ads/p$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ayx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ayx;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/p$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/ayx;

    .line 3
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/ayx;)Lcom/google/android/gms/internal/ads/ebb;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 33
    :goto_0
    return-object v0

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eba;->h()Lcom/google/android/gms/internal/ads/ebb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bdn;->a(Lcom/google/android/gms/internal/ads/ayx;)Lcom/google/android/gms/internal/ads/ebb;

    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 11
    :goto_0
    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string/jumbo v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bdn;->a(Lcom/google/android/gms/internal/ads/ayx;)Lcom/google/android/gms/internal/ads/ebb;

    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 19
    :goto_0
    return-void

    .line 15
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string/jumbo v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/ayx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bdn;->a(Lcom/google/android/gms/internal/ads/ayx;)Lcom/google/android/gms/internal/ads/ebb;

    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ebb;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string/jumbo v1, "Unable to call onVideoEnd()"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
