.class public final Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$k$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/m;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

.field private g:Lkotlin/reflect/jvm/internal/impl/b/a$v;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12020
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    .line 12187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    .line 12312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    .line 12437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    .line 12562
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 12622
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 3

    .line 12601
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12603
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    goto :goto_0

    .line 12606
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 12609
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 3

    .line 12661
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12663
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    goto :goto_0

    .line 12666
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 12669
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12174
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$k;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12180
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 12176
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12177
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 12180
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    :cond_0
    throw p1
.end method

.method static synthetic h()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 1

    .line 18027
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;-><init>()V

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 2

    .line 13027
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;-><init>()V

    .line 12046
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 12190
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 12191
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    .line 12192
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 12315
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 12316
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    .line 12317
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 12440
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 12441
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    .line 12442
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 2

    .line 12093
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 12094
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12095
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12096
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    .line 12097
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    goto :goto_0

    .line 12099
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->l()V

    .line 12100
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12104
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12105
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12106
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    .line 12107
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    goto :goto_1

    .line 12109
    :cond_3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->m()V

    .line 12110
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12114
    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12115
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12116
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    .line 12117
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    goto :goto_2

    .line 12119
    :cond_5
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->n()V

    .line 12120
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12124
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13824
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 12125
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    .line 12127
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13839
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 12128
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    .line 12130
    :cond_8
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 14123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 12131
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 14127
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

    .line 12014
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 12014
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 17050
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 12014
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

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

    .line 12014
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 12014
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

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

    .line 12014
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 17054
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    .line 17055
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 17056
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14206
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 14212
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 12138
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 14331
    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 14337
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 12144
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 14456
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 14462
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    .line 12150
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14567
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 14573
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 12156
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 12161
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->k()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    return v3
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 12014
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/a$k;
    .locals 5

    .line 12062
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 12063
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 12066
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    .line 12067
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    .line 12069
    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;

    .line 12070
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 12071
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    .line 12072
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    .line 12074
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;

    .line 12075
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 12076
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    .line 12077
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->b:I

    .line 12079
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->e:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 12083
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x2

    .line 12087
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 12088
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 16050
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    return-object v0
.end method
