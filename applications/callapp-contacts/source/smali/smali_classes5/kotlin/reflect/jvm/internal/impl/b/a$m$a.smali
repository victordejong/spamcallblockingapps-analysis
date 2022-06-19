.class public final Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$m$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/n;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private j:I

.field private k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

.field private l:I

.field private m:I

.field private n:Ljava/util/List;
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

    .line 17023
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    const/16 v0, 0x206

    .line 17249
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c:I

    const/16 v0, 0x806

    .line 17345
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->d:I

    .line 17409
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    .line 17626
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17718
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 17890
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17314
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17315
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 3

    .line 17448
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17450
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 17453
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17456
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 3

    .line 17757
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17759
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    goto :goto_0

    .line 17762
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 17765
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17362
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17363
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->d:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 3

    .line 17665
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17667
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 17670
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17673
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17394
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17395
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->e:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17236
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17242
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 17238
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17239
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 17242
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17486
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17487
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->g:I

    return-object p0
.end method

.method private e(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17703
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17704
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->j:I

    return-object p0
.end method

.method private f(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17831
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17832
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->l:I

    return-object p0
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 22030
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;-><init>()V

    return-object v0
.end method

.method private g(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 1

    .line 17875
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17876
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->m:I

    return-object p0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 2

    .line 18030
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;-><init>()V

    .line 17063
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$m;
    .locals 5

    .line 17079
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 17080
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 17085
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 17089
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 17093
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->e:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 17097
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 17101
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    .line 17102
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 17103
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    .line 17104
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17106
    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 17110
    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 17114
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->j:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 17118
    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 17122
    :cond_9
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->l:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 17126
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->m:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    .line 17127
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 17128
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    .line 17129
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit16 v1, v1, -0x801

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    .line 17131
    :cond_b
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Ljava/util/List;)Ljava/util/List;

    .line 17132
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 17504
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 17505
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    .line 17506
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 17892
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 17893
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    .line 17894
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    .locals 2

    .line 17137
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a()Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 17138
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18549
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    .line 17139
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17141
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18564
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    .line 17142
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17144
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18579
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    .line 17145
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17147
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18594
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17148
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17150
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18609
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    .line 17151
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17153
    :cond_5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 17154
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17155
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    .line 17156
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    goto :goto_0

    .line 17158
    :cond_6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->l()V

    .line 17159
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17163
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18659
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17164
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17166
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18674
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    .line 17167
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->e(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17169
    :cond_9
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18689
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 17170
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17172
    :cond_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18728
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    .line 17173
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17175
    :cond_b
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18743
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    .line 17176
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->g(I)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    .line 17178
    :cond_c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 17179
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17180
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    .line 17181
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    goto :goto_1

    .line 17183
    :cond_d
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->m()V

    .line 17184
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->n:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17188
    :cond_e
    :goto_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 19123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 17189
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 19127
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

    .line 17017
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 17017
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 21067
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a()Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 17017
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

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

    .line 17017
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 17017
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

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

    .line 17017
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 21071
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-result-object v0

    .line 21072
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 21073
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 5

    .line 19382
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v4

    :cond_1
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 19420
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17200
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    .line 19520
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 19526
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 17206
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19631
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 19637
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 17212
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return v4

    .line 19723
    :cond_7
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 19729
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 17218
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v0

    if-nez v0, :cond_9

    return v4

    .line 17223
    :cond_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->k()Z

    move-result v0

    if-nez v0, :cond_a

    return v4

    :cond_a
    return v3
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 17017
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 20067
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a()Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-result-object v0

    return-object v0
.end method
