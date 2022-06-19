.class public final Lcom/google/android/gms/internal/ads/s1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/location/Location;

.field private final g:Landroid/os/Bundle;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/search/a;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final l:I

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/os/Bundle;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Z

.field private final q:Lcom/google/android/gms/ads/y/a;

.field private final r:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/r1;Lcom/google/android/gms/ads/search/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->t(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->a:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->u(Lcom/google/android/gms/internal/ads/r1;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->v(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->w(Lcom/google/android/gms/internal/ads/r1;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/s1;->d:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->x(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->y(Lcom/google/android/gms/internal/ads/r1;)Landroid/location/Location;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->f:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->z(Lcom/google/android/gms/internal/ads/r1;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->g:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->a(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->h:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->b(Lcom/google/android/gms/internal/ads/r1;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->c(Lcom/google/android/gms/internal/ads/r1;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->d(Lcom/google/android/gms/internal/ads/r1;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/s1;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->e(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->m:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->f(Lcom/google/android/gms/internal/ads/r1;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->n:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->g(Lcom/google/android/gms/internal/ads/r1;)Ljava/util/HashSet;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s1;->o:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->h(Lcom/google/android/gms/internal/ads/r1;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/s1;->p:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->i(Lcom/google/android/gms/internal/ads/r1;)Lcom/google/android/gms/ads/y/a;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/r1;->j(Lcom/google/android/gms/internal/ads/r1;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/s1;->r:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s1;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/s1;->d:I

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final g(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/search/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->k:Lcom/google/android/gms/ads/search/a;

    return-object v0
.end method

.method public final k(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/z1;->a()Lcom/google/android/gms/internal/ads/z1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z1;->e()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->a()Lcom/google/android/gms/internal/ads/io;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/io;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s1;->m:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s1;->l:I

    return v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->n:Landroid/os/Bundle;

    return-object v0
.end method

.method public final p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->o:Ljava/util/Set;

    return-object v0
.end method

.method public final q()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/s1;->p:Z

    return v0
.end method

.method public final r()Lcom/google/android/gms/ads/y/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s1;->q:Lcom/google/android/gms/ads/y/a;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s1;->r:I

    return v0
.end method
