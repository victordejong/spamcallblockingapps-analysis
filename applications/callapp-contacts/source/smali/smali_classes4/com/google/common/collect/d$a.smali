.class Lcom/google/common/collect/d$a;
.super Lcom/google/common/collect/ag$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d$a$b;,
        Lcom/google/common/collect/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ag$e<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1253
    iput-object p1, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-direct {p0}, Lcom/google/common/collect/ag$e;-><init>()V

    .line 1254
    iput-object p2, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1329
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1330
    iget-object v1, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/d;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1259
    new-instance v0, Lcom/google/common/collect/d$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$a$a;-><init>(Lcom/google/common/collect/d$a;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-static {v1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;)Ljava/util/Map;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->f()V

    return-void

    .line 1324
    :cond_0
    new-instance v0, Lcom/google/common/collect/d$a$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d$a$b;-><init>(Lcom/google/common/collect/d$a;)V

    invoke-static {v0}, Lcom/google/common/collect/ab;->d(Ljava/util/Iterator;)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1266
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/ag;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 3271
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/ag;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3277
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/d;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
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

    .line 1282
    iget-object v0, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2292
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2297
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->c()Ljava/util/Collection;

    move-result-object v0

    .line 2298
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2299
    iget-object v1, p0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;I)I

    .line 2300
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
