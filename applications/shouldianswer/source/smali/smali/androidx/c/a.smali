.class public Landroidx/c/a;
.super Landroidx/c/g;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/c/g<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field a:Landroidx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/c/g;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroidx/c/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/c/g;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroidx/c/g;-><init>(Landroidx/c/g;)V

    return-void
.end method

.method private b()Landroidx/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/c/a;->a:Landroidx/c/f;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroidx/c/a$1;

    invoke-direct {v0, p0}, Landroidx/c/a$1;-><init>(Landroidx/c/a;)V

    iput-object v0, p0, Landroidx/c/a;->a:Landroidx/c/f;

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/c/a;->a:Landroidx/c/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 164
    invoke-static {p0, p1}, Landroidx/c/f;->c(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Landroidx/c/a;->b()Landroidx/c/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/c/f;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Landroidx/c/a;->b()Landroidx/c/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/c/f;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 142
    iget v0, p0, Landroidx/c/a;->h:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/c/a;->a(I)V

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Landroidx/c/a;->b()Landroidx/c/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/c/f;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
