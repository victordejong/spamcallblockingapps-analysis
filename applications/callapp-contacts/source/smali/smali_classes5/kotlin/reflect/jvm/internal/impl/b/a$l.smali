.class public final Lkotlin/reflect/jvm/internal/impl/b/a$l;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/l;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lkotlin/reflect/jvm/internal/impl/b/a$l;


# instance fields
.field public b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

.field public c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

.field public d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22598
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$l$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 23308
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;-><init>(Z)V

    .line 23309
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22507
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 22700
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    .line 22754
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->j:I

    .line 22508
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->k()V

    .line 22510
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 22512
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x8

    if-nez v3, :cond_e

    .line 22518
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v7, 0xa

    const/4 v8, 0x0

    if-eq v6, v7, :cond_9

    const/16 v7, 0x12

    if-eq v6, v7, :cond_6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_3

    const/16 v7, 0x22

    if-eq v6, v7, :cond_1

    .line 22524
    invoke-virtual {p0, p1, v2, p2, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v6, v4, 0x8

    if-eq v6, v5, :cond_2

    .line 22571
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    or-int/lit8 v4, v4, 0x8

    .line 22574
    :cond_2
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22558
    :cond_3
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    .line 22559
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    move-result-object v8

    .line 22561
    :cond_4
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    if-eqz v8, :cond_5

    .line 22563
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k$a;

    .line 22564
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$k$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v6

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22566
    :cond_5
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    or-int/2addr v6, v7

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    goto :goto_0

    .line 22545
    :cond_6
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    .line 22546
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 24607
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v8

    .line 22548
    :cond_7
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$n;

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    if-eqz v8, :cond_8

    .line 22550
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    .line 22551
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v6

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 22553
    :cond_8
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    or-int/2addr v6, v7

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    goto/16 :goto_0

    .line 22532
    :cond_9
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_a

    .line 22533
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 24529
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v8

    .line 22535
    :cond_a
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$o;

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    if-eqz v8, :cond_b

    .line 22537
    invoke-virtual {v8, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    .line 22538
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v6

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 22540
    :cond_b
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    or-int/2addr v6, v1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22582
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 26057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 22582
    throw p2

    :catch_1
    move-exception p1

    .line 25057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 22580
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x8

    if-ne p2, v5, :cond_d

    .line 22586
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    .line 22589
    :cond_d
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22593
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 22595
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->w()V

    throw p1

    :cond_e
    and-int/lit8 p1, v4, 0x8

    if-ne p1, v5, :cond_f

    .line 22586
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    .line 22589
    :cond_f
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 22593
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 22595
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22482
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$l;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
            "*>;)V"
        }
    .end annotation

    .line 22489
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 22700
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    .line 22754
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->j:I

    .line 24123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 22490
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 22482
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$l;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 22492
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 22700
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    .line 22754
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->j:I

    .line 22492
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;I)I
    .locals 0

    .line 22482
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Ljava/util/List;
    .locals 0

    .line 22482
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22482
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$k;)Lkotlin/reflect/jvm/internal/impl/b/a$k;
    .locals 0

    .line 22482
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$l;
    .locals 1

    .line 22496
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22818
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n;
    .locals 0

    .line 22482
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o;
    .locals 0

    .line 22482
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 22482
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 22695
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a()Lkotlin/reflect/jvm/internal/impl/b/a$o;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 22696
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 22697
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->a()Lkotlin/reflect/jvm/internal/impl/b/a$k;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22698
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22734
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->f()I

    .line 22736
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 22738
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 22739
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 22741
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 22742
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 22744
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 22745
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-virtual {p1, v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_2
    const/4 v1, 0x0

    .line 22747
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 22748
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    .line 22750
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 22751
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$l;",
            ">;"
        }
    .end annotation

    .line 22610
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 22620
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

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

    .line 22635
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

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

    .line 22702
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 22706
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26641
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 22707
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22708
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    return v2

    .line 22712
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26656
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 22713
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$k;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22714
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 26678
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 26684
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 22719
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 22720
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22724
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->x()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22725
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    return v2

    .line 22728
    :cond_6
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->i:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 22756
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22760
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 22761
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22764
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 22765
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22768
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 22769
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22772
    :cond_3
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 22773
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22776
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 22777
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 22778
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->j:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 22650
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 29842
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    .line 28845
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$l;)Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 30842
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$l$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$l$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 27500
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    return-object v0
.end method
