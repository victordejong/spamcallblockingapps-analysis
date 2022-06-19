.class public final Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$o;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$o$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/q;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 541
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 625
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-void
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$o;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 614
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    .locals 1

    .line 5548
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    .locals 2

    .line 1548
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;-><init>()V

    .line 559
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 627
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 628
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/n;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 629
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    .locals 2

    .line 586
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 587
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 590
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    goto :goto_0

    .line 592
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->i()V

    .line 593
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->addAll(Ljava/util/Collection;)Z

    .line 2123
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 597
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 2127
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

    .line 534
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 534
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 3563
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 534
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

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

    .line 534
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 534
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

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

    .line 534
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 3567
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    .line 3568
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3569
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$o;
    .locals 3

    .line 575
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 577
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 578
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 579
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->b:I

    .line 581
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 4563
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    return-object v0
.end method
