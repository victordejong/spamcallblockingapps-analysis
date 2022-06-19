.class public abstract Lcom/google/android/gms/internal/ads/wj3;
.super Lcom/google/android/gms/internal/ads/dg3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dg3;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/android/gms/internal/ads/vj3<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Lcom/google/android/gms/internal/ads/ol;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dg3;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/vj3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vj3;->b:Lcom/google/android/gms/internal/ads/nk3;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ok3;->k(Lcom/google/android/gms/internal/ads/nk3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected m(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj3;->i:Lcom/google/android/gms/internal/ads/ol;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->M(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wj3;->h:Landroid/os/Handler;

    return-void
.end method

.method protected final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/vj3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vj3;->b:Lcom/google/android/gms/internal/ads/nk3;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ok3;->h(Lcom/google/android/gms/internal/ads/nk3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/vj3;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vj3;->b:Lcom/google/android/gms/internal/ads/nk3;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ok3;->d(Lcom/google/android/gms/internal/ads/nk3;)V

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/vj3;->c:Lcom/google/android/gms/internal/ads/uj3;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/ok3;->f(Lcom/google/android/gms/internal/ads/wk3;)V

    .line 4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vj3;->c:Lcom/google/android/gms/internal/ads/uj3;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/ok3;->g(Lcom/google/android/gms/internal/ads/fk2;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected abstract x(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/p7;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/ok3;",
            "Lcom/google/android/gms/internal/ads/p7;",
            ")V"
        }
    .end annotation
.end method

.method protected final y(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/ok3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/ok3;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->a(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tj3;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/tj3;-><init>(Lcom/google/android/gms/internal/ads/wj3;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/uj3;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/uj3;-><init>(Lcom/google/android/gms/internal/ads/wj3;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/gms/internal/ads/vj3;

    .line 4
    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/gms/internal/ads/vj3;-><init>(Lcom/google/android/gms/internal/ads/ok3;Lcom/google/android/gms/internal/ads/nk3;Lcom/google/android/gms/internal/ads/uj3;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wj3;->h:Landroid/os/Handler;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p2, p1, v1}, Lcom/google/android/gms/internal/ads/ok3;->b(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/wk3;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wj3;->h:Landroid/os/Handler;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p2, p1, v1}, Lcom/google/android/gms/internal/ads/ok3;->i(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/fk2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wj3;->i:Lcom/google/android/gms/internal/ads/ol;

    .line 9
    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/ok3;->a(Lcom/google/android/gms/internal/ads/nk3;Lcom/google/android/gms/internal/ads/ol;)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dg3;->w()Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/ok3;->h(Lcom/google/android/gms/internal/ads/nk3;)V

    :cond_0
    return-void
.end method

.method protected abstract z(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/mk3;)Lcom/google/android/gms/internal/ads/mk3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/mk3;",
            ")",
            "Lcom/google/android/gms/internal/ads/mk3;"
        }
    .end annotation
.end method

.method public zzu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wj3;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/vj3;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/vj3;->a:Lcom/google/android/gms/internal/ads/ok3;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ok3;->zzu()V

    goto :goto_0

    :cond_0
    return-void
.end method
