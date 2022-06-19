.class public final Lcom/google/android/gms/internal/ads/pc1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/id1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/id1<",
        "Lcom/google/android/gms/internal/ads/qc1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sz1;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lcom/google/android/gms/internal/ads/c61;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/sl1;

.field private final f:Lcom/google/android/gms/internal/ads/x51;

.field final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sz1;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Lcom/google/android/gms/internal/ads/c61;Landroid/content/Context;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/x51;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pc1;->a:Lcom/google/android/gms/internal/ads/sz1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pc1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pc1;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/pc1;->c:Lcom/google/android/gms/internal/ads/c61;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/pc1;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/pc1;->e:Lcom/google/android/gms/internal/ads/sl1;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/pc1;->f:Lcom/google/android/gms/internal/ads/x51;

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pc1;->f:Lcom/google/android/gms/internal/ads/x51;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/x51;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pc1;->f:Lcom/google/android/gms/internal/ads/x51;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/x51;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/gg;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/google/android/gms/internal/ads/g61;

    invoke-direct {v8, p1, v2, v0}, Lcom/google/android/gms/internal/ads/g61;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/gg;Lcom/google/android/gms/internal/ads/fp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pc1;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pc1;->g:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pc1;->e:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/sl1;->e:Lcom/google/android/gms/internal/ads/zzyx;

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/gg;->c4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/jg;)V

    return-object v0
.end method

.method final bridge synthetic b()Lcom/google/android/gms/internal/ads/rz1;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pc1;->c:Lcom/google/android/gms/internal/ads/c61;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pc1;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pc1;->e:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/c61;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pc1;->e:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzys;->n:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/mc1;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/google/android/gms/internal/ads/mc1;-><init>(Lcom/google/android/gms/internal/ads/pc1;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pc1;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/kz1;->d(Lcom/google/android/gms/internal/ads/ty1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/bz1;->E(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/bz1;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/m3;->R0:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/pc1;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/kz1;->g(Lcom/google/android/gms/internal/ads/rz1;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/bz1;

    new-instance v4, Lcom/google/android/gms/internal/ads/nc1;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/nc1;-><init>(Ljava/lang/String;)V

    const-class v3, Ljava/lang/Throwable;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/pc1;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/kz1;->e(Lcom/google/android/gms/internal/ads/rz1;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/fw1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/kz1;->n(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/jz1;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/oc1;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/oc1;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pc1;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/jz1;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/rz1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "Lcom/google/android/gms/internal/ads/qc1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/lc1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/lc1;-><init>(Lcom/google/android/gms/internal/ads/pc1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pc1;->a:Lcom/google/android/gms/internal/ads/sz1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kz1;->d(Lcom/google/android/gms/internal/ads/ty1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    return-object v0
.end method
