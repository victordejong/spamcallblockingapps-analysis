.class final Lcom/google/android/gms/internal/ads/asa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/arz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/arz;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/asa;->a:Ljava/lang/ref/WeakReference;

    .line 3
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/arz;Lcom/google/android/gms/internal/ads/asb;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/asa;-><init>(Lcom/google/android/gms/internal/ads/arz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/asa;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/arz;

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/arz;->a(Lcom/google/android/gms/internal/ads/arz;)V

    .line 7
    :cond_0
    return-void
.end method
