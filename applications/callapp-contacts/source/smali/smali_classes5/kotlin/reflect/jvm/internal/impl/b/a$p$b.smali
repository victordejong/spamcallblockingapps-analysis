.class public final Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$p$b;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/t;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private m:I

.field private n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private o:I

.field private p:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6199
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    .line 6431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    .line 6640
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6912
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 7028
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6620
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6621
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->e:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6717
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6718
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->g:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 3

    .line 6679
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6681
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 6684
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6687
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6749
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6750
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 3

    .line 6971
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6973
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 6976
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6979
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6418
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6424
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 6420
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6421
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 6424
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6793
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6794
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i:I

    return-object p0
.end method

.method private d(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 3

    .line 7067
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7069
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 7072
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 7075
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    return-object p0
.end method

.method private e(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6841
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6842
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->j:I

    return-object p0
.end method

.method private f(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6892
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6893
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->k:I

    return-object p0
.end method

.method private g(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 7013
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 7014
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->m:I

    return-object p0
.end method

.method private h(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 7105
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 7106
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->o:I

    return-object p0
.end method

.method static synthetic i()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 11206
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;-><init>()V

    return-object v0
.end method

.method private i(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 7149
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 7150
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->p:I

    return-object p0
.end method

.method private l()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 2

    .line 7206
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;-><init>()V

    .line 6243
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 3

    .line 6434
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 6435
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    .line 6436
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 2

    .line 6324
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6325
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6326
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6327
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    .line 6328
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    goto :goto_0

    .line 6330
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->m()V

    .line 6331
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6335
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7714
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c:Z

    .line 6336
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Z)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6338
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7739
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d:I

    .line 6339
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6341
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7754
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6342
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6344
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7769
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f:I

    .line 6345
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6347
    :cond_6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7784
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g:I

    .line 6348
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6350
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7807
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h:I

    .line 6351
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6353
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7830
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i:I

    .line 6354
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->e(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6356
    :cond_9
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7855
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j:I

    .line 6357
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6359
    :cond_a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->q()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7878
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->k:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6360
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6362
    :cond_b
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->r()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7893
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->l:I

    .line 6363
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->g(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6365
    :cond_c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->s()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7908
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->m:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6366
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->d(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6368
    :cond_d
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->t()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7923
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->n:I

    .line 6369
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6371
    :cond_e
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7946
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;->o:I

    .line 6372
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 6374
    :cond_f
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 8123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 6375
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 8127
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method public final a(Z)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;
    .locals 1

    .line 6573
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6574
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->d:Z

    return-object p0
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6193
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 6193
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 10247
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 6193
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

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

    .line 6193
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 6193
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

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

    .line 6193
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 6193
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->g()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8450
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8456
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    .line 6382
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8645
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 8651
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6388
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 8921
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 8931
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6394
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 9033
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 9039
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 6400
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 6405
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->k()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    return v3
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 6193
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 2

    .line 6251
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    .line 6252
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6253
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 5

    .line 6259
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 6260
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 6263
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    .line 6264
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->b:I

    .line 6266
    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6270
    :goto_0
    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->d:Z

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Z

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x2

    .line 6274
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->e:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 6278
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 6282
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 6286
    :cond_5
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 6290
    :cond_6
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->i:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->d(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 6294
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->j:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit16 v3, v3, 0x80

    .line 6298
    :cond_8
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->k:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->f(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x100

    .line 6302
    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->l:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit16 v3, v3, 0x200

    .line 6306
    :cond_a
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->m:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->g(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit16 v3, v3, 0x400

    .line 6310
    :cond_b
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->n:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit16 v3, v3, 0x800

    .line 6314
    :cond_c
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->o:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->h(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    or-int/lit16 v3, v3, 0x1000

    .line 6318
    :cond_d
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->p:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->i(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    .line 6319
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->j(Lkotlin/reflect/jvm/internal/impl/b/a$p;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 9247
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    return-object v0
.end method
