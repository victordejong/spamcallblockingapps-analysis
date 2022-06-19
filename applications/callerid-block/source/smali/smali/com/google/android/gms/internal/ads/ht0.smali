.class final synthetic Lcom/google/android/gms/internal/ads/ht0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/fp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lt0;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ht0;->b:Lcom/google/android/gms/internal/ads/fp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ht0;->b:Lcom/google/android/gms/internal/ads/fp;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zn;->l()Lcom/google/android/gms/ads/internal/util/a1;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/a1;->p()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/vn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
