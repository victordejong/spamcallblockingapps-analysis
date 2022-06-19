.class final Lcom/google/android/gms/internal/ads/aix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ais;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ais;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aix;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aix;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/ais;->a(Lcom/google/android/gms/internal/ads/ais;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aix;->a:Lcom/google/android/gms/internal/ads/ais;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ais;->a(Lcom/google/android/gms/internal/ads/ais;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/aiw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/aiw;-><init>(Lcom/google/android/gms/internal/ads/aix;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
