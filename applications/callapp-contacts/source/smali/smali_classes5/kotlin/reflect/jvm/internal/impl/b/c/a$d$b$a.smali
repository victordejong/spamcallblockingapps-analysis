.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/c/e;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
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

    .line 955
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    const/4 v0, 0x1

    .line 1096
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->c:I

    const-string v0, ""

    .line 1192
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->e:Ljava/lang/Object;

    .line 1292
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 1343
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    .line 1451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 1

    .line 1125
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1126
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 1

    .line 1322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1325
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 1

    .line 1173
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1174
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->d:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1083
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1085
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 1

    .line 6962
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 2

    .line 1962
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;-><init>()V

    .line 983
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
    .locals 5

    .line 999
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V

    .line 1000
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1005
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1009
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1013
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 1017
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 1018
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 1019
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    .line 1020
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1022
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/util/List;)Ljava/util/List;

    .line 1023
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 1024
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    .line 1025
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1027
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/util/List;)Ljava/util/List;

    .line 1028
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 1345
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1346
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    .line 1347
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 1453
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1454
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    .line 1455
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;
    .locals 2

    .line 1033
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1034
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2591
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I

    .line 1035
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    .line 1037
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2614
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    .line 1038
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    .line 1040
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1041
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    .line 1042
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->e:Ljava/lang/Object;

    .line 1045
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2691
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 1046
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    .line 1048
    :cond_4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1049
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1050
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    .line 1051
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    goto :goto_0

    .line 1053
    :cond_5
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->i()V

    .line 1054
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1058
    :cond_6
    :goto_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1059
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1060
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    .line 1061
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->b:I

    goto :goto_1

    .line 1063
    :cond_7
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->k()V

    .line 1064
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3123
    :cond_8
    :goto_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1068
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 3127
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

    .line 948
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 948
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 4987
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 948
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

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

    .line 948
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 948
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

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

    .line 948
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 4991
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    move-result-object v0

    .line 4992
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4993
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

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

    .line 5987
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    move-result-object v0

    return-object v0
.end method
