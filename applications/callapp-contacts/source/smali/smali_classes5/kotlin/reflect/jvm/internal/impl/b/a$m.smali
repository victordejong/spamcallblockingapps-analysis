.class public final Lkotlin/reflect/jvm/internal/impl/b/a$m;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/n;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lkotlin/reflect/jvm/internal/impl/b/a$m;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public f:I

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public i:I

.field public j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

.field public k:I

.field public l:I

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private p:I

.field private q:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16489
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$m$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 17988
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;-><init>(Z)V

    .line 17989
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->r()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16339
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 16794
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    .line 16882
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->s:I

    .line 16340
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->r()V

    .line 16342
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 16344
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x800

    const/16 v6, 0x20

    if-nez v3, :cond_d

    .line 16350
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    .line 16356
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    goto/16 :goto_3

    .line 16453
    :sswitch_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16454
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v7

    and-int/lit16 v8, v4, 0x800

    if-eq v8, v5, :cond_1

    .line 16455
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_1

    .line 16456
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x800

    .line 16459
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_2

    .line 16460
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    .line 29348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 16460
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16462
    :cond_2
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :sswitch_1
    and-int/lit16 v7, v4, 0x800

    if-eq v7, v5, :cond_3

    .line 16446
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    or-int/lit16 v4, v4, 0x800

    .line 16449
    :cond_3
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    .line 28348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 16449
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16440
    :sswitch_2
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 27348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16441
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    goto :goto_0

    .line 16435
    :sswitch_3
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 26348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16436
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    goto :goto_0

    .line 16430
    :sswitch_4
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 25348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16431
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    goto/16 :goto_0

    .line 16425
    :sswitch_5
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 24348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16426
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    goto/16 :goto_0

    .line 16420
    :sswitch_6
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 23348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16421
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    goto/16 :goto_0

    .line 16408
    :sswitch_7
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v9, 0x80

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_4

    .line 16409
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 22470
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v8

    .line 16411
    :cond_4
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    if-eqz v8, :cond_5

    .line 16413
    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 16414
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 16416
    :cond_5
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/2addr v7, v9

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    goto/16 :goto_0

    .line 16395
    :sswitch_8
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_6

    .line 16396
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 22188
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v8

    .line 16398
    :cond_6
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v8, :cond_7

    .line 16400
    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 16401
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16403
    :cond_7
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/2addr v7, v6

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v6, :cond_8

    .line 16387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 16390
    :cond_8
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 16374
    :sswitch_a
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v9, 0x8

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_9

    .line 16375
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 21188
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v8

    .line 16377
    :cond_9
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v8, :cond_a

    .line 16379
    invoke-virtual {v8, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 16380
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16382
    :cond_a
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/2addr v7, v9

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    goto/16 :goto_0

    .line 16368
    :sswitch_b
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 20348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16369
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    goto/16 :goto_0

    .line 16363
    :sswitch_c
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    .line 19348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 16364
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_d
    const/4 v3, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v5, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 16470
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 31057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 16470
    throw p2

    :catch_1
    move-exception p1

    .line 30057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 16468
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v6, :cond_b

    .line 16474
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    :cond_b
    and-int/lit16 p2, v4, 0x800

    if-ne p2, v5, :cond_c

    .line 16477
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    .line 16480
    :cond_c
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16484
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 16486
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->w()V

    throw p1

    :cond_d
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v6, :cond_e

    .line 16474
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    :cond_e
    and-int/lit16 p1, v4, 0x800

    if-ne p1, v5, :cond_f

    .line 16477
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    .line 16480
    :cond_f
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16484
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 16486
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->w()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x2a -> :sswitch_8
        0x32 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x48 -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xfa -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16314
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$m;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            "*>;)V"
        }
    .end annotation

    .line 16321
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 16794
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    .line 16882
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->s:I

    .line 19123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 16322
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 16314
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$m;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 16324
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 16794
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    .line 16882
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->s:I

    .line 16324
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 0

    .line 16314
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$m;
    .locals 1

    .line 16328
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 16314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t;
    .locals 0

    .line 16314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 0

    .line 16314
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 16314
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 16314
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    return p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    return p1
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    return p1
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    return p1
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/b/a$m;I)I
    .locals 0

    .line 16314
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    return p1
.end method

.method private r()V
    .locals 2

    const/16 v0, 0x206

    .line 16781
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    const/16 v0, 0x806

    .line 16782
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    const/4 v0, 0x0

    .line 16783
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    .line 16784
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16785
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    .line 16786
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    .line 16787
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16788
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    .line 16789
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 16790
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    .line 16791
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    .line 16792
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16838
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f()I

    .line 16840
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 16842
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 16843
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    invoke-virtual {p1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16845
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 16846
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16848
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 16849
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 16851
    :goto_0
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 16852
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16854
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    .line 16855
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 16857
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x6

    .line 16858
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 16860
    :cond_5
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x7

    .line 16861
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    invoke-virtual {p1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16863
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 16864
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16866
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_8

    const/16 v2, 0x9

    .line 16867
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16869
    :cond_8
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    const/16 v2, 0xa

    .line 16870
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16872
    :cond_9
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    const/16 v2, 0xb

    .line 16873
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 16875
    :cond_a
    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0x1f

    .line 16876
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    const/16 v1, 0x4a38

    .line 16878
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 16879
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;"
        }
    .end annotation

    .line 16501
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 16527
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

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

    .line 16558
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

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

    .line 16796
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 16800
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16801
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    .line 16804
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31594
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16805
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16806
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 31631
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 31637
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 16811
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 16812
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16816
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31659
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 16817
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 16818
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    .line 16822
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31689
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 16823
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16824
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    .line 16828
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->x()Z

    move-result v0

    if-nez v0, :cond_8

    .line 16829
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v2

    .line 16832
    :cond_8
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->q:B

    return v1
.end method

.method public final f()I
    .locals 8

    .line 16884
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 16888
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 16889
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->c:I

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 16892
    :goto_0
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 16893
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->d:I

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16896
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    .line 16897
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    const/4 v4, 0x0

    .line 16900
    :goto_1
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 16901
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v5, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16904
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    .line 16905
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    .line 16908
    :cond_5
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x6

    .line 16909
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->j:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    .line 16912
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x7

    .line 16913
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->k:I

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16916
    :cond_7
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x200

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 16917
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->l:I

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16920
    :cond_8
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_9

    const/16 v4, 0x9

    .line 16921
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->f:I

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16924
    :cond_9
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v5, 0x40

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_a

    const/16 v4, 0xa

    .line 16925
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->i:I

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 16928
    :cond_a
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_b

    const/16 v2, 0xb

    .line 16929
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    invoke-static {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    const/4 v2, 0x0

    .line 16934
    :goto_2
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 16935
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v0, v2

    .line 31757
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->m:Ljava/util/List;

    .line 16939
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 16941
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 16942
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 16943
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->s:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 16573
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

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

    .line 35007
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    .line 34010
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 36007
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$m$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$m$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 32332
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->n:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 16588
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 16603
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    .line 16653
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 2

    .line 16668
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 16683
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    .line 16710
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 16737
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;->p:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
