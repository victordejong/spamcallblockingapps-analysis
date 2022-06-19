.class public final Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$u$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/x;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

.field private f:I

.field private g:I

.field private h:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21503
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 21734
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->ERROR:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    .line 21881
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21661
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21662
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$u$b;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21764
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21766
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21767
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$u$c;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21914
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21916
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21917
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21714
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21715
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->d:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21814
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21815
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->f:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21613
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21619
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 21615
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21616
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 21619
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21862
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    .line 21863
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->g:I

    return-object p0
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 27510
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 2

    .line 22510
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;-><init>()V

    .line 21531
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$u;
    .locals 5

    .line 21547
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 21548
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 21553
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 21557
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 21561
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;Lkotlin/reflect/jvm/internal/impl/b/a$u$b;)Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 21565
    :cond_3
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->f:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 21569
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 21573
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;Lkotlin/reflect/jvm/internal/impl/b/a$u$c;)Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    .line 21574
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;
    .locals 1

    .line 21579
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a()Lkotlin/reflect/jvm/internal/impl/b/a$u;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 21580
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23227
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    .line 21581
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 21583
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23252
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    .line 21584
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 21586
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23275
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    .line 21587
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u$b;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 21589
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23298
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    .line 21590
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 21592
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23321
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    .line 21593
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 21595
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23346
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    .line 21596
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u$c;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    .line 24123
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 21598
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

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

    .line 21496
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 21496
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$u;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 25535
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a()Lkotlin/reflect/jvm/internal/impl/b/a$u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 21496
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

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

    .line 21496
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 21496
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

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

    .line 21496
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 25539
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$u;

    move-result-object v0

    .line 25540
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25541
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

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

    .line 26535
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a()Lkotlin/reflect/jvm/internal/impl/b/a$u;

    move-result-object v0

    return-object v0
.end method
