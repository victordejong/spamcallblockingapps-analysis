.class final Lcom/google/android/gms/internal/ads/kc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jp<",
        "Lcom/google/android/gms/internal/ads/pb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/uc;

.field final synthetic b:Lcom/google/android/gms/internal/ads/vc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/pb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vc;->f(Lcom/google/android/gms/internal/ads/vc;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vc;->g(Lcom/google/android/gms/internal/ads/vc;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->h(Lcom/google/android/gms/internal/ads/vc;)Lcom/google/android/gms/internal/ads/uc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->a:Lcom/google/android/gms/internal/ads/uc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vc;->h(Lcom/google/android/gms/internal/ads/vc;)Lcom/google/android/gms/internal/ads/uc;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vc;->h(Lcom/google/android/gms/internal/ads/vc;)Lcom/google/android/gms/internal/ads/uc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uc;->h()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kc;->b:Lcom/google/android/gms/internal/ads/vc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kc;->a:Lcom/google/android/gms/internal/ads/uc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vc;->i(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;)Lcom/google/android/gms/internal/ads/uc;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
