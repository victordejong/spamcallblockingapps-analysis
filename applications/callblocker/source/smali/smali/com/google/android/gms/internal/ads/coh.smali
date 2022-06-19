.class final Lcom/google/android/gms/internal/ads/coh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/clf;->a()Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cfb;->a()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/clf;->a()Lcom/google/android/gms/internal/ads/cfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cfb;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/clf;->b()Lcom/google/android/gms/internal/ads/clq;

    move-result-object v1

    const/16 v2, 0x7d1

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_0
.end method
