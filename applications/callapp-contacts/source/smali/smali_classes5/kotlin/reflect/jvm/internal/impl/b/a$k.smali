.class public final Lkotlin/reflect/jvm/internal/impl/b/a$k;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/m;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lkotlin/reflect/jvm/internal/impl/b/a$k;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

.field public f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

.field private final h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private i:I

.field private j:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11691
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$k$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 12686
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;-><init>(Z)V

    .line 12687
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->g:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11591
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 11849
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    .line 11912
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k:I

    .line 11592
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k()V

    .line 11594
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 11596
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x4

    const/4 v6, 0x2

    if-nez v3, :cond_11

    .line 11602
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    if-eqz v7, :cond_d

    const/16 v8, 0x1a

    if-eq v7, v8, :cond_b

    const/16 v8, 0x22

    if-eq v7, v8, :cond_9

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_7

    const/16 v8, 0xf2

    const/4 v9, 0x0

    if-eq v7, v8, :cond_4

    const/16 v8, 0x102

    if-eq v7, v8, :cond_1

    .line 11608
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 11653
    :cond_1
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_2

    .line 11654
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 24196
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    move-result-object v9

    .line 11656
    :cond_2
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$v;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    if-eqz v9, :cond_3

    .line 11658
    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v$a;

    .line 11659
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$v$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    .line 11661
    :cond_3
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    or-int/2addr v7, v6

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    goto :goto_0

    .line 11640
    :cond_4
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    and-int/2addr v7, v1

    if-ne v7, v1, :cond_5

    .line 11641
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 24006
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v9

    .line 11643
    :cond_5
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$s;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    if-eqz v9, :cond_6

    .line 11645
    invoke-virtual {v9, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    .line 11646
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 11648
    :cond_6
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    goto :goto_0

    :cond_7
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v5, :cond_8

    .line 11632
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 11635
    :cond_8
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$q;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v6, :cond_a

    .line 11624
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 11627
    :cond_a
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v7, v4, 0x1

    if-eq v7, v1, :cond_c

    .line 11616
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 11619
    :cond_c
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 11669
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 26057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 11669
    throw p2

    :catch_1
    move-exception p1

    .line 25057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 11667
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_e

    .line 11673
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v6, :cond_f

    .line 11676
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v5, :cond_10

    .line 11679
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    .line 11682
    :cond_10
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11686
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 11688
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->w()V

    throw p1

    :cond_11
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_12

    .line 11673
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    :cond_12
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v6, :cond_13

    .line 11676
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v5, :cond_14

    .line 11679
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    .line 11682
    :cond_14
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11686
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 11688
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11566
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$k;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            "*>;)V"
        }
    .end annotation

    .line 11573
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 11849
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    .line 11912
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k:I

    .line 23123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 11574
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 11566
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$k;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 11576
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 11849
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    .line 11912
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k:I

    .line 11576
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$k;I)I
    .locals 0

    .line 11566
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11566
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 1

    .line 27004
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    .line 12007
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$k;
    .locals 1

    .line 11580
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->g:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11980
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s;
    .locals 0

    .line 11566
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/a$v;
    .locals 0

    .line 11566
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;
    .locals 0

    .line 11566
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11566
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;
    .locals 0

    .line 11566
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$k;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 11566
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Ljava/util/List;
    .locals 0

    .line 11566
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 11566
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 11843
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    .line 11844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    .line 11845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    .line 11846
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 11847
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$v;->a()Lkotlin/reflect/jvm/internal/impl/b/a$v;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11889
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f()I

    .line 11891
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11893
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    .line 11894
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 11896
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x4

    .line 11897
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11899
    :cond_1
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x5

    .line 11900
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11902
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/16 v1, 0x1e

    .line 11903
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 11905
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x20

    .line 11906
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_4
    const/16 v1, 0xc8

    .line 11908
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 11909
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            ">;"
        }
    .end annotation

    .line 11703
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 11818
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 11833
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 11851
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 26726
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 26732
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 11856
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 11857
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 26761
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 26767
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 11862
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 11863
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 26796
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 26802
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$q;

    .line 11868
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$q;->e()Z

    move-result v3

    if-nez v3, :cond_6

    .line 11869
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11873
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26824
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 11874
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v0

    if-nez v0, :cond_8

    .line 11875
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v2

    .line 11879
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->x()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11880
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v2

    .line 11883
    :cond_9
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->j:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 11914
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11918
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v3, 0x3

    .line 11919
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 11922
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x4

    .line 11923
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11926
    :cond_2
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x5

    .line 11927
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11930
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x1e

    .line 11931
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 11934
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->i:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x20

    .line 11935
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->f:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 11938
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->z()I

    move-result v0

    add-int/2addr v2, v0

    .line 11939
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 11940
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->k:I

    return v2
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;
    .locals 1

    .line 28004
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    .line 27007
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 11566
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 30004
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 28584
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$k;->g:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    return-object v0
.end method
