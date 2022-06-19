.class public final Lcom/google/android/gms/internal/ads/gh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/ads/v/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xh0;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/fh0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fh0;-><init>(Lcom/google/android/gms/internal/ads/gh0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/vi0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method
