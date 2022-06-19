.class public Lcom/google/common/collect/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1063
    invoke-static {}, Lcom/google/common/collect/k;->a()Lcom/google/common/collect/k;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/google/common/collect/y$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/y$a<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 202
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null key in entry: null="

    .line 1279
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ab;->a(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/y$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 206
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    invoke-static {p1, v1}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0

    .line 212
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 213
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    .line 2154
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 218
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 219
    invoke-static {p1, v1}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    :cond_5
    iget-object p2, p0, Lcom/google/common/collect/y$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/y$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 234
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y$a;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/y$a;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/common/collect/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/y<",
            "TK;TV;>;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/y$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/google/common/collect/y$a;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 288
    invoke-static {v1}, Lcom/google/common/collect/an;->a(Ljava/util/Comparator;)Lcom/google/common/collect/an;

    move-result-object v1

    .line 3103
    sget-object v2, Lcom/google/common/collect/ag$a;->KEY:Lcom/google/common/collect/ag$a;

    .line 2453
    invoke-virtual {v1, v2}, Lcom/google/common/collect/an;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/an;

    move-result-object v1

    .line 3863
    invoke-static {v1, v0}, Lcom/google/common/collect/v;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v;

    move-result-object v0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/y$a;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/w;->a(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method
