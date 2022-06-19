.class public final Lkotlin/reflect/jvm/internal/impl/b/a$v$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$v;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$v$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/y;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22208
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 22292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    return-void
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22279
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$v;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22285
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 22281
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22282
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 22285
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$v$a;
    .locals 1

    .line 27215
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$v$a;
    .locals 2

    .line 23215
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;-><init>()V

    .line 22226
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 22295
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 22296
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    .line 22297
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;
    .locals 2

    .line 22253
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 22254
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->b(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22255
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22256
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->b(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    .line 22257
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    goto :goto_0

    .line 22259
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->i()V

    .line 22260
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->b(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24123
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 22264
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->c(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 24127
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

    .line 22201
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 22201
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 25230
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 22201
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

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

    .line 22201
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 22201
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

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

    .line 22201
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 25234
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    .line 25235
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25236
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$v;
    .locals 3

    .line 22242
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 22244
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 22245
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    .line 22246
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->b:I

    .line 22248
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 26230
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    return-object v0
.end method
