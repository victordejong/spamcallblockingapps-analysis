.class public final Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$g$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/j;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25599
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 25869
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g$b;->TRUE:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    .line 25904
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 26026
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    .line 26223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 25797
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 25798
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$g$b;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 25887
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25889
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 25890
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 3

    .line 25968
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 25970
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 25973
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25976
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 25849
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 25850
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->d:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 26011
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 26012
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->g:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25752
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25758
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 25754
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25755
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 25758
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 32606
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 2

    .line 26606
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;-><init>()V

    .line 25629
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 26029
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 26030
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    .line 26031
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 26226
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 26227
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    .line 26228
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 2

    .line 25683
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 25684
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27201
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I

    .line 25685
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 25687
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27226
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    .line 25688
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 25690
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 27241
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    .line 25691
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g$b;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 25693
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27266
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25694
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 25696
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27281
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    .line 25697
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 25699
    :cond_5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 25700
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25701
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    .line 25702
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    goto :goto_0

    .line 25704
    :cond_6
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i()V

    .line 25705
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25709
    :cond_7
    :goto_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 25710
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25711
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    .line 25712
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    goto :goto_1

    .line 25714
    :cond_8
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->k()V

    .line 25715
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28123
    :cond_9
    :goto_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 25719
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 28127
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

    .line 25592
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 25592
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 30633
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 25592
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

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

    .line 25592
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 25592
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

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

    .line 25592
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 30637
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    .line 30638
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 30639
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 28914
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v1, 0x8

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

    .line 28925
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25726
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    .line 29057
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 29069
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 25732
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 29254
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 29266
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 25738
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$g;
    .locals 5

    .line 25645
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 25646
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 25651
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 25655
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 25659
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Lkotlin/reflect/jvm/internal/impl/b/a$g$b;)Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 25663
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 25667
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->g:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I

    .line 25668
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 25669
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    .line 25670
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 25672
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Ljava/util/List;)Ljava/util/List;

    .line 25673
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 25674
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    .line 25675
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->b:I

    .line 25677
    :cond_6
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b(Lkotlin/reflect/jvm/internal/impl/b/a$g;Ljava/util/List;)Ljava/util/List;

    .line 25678
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 31633
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    return-object v0
.end method
