.class final Lcom/google/common/collect/d$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/d$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d$a;)V
    .locals 0

    .line 1364
    iput-object p1, p0, Lcom/google/common/collect/d$a$b;->c:Lcom/google/common/collect/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iget-object p1, p1, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d$a$b;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 2375
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2376
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/common/collect/d$a$b;->b:Ljava/util/Collection;

    .line 2377
    iget-object v1, p0, Lcom/google/common/collect/d$a$b;->c:Lcom/google/common/collect/d$a;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/d$a;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 1382
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->b:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no calls to next() since the last call to remove()"

    .line 2063
    invoke-static {v0, v1}, Lcom/google/common/base/m;->b(ZLjava/lang/Object;)V

    .line 1383
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1384
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->c:Lcom/google/common/collect/d$a;

    iget-object v0, v0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    iget-object v1, p0, Lcom/google/common/collect/d$a$b;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/d;->b(Lcom/google/common/collect/d;I)I

    .line 1385
    iget-object v0, p0, Lcom/google/common/collect/d$a$b;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 1386
    iput-object v0, p0, Lcom/google/common/collect/d$a$b;->b:Ljava/util/Collection;

    return-void
.end method
