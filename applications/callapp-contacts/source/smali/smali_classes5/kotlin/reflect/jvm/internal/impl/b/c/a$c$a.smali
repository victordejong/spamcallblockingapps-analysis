.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$c;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/d;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

.field private d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

.field private e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

.field private f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3414
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 3519
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    .line 3579
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3663
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3723
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 3

    .line 3558
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3560
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    goto :goto_0

    .line 3563
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    .line 3566
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 3

    .line 3638
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3640
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    goto :goto_0

    .line 3643
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3646
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 3

    .line 3702
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3704
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    goto :goto_0

    .line 3707
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3710
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 3

    .line 3762
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3764
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    goto :goto_0

    .line 3767
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3770
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3506
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3512
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 3508
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3509
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 3512
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 1

    .line 9421
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 2

    .line 4421
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;-><init>()V

    .line 3438
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
    .locals 5

    .line 3454
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V

    .line 3455
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3460
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3464
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3468
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3472
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3473
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    .locals 1

    .line 3478
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3479
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5220
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    .line 3480
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    .line 3482
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5243
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3483
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    .line 3485
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5258
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3486
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    .line 3488
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5273
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3489
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    .line 6123
    :cond_4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 3491
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 6127
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

    .line 3407
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 3407
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 7442
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 3407
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

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

    .line 3407
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 3407
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

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

    .line 3407
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 7446
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    move-result-object v0

    .line 7447
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7448
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

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

    .line 8442
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    move-result-object v0

    return-object v0
.end method
