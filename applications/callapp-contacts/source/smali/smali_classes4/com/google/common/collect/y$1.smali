.class final Lcom/google/common/collect/y$1;
.super Lcom/google/common/collect/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/y;->c()Lcom/google/common/collect/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ay<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;+",
            "Lcom/google/common/collect/t<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/collect/y;


# direct methods
.method constructor <init>(Lcom/google/common/collect/y;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/google/common/collect/y$1;->d:Lcom/google/common/collect/y;

    invoke-direct {p0}, Lcom/google/common/collect/ay;-><init>()V

    .line 562
    iget-object p1, p1, Lcom/google/common/collect/y;->b:Lcom/google/common/collect/x;

    .line 563
    invoke-virtual {p1}, Lcom/google/common/collect/x;->c()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/z;->a()Lcom/google/common/collect/ay;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/y$1;->a:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 564
    iput-object p1, p0, Lcom/google/common/collect/y$1;->b:Ljava/lang/Object;

    .line 1088
    sget-object p1, Lcom/google/common/collect/ab$a;->a:Lcom/google/common/collect/az;

    .line 565
    iput-object p1, p0, Lcom/google/common/collect/y$1;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/common/collect/y$1;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/y$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/google/common/collect/y$1;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/google/common/collect/y$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/y$1;->b:Ljava/lang/Object;

    .line 1577
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t;

    invoke-virtual {v0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/y$1;->c:Ljava/util/Iterator;

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/y$1;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/y$1;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
