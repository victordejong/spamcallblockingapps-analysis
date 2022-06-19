.class public final Lcom/google/android/gms/internal/ads/ak1;
.super Lcom/google/android/gms/ads/s$a;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/re1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/re1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/s$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ak1;->a:Lcom/google/android/gms/internal/ads/re1;

    return-void
.end method

.method private static f(Lcom/google/android/gms/internal/ads/re1;)Lcom/google/android/gms/internal/ads/mu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/re1;->e0()Lcom/google/android/gms/internal/ads/ju;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ju;->n()Lcom/google/android/gms/internal/ads/mu;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak1;->a:Lcom/google/android/gms/internal/ads/re1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ak1;->f(Lcom/google/android/gms/internal/ads/re1;)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/mu;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak1;->a:Lcom/google/android/gms/internal/ads/re1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ak1;->f(Lcom/google/android/gms/internal/ads/re1;)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/mu;->zzg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak1;->a:Lcom/google/android/gms/internal/ads/re1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ak1;->f(Lcom/google/android/gms/internal/ads/re1;)Lcom/google/android/gms/internal/ads/mu;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/mu;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to call onVideoEnd()"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
