.class final Lcom/google/common/collect/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/x;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    invoke-virtual {p1}, Lcom/google/common/collect/x;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 741
    invoke-virtual {p1}, Lcom/google/common/collect/x;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 743
    invoke-virtual {p1}, Lcom/google/common/collect/x;->c()Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/z;->a()Lcom/google/common/collect/ay;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 745
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/x$b;->a:Ljava/lang/Object;

    .line 749
    iput-object v1, p0, Lcom/google/common/collect/x$b;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(I)Lcom/google/common/collect/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/x$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 794
    new-instance v0, Lcom/google/common/collect/x$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/x$a;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 6

    .line 758
    iget-object v0, p0, Lcom/google/common/collect/x$b;->a:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/common/collect/z;

    if-nez v1, :cond_1

    .line 1779
    check-cast v0, [Ljava/lang/Object;

    .line 1780
    iget-object v1, p0, Lcom/google/common/collect/x$b;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 1782
    array-length v2, v0

    invoke-static {v2}, Lcom/google/common/collect/x$b;->a(I)Lcom/google/common/collect/x$a;

    move-result-object v2

    const/4 v3, 0x0

    .line 1784
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 1785
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1787
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0

    .line 762
    :cond_1
    check-cast v0, Lcom/google/common/collect/z;

    .line 763
    iget-object v1, p0, Lcom/google/common/collect/x$b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/t;

    .line 765
    invoke-virtual {v0}, Lcom/google/common/collect/z;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/x$b;->a(I)Lcom/google/common/collect/x$a;

    move-result-object v2

    .line 767
    invoke-virtual {v0}, Lcom/google/common/collect/z;->a()Lcom/google/common/collect/ay;

    move-result-object v0

    .line 768
    invoke-virtual {v1}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/ay;

    move-result-object v1

    .line 770
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ay;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 771
    invoke-virtual {v0}, Lcom/google/common/collect/ay;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/common/collect/ay;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    goto :goto_1

    .line 774
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method
