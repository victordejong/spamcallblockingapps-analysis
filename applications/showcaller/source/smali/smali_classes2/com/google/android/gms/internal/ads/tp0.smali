.class public final Lcom/google/android/gms/internal/ads/tp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzcgz;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/tp0;)Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/tp0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tp0;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/tp0;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tp0;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/tp0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tp0;->a:Lcom/google/android/gms/internal/ads/zzcgz;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/tp0;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tp0;->c:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tp0;->b:Landroid/content/Context;

    return-object p0
.end method
