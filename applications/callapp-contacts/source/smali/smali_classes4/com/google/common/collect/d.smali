.class abstract Lcom/google/common/collect/d;
.super Lcom/google/common/collect/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d$d;,
        Lcom/google/common/collect/d$g;,
        Lcom/google/common/collect/d$a;,
        Lcom/google/common/collect/d$b;,
        Lcom/google/common/collect/d$e;,
        Lcom/google/common/collect/d$h;,
        Lcom/google/common/collect/d$c;,
        Lcom/google/common/collect/d$f;,
        Lcom/google/common/collect/d$j;,
        Lcom/google/common/collect/d$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/common/collect/f;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 116
    iput-object p1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/d;I)I
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/common/collect/d;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/d;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/common/collect/d;)Ljava/util/Map;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/google/common/collect/d;Ljava/lang/Object;)V
    .locals 1

    .line 4102
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/ag;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 4105
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4106
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 4107
    iget p1, p0, Lcom/google/common/collect/d;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/d;->b:I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/d;)I
    .locals 2

    .line 84
    iget v0, p0, Lcom/google/common/collect/d;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/d;->b:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/d;I)I
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/common/collect/d;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/d;->b:I

    return v0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .line 3573
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3574
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0

    .line 3575
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/d;)I
    .locals 2

    .line 84
    iget v0, p0, Lcom/google/common/collect/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/d;->b:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3159
    invoke-virtual {p0}, Lcom/google/common/collect/d;->c()Ljava/util/Collection;

    move-result-object v0

    .line 288
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/d;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 296
    new-instance v0, Lcom/google/common/collect/d$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/d$i;-><init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/d$i;)V

    return-object v0
.end method

.method a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 262
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/d$i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/d<",
            "TK;TV;>.i;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 301
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/google/common/collect/d$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/d$f;-><init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/d$i;)V

    return-object v0

    .line 303
    :cond_0
    new-instance v0, Lcom/google/common/collect/d$j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/d$j;-><init>(Lcom/google/common/collect/d;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/d$i;)V

    return-object v0
.end method

.method final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/google/common/collect/d;->b:I

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 124
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/m;->a(Z)V

    .line 125
    iget v1, p0, Lcom/google/common/collect/d;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/d;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2159
    invoke-virtual {p0}, Lcom/google/common/collect/d;->c()Ljava/util/Collection;

    move-result-object v0

    .line 185
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 186
    iget p2, p0, Lcom/google/common/collect/d;->b:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/common/collect/d;->b:I

    .line 187
    iget-object p2, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "New Collection violated the Collection spec"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 192
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    iget p1, p0, Lcom/google/common/collect/d;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/d;->b:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/google/common/collect/d;->b:I

    return v0
.end method

.method public final f()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 269
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/google/common/collect/d;->b:I

    return-void
.end method

.method g()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 891
    new-instance v0, Lcom/google/common/collect/d$c;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$c;-><init>(Lcom/google/common/collect/d;Ljava/util/Map;)V

    return-object v0
.end method

.method final h()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 896
    new-instance v0, Lcom/google/common/collect/d$e;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$e;-><init>(Lcom/google/common/collect/d;Ljava/util/NavigableMap;)V

    return-object v0

    .line 897
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 898
    new-instance v0, Lcom/google/common/collect/d$h;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$h;-><init>(Lcom/google/common/collect/d;Ljava/util/SortedMap;)V

    return-object v0

    .line 900
    :cond_1
    new-instance v0, Lcom/google/common/collect/d$c;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$c;-><init>(Lcom/google/common/collect/d;Ljava/util/Map;)V

    return-object v0
.end method

.method public final i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1160
    invoke-super {p0}, Lcom/google/common/collect/f;->i()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1165
    new-instance v0, Lcom/google/common/collect/f$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f$c;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method

.method final k()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1170
    new-instance v0, Lcom/google/common/collect/d$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$1;-><init>(Lcom/google/common/collect/d;)V

    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1200
    invoke-super {p0}, Lcom/google/common/collect/f;->l()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final m()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1205
    instance-of v0, p0, Lcom/google/common/collect/au;

    if-eqz v0, :cond_0

    .line 1206
    new-instance v0, Lcom/google/common/collect/f$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f$b;-><init>(Lcom/google/common/collect/f;)V

    return-object v0

    .line 1208
    :cond_0
    new-instance v0, Lcom/google/common/collect/f$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f$a;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method

.method final n()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1222
    new-instance v0, Lcom/google/common/collect/d$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$2;-><init>(Lcom/google/common/collect/d;)V

    return-object v0
.end method

.method o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1232
    new-instance v0, Lcom/google/common/collect/d$a;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$a;-><init>(Lcom/google/common/collect/d;Ljava/util/Map;)V

    return-object v0
.end method

.method final p()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    .line 1237
    new-instance v0, Lcom/google/common/collect/d$d;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$d;-><init>(Lcom/google/common/collect/d;Ljava/util/NavigableMap;)V

    return-object v0

    .line 1238
    :cond_0
    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    .line 1239
    new-instance v0, Lcom/google/common/collect/d$g;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$g;-><init>(Lcom/google/common/collect/d;Ljava/util/SortedMap;)V

    return-object v0

    .line 1241
    :cond_1
    new-instance v0, Lcom/google/common/collect/d$a;

    iget-object v1, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/d$a;-><init>(Lcom/google/common/collect/d;Ljava/util/Map;)V

    return-object v0
.end method
