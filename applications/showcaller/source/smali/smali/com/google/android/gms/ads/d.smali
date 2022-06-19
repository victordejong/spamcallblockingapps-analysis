.class public Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xq;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/ms;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ms;Lcom/google/android/gms/internal/ads/xq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/internal/ads/ms;

    iput-object p3, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/xq;

    return-void
.end method

.method private final c(Lcom/google/android/gms/internal/ads/pu;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/internal/ads/ms;

    iget-object v1, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/xq;

    iget-object v2, p0, Lcom/google/android/gms/ads/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ms;->R4(Lcom/google/android/gms/internal/ads/zzbdg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/internal/ads/ms;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ms;->zzg()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/android/gms/ads/e;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/e;->a()Lcom/google/android/gms/internal/ads/pu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/d;->c(Lcom/google/android/gms/internal/ads/pu;)V

    return-void
.end method
