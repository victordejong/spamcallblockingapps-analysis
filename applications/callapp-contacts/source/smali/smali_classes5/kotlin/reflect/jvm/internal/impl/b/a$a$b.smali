.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a$b;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/d;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4341
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 4478
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 1

    .line 4463
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    .line 4464
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->c:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4433
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4439
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 4435
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4436
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 4439
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 1

    .line 10348
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 2

    .line 5348
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;-><init>()V

    .line 4361
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 4481
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4482
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    .line 4483
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 2

    .line 4394
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4395
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6171
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    .line 4396
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    .line 4398
    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4399
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4400
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    .line 4401
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    goto :goto_0

    .line 4403
    :cond_2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->i()V

    .line 4404
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7123
    :cond_3
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 4408
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 7127
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

    .line 4334
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 4334
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 8365
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 4334
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

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

    .line 4334
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 4334
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

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

    .line 4334
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 8369
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v0

    .line 8370
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8371
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 7451
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 7497
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 7503
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    .line 4419
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$a;
    .locals 4

    .line 4377
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 4378
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4383
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->c:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;I)I

    .line 4384
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    .line 4385
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    .line 4386
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->b:I

    .line 4388
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Ljava/util/List;)Ljava/util/List;

    .line 4389
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 9365
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a;

    move-result-object v0

    return-object v0
.end method
