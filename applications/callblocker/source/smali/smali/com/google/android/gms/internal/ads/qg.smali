.class final Lcom/google/android/gms/internal/ads/qg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/ads/qf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/qh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qh;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/qh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qg;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/qh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qh;->a(Lcom/google/android/gms/internal/ads/qh;)Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qg;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qj;

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/qj;->a:J

    sget-object v1, Lcom/google/android/gms/internal/ads/ai;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    .line 7
    :goto_0
    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/qe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qg;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj;->b:Lcom/google/android/gms/internal/ads/qf;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/qe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/qf;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/qe;->a()Lcom/google/android/gms/internal/ads/qf;

    move-result-object v0

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/qh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qh;->a(Lcom/google/android/gms/internal/ads/qh;)Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/qg;->a:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/internal/ads/qj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/qg;->b:Lcom/google/android/gms/internal/ads/qh;

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/qj;-><init>(Lcom/google/android/gms/internal/ads/qh;Lcom/google/android/gms/internal/ads/qf;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-object v0

    .line 6
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/qe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/qg;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/qe;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qe;->a()Lcom/google/android/gms/internal/ads/qf;

    move-result-object v0

    goto :goto_1
.end method
