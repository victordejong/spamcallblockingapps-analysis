.class public final Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$h$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/k;"
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

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lkotlin/reflect/jvm/internal/impl/b/a$d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15060
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    const/4 v0, 0x6

    .line 15306
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c:I

    .line 15398
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->d:I

    .line 15462
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    .line 15679
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    .line 15896
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 15956
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    .line 16050
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/a$d;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 15368
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15369
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 3

    .line 16089
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/a$d;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16091
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    goto :goto_0

    .line 16094
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 16097
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 3

    .line 15501
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 15503
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 15506
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15509
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 3

    .line 15935
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 15937
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    goto :goto_0

    .line 15940
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 15943
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 15415
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15416
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->d:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 3

    .line 15718
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 15720
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 15723
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15726
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 15447
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15448
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->e:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 15293
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15299
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 15295
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15296
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 15299
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 15539
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15540
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->g:I

    return-object p0
.end method

.method private e(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 15756
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15757
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->j:I

    return-object p0
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 1

    .line 21067
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 2

    .line 17067
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;-><init>()V

    .line 15100
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$h;
    .locals 5

    .line 15116
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 15117
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 15122
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 15126
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 15130
    :cond_2
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->e:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 15134
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 15138
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    .line 15139
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 15140
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    .line 15141
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15143
    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 15147
    :cond_6
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x40

    .line 15151
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->j:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    .line 15152
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v4, 0x100

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    .line 15153
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    .line 15154
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15156
    :cond_8
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit16 v3, v3, 0x80

    .line 15160
    :cond_9
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 15161
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    .line 15162
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    .line 15163
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    .line 15165
    :cond_a
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    or-int/lit16 v3, v3, 0x100

    .line 15169
    :cond_b
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 15170
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 15557
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 15558
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    .line 15559
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 15774
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 15775
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    .line 15776
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 15958
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 15959
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    .line 15960
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    .locals 2

    .line 15175
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a()Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 15176
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17578
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    .line 15177
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15179
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17593
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    .line 15180
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15182
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17608
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 15183
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15185
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17623
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15186
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15188
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17638
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    .line 15189
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15191
    :cond_5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 15192
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15193
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    .line 15194
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    goto :goto_0

    .line 15196
    :cond_6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l()V

    .line 15197
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15201
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17688
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15202
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15204
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17703
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    .line 15205
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->e(I)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15207
    :cond_9
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15208
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 15209
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    .line 15210
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    goto :goto_1

    .line 15212
    :cond_a
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m()V

    .line 15213
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15217
    :cond_b
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 17753
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 15218
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15220
    :cond_c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 15221
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15222
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    .line 15223
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    goto :goto_2

    .line 15225
    :cond_d
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n()V

    .line 15226
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->m:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15230
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17802
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 15231
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    .line 15233
    :cond_f
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 18123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 15234
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 18127
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

    .line 15054
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 15054
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 20104
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a()Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 15054
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

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

    .line 15054
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 15054
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

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

    .line 15054
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 20108
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v0

    .line 20109
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 20110
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 5

    .line 18435
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

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

    .line 18473
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15245
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    .line 18573
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 18579
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 15251
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18684
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 18690
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->i:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 15257
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return v4

    :cond_7
    const/4 v0, 0x0

    .line 18790
    :goto_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 18796
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 15263
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v1

    if-nez v1, :cond_8

    return v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 18901
    :cond_9
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_b

    .line 18907
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->l:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 15269
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v0

    if-nez v0, :cond_b

    return v4

    .line 19055
    :cond_b
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->b:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    .line 19061
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->n:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 15275
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e()Z

    move-result v0

    if-nez v0, :cond_d

    return v4

    .line 15280
    :cond_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->k()Z

    move-result v0

    if-nez v0, :cond_e

    return v4

    :cond_e
    return v3
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 15054
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 19104
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a()Lkotlin/reflect/jvm/internal/impl/b/a$h;

    move-result-object v0

    return-object v0
.end method
