.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;,
        Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private j:I

.field private k:I

.field private l:I

.field private m:B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 470
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 1556
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;-><init>(Z)V

    .line 1557
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->h:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 353
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 733
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k:I

    .line 771
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l:I

    .line 781
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m:B

    .line 823
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->n:I

    .line 354
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m()V

    .line 356
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 358
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x20

    const/16 v6, 0x10

    if-nez v3, :cond_13

    .line 364
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    if-eqz v7, :cond_10

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    if-eq v7, v6, :cond_e

    const/16 v9, 0x18

    if-eq v7, v9, :cond_c

    if-eq v7, v5, :cond_a

    const/16 v8, 0x22

    if-eq v7, v8, :cond_7

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_2

    const/16 v8, 0x32

    if-eq v7, v8, :cond_1

    .line 370
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 441
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v7

    .line 442
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    .line 443
    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 429
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x20

    if-eq v8, v5, :cond_3

    .line 430
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_3

    .line 431
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 434
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_4

    .line 435
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 7348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 435
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :cond_5
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v5, :cond_6

    .line 421
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 424
    :cond_6
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 6348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 424
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 407
    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 408
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x10

    if-eq v8, v6, :cond_8

    .line 409
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_8

    .line 410
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    .line 413
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_9

    .line 414
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    .line 5348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 414
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 416
    :cond_9
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v7, v4, 0x10

    if-eq v7, v6, :cond_b

    .line 400
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    .line 403
    :cond_b
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    .line 4348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 403
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3570
    :cond_c
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 388
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    move-result-object v10

    if-nez v10, :cond_d

    .line 390
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 391
    invoke-virtual {v2, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_0

    .line 393
    :cond_d
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    or-int/2addr v7, v8

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    .line 394
    iput-object v10, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    goto/16 :goto_0

    .line 382
    :cond_e
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    .line 3348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 383
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    goto/16 :goto_0

    .line 377
    :cond_f
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    .line 2348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 378
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 451
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 9057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 451
    throw p2

    :catch_1
    move-exception p1

    .line 8057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 449
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x10

    if-ne p2, v6, :cond_11

    .line 455
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v5, :cond_12

    .line 458
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 461
    :cond_12
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 465
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 467
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->w()V

    throw p1

    :cond_13
    and-int/lit8 p1, v4, 0x10

    if-ne p1, v6, :cond_14

    .line 455
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    :cond_14
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v5, :cond_15

    .line 458
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 461
    :cond_15
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 465
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 467
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 335
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 733
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k:I

    .line 771
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l:I

    .line 781
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m:B

    .line 823
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->n:I

    .line 2123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 336
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 338
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 733
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k:I

    .line 771
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l:I

    .line 781
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m:B

    .line 823
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->n:I

    .line 338
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I
    .locals 0

    .line 329
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/lang/Object;
    .locals 0

    .line 329
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 329
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 329
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
    .locals 0

    .line 329
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
    .locals 1

    .line 342
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->h:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I
    .locals 0

    .line 329
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;
    .locals 0

    .line 329
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 329
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;I)I
    .locals 0

    .line 329
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Ljava/util/List;
    .locals 0

    .line 329
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 329
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private l()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 2

    .line 659
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    .line 660
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 661
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v0

    .line 664
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    return-object v0

    .line 667
    :cond_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object v0
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    .line 774
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I

    const/4 v0, 0x0

    .line 775
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    const-string v0, ""

    .line 776
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->d:Ljava/lang/Object;

    .line 777
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 778
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    .line 779
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f()I

    .line 794
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 795
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 797
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 798
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 800
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 801
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 9707
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    .line 803
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x22

    .line 804
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 805
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k:I

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 807
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 808
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9747
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 810
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x2a

    .line 811
    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 812
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l:I

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 814
    :cond_5
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 815
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    :cond_6
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x6

    .line 818
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    .line 820
    :cond_7
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;",
            ">;"
        }
    .end annotation

    .line 482
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 581
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

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

    .line 604
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

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
    .locals 2

    .line 783
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 787
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->m:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 825
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 829
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 830
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 833
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 834
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->c:I

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 838
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->getNumber()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 843
    :goto_1
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 844
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v3

    .line 10707
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->f:Ljava/util/List;

    .line 848
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 850
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    :cond_5
    iput v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->k:I

    const/4 v1, 0x0

    .line 857
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 858
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

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

    :cond_6
    add-int/2addr v0, v1

    .line 10747
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->g:Ljava/util/List;

    .line 862
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 864
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 867
    :cond_7
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l:I

    .line 869
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 870
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->l()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    :cond_8
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 874
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->n:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 627
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

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

    .line 12938
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object v0

    .line 11941
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 13938
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 14346
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->h:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 681
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->j:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
