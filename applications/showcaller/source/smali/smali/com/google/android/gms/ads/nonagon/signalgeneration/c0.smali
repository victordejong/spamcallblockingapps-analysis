.class final Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bc0;

.field final synthetic b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Lcom/google/android/gms/internal/ads/bc0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->a:Lcom/google/android/gms/internal/ads/bc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->a:Lcom/google/android/gms/internal/ads/bc0;

    const-string v1, "Internal error: "

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bc0;->p(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->a7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->a:Lcom/google/android/gms/internal/ads/bc0;

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/bc0;->C5(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->V6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->e7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 4
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->g7(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/c0;->b:Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;->T6(Lcom/google/android/gms/ads/nonagon/signalgeneration/e0;)Lcom/google/android/gms/internal/ads/bp2;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bp2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
