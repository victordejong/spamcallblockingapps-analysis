.class final Lcom/google/android/gms/internal/ads/s50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zi0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zi0<",
        "Lcom/google/android/gms/internal/ads/x40;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/c60;

.field final synthetic b:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s50;->a:Lcom/google/android/gms/internal/ads/c60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/x40;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/d60;->d(Lcom/google/android/gms/internal/ads/d60;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->c(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/c60;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s50;->a:Lcom/google/android/gms/internal/ads/c60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/d60;->c(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/c60;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->c(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/c60;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/c60;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s50;->b:Lcom/google/android/gms/internal/ads/d60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s50;->a:Lcom/google/android/gms/internal/ads/c60;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/d60;->b(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/c60;)Lcom/google/android/gms/internal/ads/c60;

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
