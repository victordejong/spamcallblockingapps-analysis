.class public final Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$s;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$s$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/v;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13018
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 13119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 13244
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->d:I

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
    .locals 1

    .line 13276
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    .line 13277
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->d:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13106
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13112
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 13108
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13109
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 13112
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
    .locals 1

    .line 19025
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
    .locals 2

    .line 14025
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;-><init>()V

    .line 13038
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .line 13122
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 13123
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    .line 13124
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;
    .locals 2

    .line 13071
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 13072
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13073
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13074
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    .line 13075
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    goto :goto_0

    .line 13077
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->i()V

    .line 13078
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13082
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14887
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;->c:I

    .line 13083
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    .line 15123
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 13085
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->c(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 15127
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

    .line 13011
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 13011
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 17042
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 13011
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

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

    .line 13011
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 13011
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

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

    .line 13011
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 17046
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    .line 17047
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 17048
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15138
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 15144
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 13092
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lkotlin/reflect/jvm/internal/impl/b/a$s;
    .locals 4

    .line 13054
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 13055
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13058
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    .line 13059
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->b:I

    .line 13061
    :cond_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;Ljava/util/List;)Ljava/util/List;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 13065
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->d:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;I)I

    .line 13066
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->b(Lkotlin/reflect/jvm/internal/impl/b/a$s;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 18042
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    return-object v0
.end method
