.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$b;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/c;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2384
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 1

    .line 2488
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b:I

    .line 2489
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->c:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 1

    .line 2532
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b:I

    .line 2533
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->d:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2458
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2460
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2461
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 2464
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 1

    .line 8391
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 2

    .line 3391
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;-><init>()V

    .line 2404
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;
    .locals 1

    .line 2436
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2437
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4236
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b:I

    .line 2438
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    .line 2440
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4259
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c:I

    .line 2441
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    .line 5123
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 2443
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 5127
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

    .line 2377
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 2377
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 6408
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 2377
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

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

    .line 2377
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 2377
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

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

    .line 2377
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 6412
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    .line 6413
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6414
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    .locals 4

    .line 2420
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V

    .line 2421
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2426
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2430
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->d:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;I)I

    .line 2431
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 7408
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    return-object v0
.end method
