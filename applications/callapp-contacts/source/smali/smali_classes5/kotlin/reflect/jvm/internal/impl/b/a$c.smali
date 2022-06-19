.class public final Lkotlin/reflect/jvm/internal/impl/b/a$c;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$c;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/f;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/b/a$c;


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13483
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$c$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$c$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 14152
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$c;-><init>(Z)V

    .line 14153
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13402
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 13602
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    .line 13641
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->i:I

    .line 13403
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d()V

    .line 13405
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 13407
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez v3, :cond_c

    .line 13413
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    if-eqz v7, :cond_9

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    const/16 v8, 0x12

    if-eq v7, v8, :cond_6

    const/16 v8, 0xf8

    if-eq v7, v8, :cond_4

    const/16 v8, 0xfa

    if-eq v7, v8, :cond_1

    .line 13419
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 13447
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 13448
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x4

    if-eq v8, v6, :cond_2

    .line 13449
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_2

    .line 13450
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 13453
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_3

    .line 13454
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    .line 17348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 13454
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13456
    :cond_3
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v7, v4, 0x4

    if-eq v7, v6, :cond_5

    .line 13440
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x4

    .line 13443
    :cond_5
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    .line 16348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 13443
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_7

    .line 13432
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 13435
    :cond_7
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 13426
    :cond_8
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    .line 15348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 13427
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 13464
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 19057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 13464
    throw p2

    :catch_1
    move-exception p1

    .line 18057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 13462
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    .line 13468
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    :cond_a
    and-int/lit8 p2, v4, 0x4

    if-ne p2, v6, :cond_b

    .line 13471
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    .line 13474
    :cond_b
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13478
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 13480
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->w()V

    throw p1

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    .line 13468
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    :cond_d
    and-int/lit8 p1, v4, 0x4

    if-ne p1, v6, :cond_e

    .line 13471
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    .line 13474
    :cond_e
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13478
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 13480
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13377
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$c;",
            "*>;)V"
        }
    .end annotation

    .line 13384
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 13602
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    .line 13641
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->i:I

    .line 15123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 13385
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 13377
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 13387
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 13602
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    .line 13641
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->i:I

    .line 13387
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$c;I)I
    .locals 0

    .line 13377
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$c;)Ljava/util/List;
    .locals 0

    .line 13377
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13377
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$c;
    .locals 1

    .line 13391
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$c;I)I
    .locals 0

    .line 13377
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$c;)Ljava/util/List;
    .locals 0

    .line 13377
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 13377
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 13377
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x6

    .line 13598
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 13599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    .line 13600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

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

    .line 13624
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f()I

    .line 13626
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 13628
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 13629
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 13631
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x2

    .line 13632
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13634
    :cond_1
    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/16 v2, 0x1f

    .line 13635
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v1, 0x4a38

    .line 13637
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 13638
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$c;",
            ">;"
        }
    .end annotation

    .line 13495
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 13512
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 13604
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 19547
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 19553
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 13609
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13610
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13614
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->x()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13615
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    return v2

    .line 13618
    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->h:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 13643
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 13647
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 13648
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 13651
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v1, v3, :cond_2

    .line 13652
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 13657
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 13658
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v1

    .line 19574
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->d:Ljava/util/List;

    .line 13662
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 13664
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 13665
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 13666
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->i:I

    return v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 22730
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$c$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$c$a;

    move-result-object v0

    .line 21733
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$c;)Lkotlin/reflect/jvm/internal/impl/b/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 23730
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$c$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 20395
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    return-object v0
.end method
