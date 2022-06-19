.class public final Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$r$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/u;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
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

    .line 7767
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    .line 8021
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->INV:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    .line 8056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    .line 8181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 1

    .line 7942
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 7943
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$r$b;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 1

    .line 8039
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8041
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 8042
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    return-object p0
.end method

.method private a(Z)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 1

    .line 8006
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 8007
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->e:Z

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 1

    .line 7974
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 7975
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->d:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7912
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7918
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 7914
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7915
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 7918
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 1

    .line 14774
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 2

    .line 8774
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;-><init>()V

    .line 7795
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$r;
    .locals 5

    .line 7811
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 7812
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7817
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 7821
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7825
    :cond_2
    iget-boolean v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->e:Z

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Z)Z

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 7829
    :cond_3
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Lkotlin/reflect/jvm/internal/impl/b/a$r$b;)Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    .line 7830
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 7831
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    .line 7832
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 7834
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Ljava/util/List;)Ljava/util/List;

    .line 7835
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 7836
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    .line 7837
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    .line 7839
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b(Lkotlin/reflect/jvm/internal/impl/b/a$r;Ljava/util/List;)Ljava/util/List;

    .line 7840
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 8059
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8060
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    .line 8061
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 8183
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8184
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    .line 8185
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;
    .locals 2

    .line 7845
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a()Lkotlin/reflect/jvm/internal/impl/b/a$r;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7846
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9471
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    .line 7847
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    .line 7849
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9486
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    .line 7850
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    .line 7852
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9501
    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d:Z

    .line 7853
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Z)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    .line 7855
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9516
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    .line 7856
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r$b;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    .line 7858
    :cond_4
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7859
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7860
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    .line 7861
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    goto :goto_0

    .line 7863
    :cond_5
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->l()V

    .line 7864
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7868
    :cond_6
    :goto_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7869
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7870
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    .line 7871
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    goto :goto_1

    .line 7873
    :cond_7
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->m()V

    .line 7874
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7878
    :cond_8
    :goto_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 10123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 7879
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 10127
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

    .line 7761
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 7761
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 13799
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a()Lkotlin/reflect/jvm/internal/impl/b/a$r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 7761
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

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

    .line 7761
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 7761
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

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

    .line 7761
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 13803
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$r;

    move-result-object v0

    .line 13804
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 13805
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 10930
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x0

    .line 11075
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 11081
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 7894
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7899
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->k()Z

    move-result v0

    if-nez v0, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 7761
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 12799
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a()Lkotlin/reflect/jvm/internal/impl/b/a$r;

    move-result-object v0

    return-object v0
.end method
