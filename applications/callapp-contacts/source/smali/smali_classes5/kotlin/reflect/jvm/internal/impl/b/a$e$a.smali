.class public final Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$e;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$e$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/h;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24399
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 24524
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$b;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    .line 24559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    .line 24684
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24774
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$c;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$e$b;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 1

    .line 24542
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24544
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    .line 24545
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$e$c;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 1

    .line 24792
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24794
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    .line 24795
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 3

    .line 24748
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 24750
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    goto :goto_0

    .line 24753
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24756
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 24511
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$e;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24517
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 28066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 24513
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24514
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 24517
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 1

    .line 30406
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 2

    .line 25406
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;-><init>()V

    .line 24423
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$e;
    .locals 5

    .line 24439
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 24440
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 24445
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$e$b;)Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    .line 24446
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 24447
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    .line 24448
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    .line 24450
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 24454
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 24458
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$e$c;)Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    .line 24459
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;I)I

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 24562
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 24563
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    .line 24564
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;
    .locals 2

    .line 24464
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a()Lkotlin/reflect/jvm/internal/impl/b/a$e;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 24465
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26171
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    .line 24466
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e$b;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    .line 24468
    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24469
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24470
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    .line 24471
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    goto :goto_0

    .line 24473
    :cond_2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->i()V

    .line 24474
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24478
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26231
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24479
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    .line 24481
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26246
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    .line 24482
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e$c;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    .line 27123
    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 24484
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 27127
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

    .line 24392
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 24392
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$e;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 28427
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a()Lkotlin/reflect/jvm/internal/impl/b/a$e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 24392
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

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

    .line 24392
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 24392
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

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

    .line 24392
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 28431
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$e;

    move-result-object v0

    .line 28432
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28433
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27578
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 27584
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24491
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27694
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->b:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 27705
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24497
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 29427
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a()Lkotlin/reflect/jvm/internal/impl/b/a$e;

    move-result-object v0

    return-object v0
.end method
