.class final Lcom/google/android/gms/internal/ads/cyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/czy;->a()Lcom/google/android/gms/internal/ads/csa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csa;->a()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/czy;->a()Lcom/google/android/gms/internal/ads/csa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/csa;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/czy;->b()Lcom/google/android/gms/internal/ads/cuy;

    move-result-object v1

    const/16 v2, 0x7d1

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cuy;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
