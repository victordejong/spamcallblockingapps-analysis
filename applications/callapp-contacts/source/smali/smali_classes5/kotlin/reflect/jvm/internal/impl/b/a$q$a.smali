.class public final Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$q$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/s;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private g:I

.field private h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
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

    .line 19634
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    const/4 v0, 0x6

    .line 19841
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c:I

    .line 19925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    .line 20050
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 20142
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 20234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    .line 20359
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 1

    .line 19873
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 19874
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 3

    .line 20089
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 20091
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 20094
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 20097
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 1

    .line 19910
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 19911
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->d:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 3

    .line 20181
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 20183
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 20186
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 20189
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 1

    .line 20127
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 20128
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->g:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 19828
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19834
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 19830
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19831
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 19834
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 1

    .line 20219
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 20220
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->i:I

    return-object p0
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 1

    .line 26641
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 2

    .line 20641
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;-><init>()V

    .line 19668
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$q;
    .locals 5

    .line 19684
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 19685
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 19690
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 19694
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I

    .line 19695
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 19696
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    .line 19697
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 19699
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 19703
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x8

    .line 19707
    :cond_4
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->g:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x10

    .line 19711
    :cond_5
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    or-int/lit8 v3, v3, 0x20

    .line 19715
    :cond_6
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->i:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I

    .line 19716
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 19717
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    .line 19718
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 19720
    :cond_7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;

    .line 19721
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 19722
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    .line 19723
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    .line 19725
    :cond_8
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c(Lkotlin/reflect/jvm/internal/impl/b/a$q;Ljava/util/List;)Ljava/util/List;

    .line 19726
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e(Lkotlin/reflect/jvm/internal/impl/b/a$q;I)I

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 19928
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 19929
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    .line 19930
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 20237
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 20238
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    .line 20239
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 20361
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 20362
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    .line 20363
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;
    .locals 2

    .line 19731
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a()Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 19732
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21233
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b:I

    .line 19733
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19735
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21248
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c:I

    .line 19736
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19738
    :cond_2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19739
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19740
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    .line 19741
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    goto :goto_0

    .line 19743
    :cond_3
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->l()V

    .line 19744
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19748
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21298
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19749
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19751
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21313
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->f:I

    .line 19752
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19754
    :cond_6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21328
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19755
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19757
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21343
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;->h:I

    .line 19758
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    .line 19760
    :cond_8
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 19761
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19762
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    .line 19763
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    goto :goto_1

    .line 19765
    :cond_9
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->m()V

    .line 19766
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->b(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19770
    :cond_a
    :goto_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 19771
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19772
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    .line 19773
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    goto :goto_2

    .line 19775
    :cond_b
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->n()V

    .line 19776
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k:Ljava/util/List;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->c(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19780
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 22123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 19781
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->d(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 22127
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

    .line 19628
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 19628
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$q;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 25672
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a()Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 19628
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

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

    .line 19628
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 19628
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

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

    .line 19628
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 25676
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object v0

    .line 25677
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25678
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 22898
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

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
    if-nez v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    .line 22944
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 22950
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 19792
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 23055
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 23061
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19798
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_5

    return v3

    .line 23147
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->b:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 23153
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19804
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x0

    .line 23253
    :goto_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 23259
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    .line 19810
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e()Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 19815
    :cond_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->k()Z

    move-result v0

    if-nez v0, :cond_a

    return v3

    :cond_a
    return v2
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 19628
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$q$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$q$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 24672
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a()Lkotlin/reflect/jvm/internal/impl/b/a$q;

    move-result-object v0

    return-object v0
.end method
