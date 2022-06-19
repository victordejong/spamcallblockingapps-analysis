.class final Lcom/google/common/collect/d$a$a;
.super Lcom/google/common/collect/ag$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ag$b<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d$a;)V
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/google/common/collect/d$a$a;->a:Lcom/google/common/collect/d$a;

    invoke-direct {p0}, Lcom/google/common/collect/ag$b;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
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

    .line 1337
    iget-object v0, p0, Lcom/google/common/collect/d$a$a;->a:Lcom/google/common/collect/d$a;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/google/common/collect/d$a$a;->a:Lcom/google/common/collect/d$a;

    iget-object v0, v0, Lcom/google/common/collect/d$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/j;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1342
    new-instance v0, Lcom/google/common/collect/d$a$b;

    iget-object v1, p0, Lcom/google/common/collect/d$a$a;->a:Lcom/google/common/collect/d$a;

    invoke-direct {v0, v1}, Lcom/google/common/collect/d$a$b;-><init>(Lcom/google/common/collect/d$a;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1354
    invoke-virtual {p0, p1}, Lcom/google/common/collect/d$a$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1357
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1358
    iget-object v0, p0, Lcom/google/common/collect/d$a$a;->a:Lcom/google/common/collect/d$a;

    iget-object v0, v0, Lcom/google/common/collect/d$a;->b:Lcom/google/common/collect/d;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/d;->a(Lcom/google/common/collect/d;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
