.class public final Lcom/google/android/gms/ads/b/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/ads/b/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/cg;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28
    :goto_0
    if-nez v0, :cond_2

    .line 29
    const-string/jumbo v0, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;)V

    .line 38
    :cond_0
    :goto_1
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_2
    sget-object v1, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    sget-object v1, Lcom/google/android/gms/ads/b/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->b:Lcom/google/android/gms/internal/ads/cg;

    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->b:Lcom/google/android/gms/internal/ads/cg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/cg;->a(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string/jumbo v1, "Unable to call setNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/b/c;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/f;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 24
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/b/k;)V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/b/f;->a(Lcom/google/android/gms/dynamic/a;)V

    .line 26
    return-void
.end method
