.class public final Lcom/google/android/gms/internal/ads/lq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/t;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/ads/bl;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Z

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/internal/ads/bl;Ljava/util/List;ZILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/internal/ads/bl;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lq;->a:Ljava/util/Date;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/lq;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lq;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lq;->e:Landroid/location/Location;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/lq;->d:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/lq;->f:I

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    .line 9
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/lq;->i:Z

    .line 10
    move/from16 v0, p10

    iput v0, p0, Lcom/google/android/gms/internal/ads/lq;->k:I

    .line 11
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->l:Ljava/lang/String;

    .line 12
    const-string/jumbo v2, "custom:"

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->j:Ljava/util/Map;

    .line 15
    if-eqz p8, :cond_3

    .line 16
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    const-string/jumbo v4, ":"

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 19
    array-length v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 20
    const-string/jumbo v4, "true"

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lq;->j:Ljava/util/Map;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v4, "false"

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lq;->j:Ljava/util/Map;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/lq;->b:I

    return v0
.end method

.method public final c()Ljava/util/Set;
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
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/ads/lq;->f:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lq;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lq;->i:Z

    return v0
.end method

.method public final h()Lcom/google/android/gms/ads/b/d;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/b/d$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/b/d$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->b:Z

    .line 37
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/d$a;->a(Z)Lcom/google/android/gms/ads/b/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/bl;->c:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/d$a;->a(I)Lcom/google/android/gms/ads/b/d$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/bl;->d:Z

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/d$a;->b(Z)Lcom/google/android/gms/ads/b/d$a;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/bl;->a:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/bl;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/d$a;->b(I)Lcom/google/android/gms/ads/b/d$a;

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget v1, v1, Lcom/google/android/gms/internal/ads/bl;->a:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bl;->f:Lcom/google/android/gms/internal/ads/ecn;

    if-eqz v1, :cond_2

    .line 43
    new-instance v1, Lcom/google/android/gms/ads/q;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lq;->g:Lcom/google/android/gms/internal/ads/bl;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bl;->f:Lcom/google/android/gms/internal/ads/ecn;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/q;-><init>(Lcom/google/android/gms/internal/ads/ecn;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/d$a;->a(Lcom/google/android/gms/ads/q;)Lcom/google/android/gms/ads/b/d$a;

    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/d$a;->a()Lcom/google/android/gms/ads/b/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "2"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "6"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_1
    const/4 v0, 0x0

    .line 53
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "1"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "6"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->h:Ljava/util/List;

    const-string/jumbo v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->j:Ljava/util/Map;

    return-object v0
.end method
