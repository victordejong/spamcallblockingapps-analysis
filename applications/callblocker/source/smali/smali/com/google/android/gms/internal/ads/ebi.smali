.class public final Lcom/google/android/gms/internal/ads/ebi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/location/Location;

.field private final g:Z

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/android/gms/ads/g/a;

.field private final m:I

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/os/Bundle;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Z

.field private final r:Lcom/google/android/gms/ads/f/a;

.field private final s:I

.field private final t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ebh;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ebi;-><init>(Lcom/google/android/gms/internal/ads/ebh;Lcom/google/android/gms/ads/g/a;)V

    .line 2
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/ebh;Lcom/google/android/gms/ads/g/a;)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->a(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->a:Ljava/util/Date;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->b(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->c(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->c:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->d(Lcom/google/android/gms/internal/ads/ebh;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebi;->d:I

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->e(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->e:Ljava/util/Set;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->f(Lcom/google/android/gms/internal/ads/ebh;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->f:Landroid/location/Location;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->g(Lcom/google/android/gms/internal/ads/ebh;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebi;->g:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->h(Lcom/google/android/gms/internal/ads/ebh;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->h:Landroid/os/Bundle;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->i(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->i:Ljava/util/Map;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->j(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->j:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->k(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->k:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebi;->l:Lcom/google/android/gms/ads/g/a;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->l(Lcom/google/android/gms/internal/ads/ebh;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebi;->m:I

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->m(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->n:Ljava/util/Set;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->n(Lcom/google/android/gms/internal/ads/ebh;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->o:Landroid/os/Bundle;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->o(Lcom/google/android/gms/internal/ads/ebh;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->p:Ljava/util/Set;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->p(Lcom/google/android/gms/internal/ads/ebh;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebi;->q:Z

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->q(Lcom/google/android/gms/internal/ads/ebh;)Lcom/google/android/gms/ads/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->r:Lcom/google/android/gms/ads/f/a;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->r(Lcom/google/android/gms/internal/ads/ebh;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebi;->s:I

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ebh;->s(Lcom/google/android/gms/internal/ads/ebh;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->t:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/ebl;->a()Lcom/google/android/gms/internal/ads/ebl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ebl;->c()Lcom/google/android/gms/ads/n;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebi;->n:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/ads/n;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebi;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebi;->d:I

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final f()Landroid/location/Location;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->f:Landroid/location/Location;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebi;->g:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/ads/g/a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->l:Lcom/google/android/gms/ads/g/a;

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final l()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebi;->m:I

    return v0
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method public final o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->p:Ljava/util/Set;

    return-object v0
.end method

.method public final p()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ebi;->q:Z

    return v0
.end method

.method public final q()Lcom/google/android/gms/ads/f/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->r:Lcom/google/android/gms/ads/f/a;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebi;->s:I

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebi;->t:Ljava/lang/String;

    return-object v0
.end method
