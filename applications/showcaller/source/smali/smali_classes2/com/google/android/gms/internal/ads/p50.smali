.class final Lcom/google/android/gms/internal/ads/p50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/e60;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x40;

.field final synthetic b:Lcom/google/android/gms/ads/internal/util/e1;

.field final synthetic c:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;Lcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/x40;Lcom/google/android/gms/ads/internal/util/e1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->c:Lcom/google/android/gms/internal/ads/d60;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/p50;->a:Lcom/google/android/gms/internal/ads/x40;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/p50;->b:Lcom/google/android/gms/ads/internal/util/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/p50;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p50;->c:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/d60;->e(Lcom/google/android/gms/internal/ads/d60;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p50;->c:Lcom/google/android/gms/internal/ads/d60;

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/d60;->d(Lcom/google/android/gms/internal/ads/d60;I)I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p50;->c:Lcom/google/android/gms/internal/ads/d60;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/d60;->f(Lcom/google/android/gms/internal/ads/u;)Lcom/google/android/gms/internal/ads/c60;

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/p50;->a:Lcom/google/android/gms/internal/ads/x40;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/p50;->b:Lcom/google/android/gms/ads/internal/util/e1;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/e1;->a()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/e60;->U(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
