.class public final Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/r;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

.field private d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5402
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 5504
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->INV:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    .line 5539
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 1

    .line 5640
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    .line 5641
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->e:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 1

    .line 5522
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5524
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    .line 5525
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 3

    .line 5598
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5600
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 5603
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5606
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5491
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5497
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 5493
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5494
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 5497
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 1

    .line 11409
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 2

    .line 6409
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;-><init>()V

    .line 5424
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
    .locals 5

    .line 5440
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 5441
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5446
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 5450
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 5454
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->e:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;I)I

    .line 5455
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;
    .locals 1

    .line 5460
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5461
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7225
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    .line 5462
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    .line 5464
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7248
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5465
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    .line 5467
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7263
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    .line 5468
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    .line 8123
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 5470
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 8127
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

    .line 5395
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 5395
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 9428
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 5395
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

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

    .line 5395
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 5395
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

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

    .line 5395
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 9432
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    move-result-object v0

    .line 9433
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9434
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 8548
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8558
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5477
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 10428
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    move-result-object v0

    return-object v0
.end method
