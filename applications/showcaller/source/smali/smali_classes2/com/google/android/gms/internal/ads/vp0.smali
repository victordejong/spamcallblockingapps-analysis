.class public final Lcom/google/android/gms/internal/ads/vp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/tp0;Lcom/google/android/gms/internal/ads/up0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tp0;->a(Lcom/google/android/gms/internal/ads/tp0;)Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tp0;->b(Lcom/google/android/gms/internal/ads/tp0;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vp0;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tp0;->c(Lcom/google/android/gms/internal/ads/tp0;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vp0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp0;->b:Landroid/content/Context;

    return-object v0
.end method

.method final b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp0;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object v0
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vp0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/c2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/u;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/u;

    new-instance v1, Lcom/google/android/gms/ads/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vp0;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/u;-><init>(Lcom/google/android/gms/internal/ads/q;)V

    return-object v0
.end method
