.class public final Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$n;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$n$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/p;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1619
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 1709
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    return-void
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1696
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$n;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1698
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 1702
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
    .locals 1

    .line 6626
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
    .locals 2

    .line 2626
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;-><init>()V

    .line 1637
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 1712
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1713
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    .line 1714
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
    .locals 2

    .line 1664
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1665
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1666
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    .line 1668
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    goto :goto_0

    .line 1670
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->i()V

    .line 1671
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3123
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1675
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

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

    .line 1612
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 1612
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 4641
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 1612
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

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

    .line 1612
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 1612
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

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

    .line 1612
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 4645
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    .line 4646
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4647
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3728
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3734
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    .line 1682
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$n;
    .locals 3

    .line 1653
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 1655
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 1656
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    .line 1657
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->b:I

    .line 1659
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 5641
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    return-object v0
.end method
