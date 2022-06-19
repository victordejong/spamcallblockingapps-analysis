.class Lcom/google/android/gms/internal/ads/yv2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final d:Ljava/util/Iterator;

.field final e:Ljava/util/Collection;

.field final synthetic f:Lcom/google/android/gms/internal/ads/zv2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zv2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zv2;->e:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv2;->e:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv2;->d:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zv2;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zv2;->e:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yv2;->e:Ljava/util/Collection;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yv2;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zv2;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zv2;->e:Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yv2;->e:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 2
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yv2;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->d:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/yv2;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->d:Ljava/util/Iterator;

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zv2;->h:Lcom/google/android/gms/internal/ads/zzfnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lcom/google/android/gms/internal/ads/zzfnd;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lcom/google/android/gms/internal/ads/zzfnd;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yv2;->f:Lcom/google/android/gms/internal/ads/zv2;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zv2;->b()V

    return-void
.end method
