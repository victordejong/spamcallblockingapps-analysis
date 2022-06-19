.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$d;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/f;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1769
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 1870
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    .line 1995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    return-void
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1857
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1863
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1859
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1860
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;
    .locals 1

    .line 6776
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;
    .locals 2

    .line 2776
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;-><init>()V

    .line 1789
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
    .locals 3

    .line 1805
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V

    .line 1807
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 1808
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    .line 1809
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    .line 1811
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;Ljava/util/List;)Ljava/util/List;

    .line 1812
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1813
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    .line 1814
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    .line 1816
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 1873
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1874
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    .line 1875
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1997
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    .line 1999
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;
    .locals 2

    .line 1821
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1822
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1823
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    .line 1825
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    goto :goto_0

    .line 1827
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->i()V

    .line 1828
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1832
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1833
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1834
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    .line 1835
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->b:I

    goto :goto_1

    .line 1837
    :cond_3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->k()V

    .line 1838
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->d:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3123
    :cond_4
    :goto_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1842
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 3127
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 1762
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 4793
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 1762
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 1762
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1762
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 4797
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object v0

    .line 4798
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4799
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 5793
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    move-result-object v0

    return-object v0
.end method
