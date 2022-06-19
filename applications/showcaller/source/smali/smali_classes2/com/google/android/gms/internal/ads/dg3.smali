.class public abstract Lcom/google/android/gms/internal/ads/dg3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ok3;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/nk3;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/nk3;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/vk3;

.field private final d:Lcom/google/android/gms/internal/ads/gj2;

.field private e:Landroid/os/Looper;

.field private f:Lcom/google/android/gms/internal/ads/p7;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/vk3;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vk3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->c:Lcom/google/android/gms/internal/ads/vk3;

    new-instance v0, Lcom/google/android/gms/internal/ads/gj2;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/gj2;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->d:Lcom/google/android/gms/internal/ads/gj2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/nk3;Lcom/google/android/gms/internal/ads/ol;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dg3;->e:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dg3;->f:Lcom/google/android/gms/internal/ads/p7;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dg3;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dg3;->e:Landroid/os/Looper;

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->e:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/dg3;->m(Lcom/google/android/gms/internal/ads/ol;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dg3;->k(Lcom/google/android/gms/internal/ads/nk3;)V

    .line 7
    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/ads/nk3;->a(Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V

    :cond_3
    return-void
.end method

.method public final b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->c:Lcom/google/android/gms/internal/ads/vk3;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vk3;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/nk3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dg3;->e:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dg3;->f:Lcom/google/android/gms/internal/ads/p7;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dg3;->p()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dg3;->h(Lcom/google/android/gms/internal/ads/nk3;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/wk3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->c:Lcom/google/android/gms/internal/ads/vk3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vk3;->c(Lcom/google/android/gms/internal/ads/wk3;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/fk2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->d:Lcom/google/android/gms/internal/ads/gj2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gj2;->c(Lcom/google/android/gms/internal/ads/fk2;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/ads/nk3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dg3;->n()V

    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fk2;)V
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->d:Lcom/google/android/gms/internal/ads/gj2;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gj2;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fk2;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/nk3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->e:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dg3;->l()V

    :cond_0
    return-void
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method protected abstract m(Lcom/google/android/gms/internal/ads/ol;)V
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public final o()Lcom/google/android/gms/internal/ads/p7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract p()V
.end method

.method protected final r(Lcom/google/android/gms/internal/ads/p7;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dg3;->f:Lcom/google/android/gms/internal/ads/p7;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/nk3;

    .line 2
    invoke-interface {v3, p0, p1}, Lcom/google/android/gms/internal/ads/nk3;->a(Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final s(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/vk3;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->c:Lcom/google/android/gms/internal/ads/vk3;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/vk3;->a(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object p1

    return-object p1
.end method

.method protected final t(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dg3;->c:Lcom/google/android/gms/internal/ads/vk3;

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/vk3;->a(ILcom/google/android/gms/internal/ads/mk3;J)Lcom/google/android/gms/internal/ads/vk3;

    move-result-object p1

    return-object p1
.end method

.method protected final u(Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->d:Lcom/google/android/gms/internal/ads/gj2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/gj2;->a(ILcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    return-object p1
.end method

.method protected final v(ILcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->d:Lcom/google/android/gms/internal/ads/gj2;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/gj2;->a(ILcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/gj2;

    move-result-object p1

    return-object p1
.end method

.method protected final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dg3;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
