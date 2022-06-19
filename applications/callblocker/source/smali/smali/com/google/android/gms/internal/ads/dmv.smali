.class public final Lcom/google/android/gms/internal/ads/dmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/b;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/dlx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dlx;-><init>(Lcom/google/android/gms/internal/ads/dmv;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmv;->a:Ljava/util/concurrent/Executor;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dmv;->a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V

    .line 5
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dts;->l()V

    .line 7
    const-string/jumbo v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmv;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/dow;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dow;-><init>(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/zzae;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dts",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/zzae;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    const-string/jumbo v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/dts;->b(Ljava/lang/String;)V

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ecj;->a(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/ecj;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmv;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/dow;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/google/android/gms/internal/ads/dow;-><init>(Lcom/google/android/gms/internal/ads/dts;Lcom/google/android/gms/internal/ads/ecj;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method
