.class final Lcom/google/android/gms/internal/ads/pj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/oj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/internal/ads/rj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rj;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pj;->b:Lcom/google/android/gms/internal/ads/rj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pj;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj;->b:Lcom/google/android/gms/internal/ads/rj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rj;->b(Lcom/google/android/gms/internal/ads/rj;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qj;

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/qj;->a:J

    sget-object v3, Lcom/google/android/gms/internal/ads/s4;->a:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/p4;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->k()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/nj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pj;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj;->b:Lcom/google/android/gms/internal/ads/oj;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/nj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/oj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nj;->a()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/nj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pj;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/nj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nj;->a()Lcom/google/android/gms/internal/ads/oj;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pj;->b:Lcom/google/android/gms/internal/ads/rj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rj;->b(Lcom/google/android/gms/internal/ads/rj;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pj;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/qj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pj;->b:Lcom/google/android/gms/internal/ads/rj;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/qj;-><init>(Lcom/google/android/gms/internal/ads/rj;Lcom/google/android/gms/internal/ads/oj;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
