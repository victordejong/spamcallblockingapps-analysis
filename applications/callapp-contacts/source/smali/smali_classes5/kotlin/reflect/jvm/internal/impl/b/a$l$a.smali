.class public final Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$l$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/l;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

.field private d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22863
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    .line 22999
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 23059
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 23119
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 23179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 3

    .line 23158
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 23160
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    goto :goto_0

    .line 23163
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 23166
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 3

    .line 23098
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 23100
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    goto :goto_0

    .line 23103
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 23106
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 3

    .line 23038
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 23040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    goto :goto_0

    .line 23043
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 23046
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22986
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22992
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 22988
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22989
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 22992
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 1

    .line 29870
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 2

    .line 23870
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;-><init>()V

    .line 22887
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$l;
    .locals 5

    .line 22903
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 22904
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 22909
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 22913
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 22917
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22918
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 22919
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    .line 22920
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    .line 22922
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Ljava/util/List;)Ljava/util/List;

    .line 22923
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;I)I

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 23182
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 23183
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    .line 23184
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    .locals 2

    .line 22928
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a()Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 22929
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24626
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 22930
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    .line 22932
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24641
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 22933
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    .line 22935
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24656
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22936
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    .line 22938
    :cond_3
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22939
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22940
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    .line 22941
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    goto :goto_0

    .line 22943
    :cond_4
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->l()V

    .line 22944
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22948
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 25123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 22949
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 25127
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

    .line 22857
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 22857
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$l;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 28891
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a()Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 22857
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

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

    .line 22857
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 22857
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

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

    .line 22857
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 28895
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v0

    .line 28896
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 28897
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 26064
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

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

    .line 26070
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 22956
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    .line 26124
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 26130
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22962
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    .line 26198
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 26204
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 22968
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22973
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->k()Z

    move-result v0

    if-nez v0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 22857
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 27891
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a()Lkotlin/reflect/jvm/internal/impl/b/a$l;

    move-result-object v0

    return-object v0
.end method
