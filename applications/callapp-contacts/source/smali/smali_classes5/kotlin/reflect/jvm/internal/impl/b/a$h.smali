.class public final Lkotlin/reflect/jvm/internal/impl/b/a$h;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/k;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lkotlin/reflect/jvm/internal/impl/b/a$h;


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

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

.field private final o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private p:I

.field private q:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14520
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$h$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 16114
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;-><init>(Z)V

    .line 16115
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14356
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 14819
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    .line 14919
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->s:I

    .line 14357
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q()V

    .line 14359
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 14361
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x400

    const/16 v6, 0x100

    const/16 v7, 0x20

    if-nez v3, :cond_11

    .line 14367
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    .line 14373
    invoke-virtual {p0, p1, v2, p2, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    goto/16 :goto_3

    .line 14482
    :sswitch_0
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_1

    .line 14483
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v9

    .line 14485
    :cond_1
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$d;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    if-eqz v9, :cond_2

    .line 14487
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    .line 14488
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$d;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 14490
    :cond_2
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/2addr v8, v6

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    goto :goto_0

    .line 14468
    :sswitch_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14469
    invoke-virtual {p1, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v8

    and-int/lit16 v9, v4, 0x400

    if-eq v9, v5, :cond_3

    .line 14470
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v9

    if-lez v9, :cond_3

    .line 14471
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    .line 14474
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v9

    if-lez v9, :cond_4

    .line 14475
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 23348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v10

    .line 14475
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14477
    :cond_4
    invoke-virtual {p1, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :sswitch_2
    and-int/lit16 v8, v4, 0x400

    if-eq v8, v5, :cond_5

    .line 14461
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    or-int/lit16 v4, v4, 0x400

    .line 14464
    :cond_5
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 14464
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14448
    :sswitch_3
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v10, 0x80

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_6

    .line 14449
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 22006
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    move-result-object v9

    .line 14451
    :cond_6
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$s;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    if-eqz v9, :cond_7

    .line 14453
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s$a;

    .line 14454
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$s$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 14456
    :cond_7
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/2addr v8, v10

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    goto/16 :goto_0

    .line 14442
    :sswitch_4
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/2addr v8, v1

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    .line 21348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14443
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    goto/16 :goto_0

    .line 14437
    :sswitch_5
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    .line 20348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14438
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    goto/16 :goto_0

    .line 14432
    :sswitch_6
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    .line 19348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14433
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    goto/16 :goto_0

    :sswitch_7
    and-int/lit16 v8, v4, 0x100

    if-eq v8, v6, :cond_8

    .line 14425
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    or-int/lit16 v4, v4, 0x100

    .line 14428
    :cond_8
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v9, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14412
    :sswitch_8
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_9

    .line 14413
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 19188
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v9

    .line 14415
    :cond_9
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v9, :cond_a

    .line 14417
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 14418
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14420
    :cond_a
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/2addr v8, v7

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v8, v4, 0x20

    if-eq v8, v7, :cond_b

    .line 14404
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 14407
    :cond_b
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v9, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 14391
    :sswitch_a
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v10, 0x8

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_c

    .line 14392
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18188
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v9

    .line 14394
    :cond_c
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v9, :cond_d

    .line 14396
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 14397
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v8

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14399
    :cond_d
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/2addr v8, v10

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    goto/16 :goto_0

    .line 14385
    :sswitch_b
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    .line 17348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14386
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    goto/16 :goto_0

    .line 14380
    :sswitch_c
    iget v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    .line 16348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 14381
    iput v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I
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

    .line 14498
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 25057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 14498
    throw p2

    :catch_1
    move-exception p1

    .line 24057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 14496
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v7, :cond_e

    .line 14502
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    :cond_e
    and-int/lit16 p2, v4, 0x100

    if-ne p2, v6, :cond_f

    .line 14505
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    :cond_f
    and-int/lit16 p2, v4, 0x400

    if-ne p2, v5, :cond_10

    .line 14508
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 14511
    :cond_10
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14515
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 14517
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->w()V

    throw p1

    :cond_11
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v7, :cond_12

    .line 14502
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    :cond_12
    and-int/lit16 p1, v4, 0x100

    if-ne p1, v6, :cond_13

    .line 14505
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    :cond_13
    and-int/lit16 p1, v4, 0x400

    if-ne p1, v5, :cond_14

    .line 14508
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 14511
    :cond_14
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 14515
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_6

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 14517
    :goto_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->w()V

    return-void

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
        0xf2 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14331
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            "*>;)V"
        }
    .end annotation

    .line 14338
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 14819
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    .line 14919
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->s:I

    .line 16123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 14339
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 14331
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 14341
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 14819
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    .line 14919
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->s:I

    .line 14341
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;
    .locals 0

    .line 14331
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$h;
    .locals 1

    .line 14345
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15020
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->b(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$s;)Lkotlin/reflect/jvm/internal/impl/b/a$s;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;
    .locals 0

    .line 14331
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Ljava/util/List;
    .locals 0

    .line 14331
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14331
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 14331
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    return p1
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/b/a$h;I)I
    .locals 0

    .line 14331
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    return p1
.end method

.method private q()V
    .locals 2

    const/4 v0, 0x6

    .line 14806
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    .line 14807
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    const/4 v0, 0x0

    .line 14808
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 14809
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14810
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    .line 14811
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    .line 14812
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14813
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    .line 14814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    .line 14815
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->a()Lkotlin/reflect/jvm/internal/impl/b/a$s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 14816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 14817
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a()Lkotlin/reflect/jvm/internal/impl/b/a$d;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14875
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f()I

    .line 14877
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 14879
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 14880
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    invoke-virtual {p1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 14882
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 14883
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 14885
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 14886
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 14888
    :goto_0
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 14889
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14891
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x5

    .line 14892
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_4
    const/4 v4, 0x0

    .line 14894
    :goto_1
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    const/4 v6, 0x6

    .line 14895
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v6, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14897
    :cond_5
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_6

    const/4 v4, 0x7

    .line 14898
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    invoke-virtual {p1, v4, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 14900
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v6, 0x40

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7

    .line 14901
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    invoke-virtual {p1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 14903
    :cond_7
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    const/16 v2, 0x9

    .line 14904
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 14906
    :cond_8
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1e

    .line 14907
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 14909
    :cond_9
    :goto_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0x1f

    .line 14910
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14912
    :cond_a
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 14913
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-virtual {p1, v5, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    :cond_b
    const/16 v1, 0x4a38

    .line 14915
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 14916
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;"
        }
    .end annotation

    .line 14532
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 14557
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14587
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14821
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 14825
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14826
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    .line 14829
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25623
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14830
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14831
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 25660
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 25666
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    .line 14836
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 14837
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14841
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25688
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 14842
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14843
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    :cond_6
    const/4 v0, 0x0

    .line 25725
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 25731
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    .line 14848
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v3

    if-nez v3, :cond_7

    .line 14849
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14853
    :cond_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25753
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    .line 14854
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$s;->e()Z

    move-result v0

    if-nez v0, :cond_9

    .line 14855
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    .line 14859
    :cond_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25802
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 14860
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e()Z

    move-result v0

    if-nez v0, :cond_a

    .line 14861
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    .line 14865
    :cond_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->x()Z

    move-result v0

    if-nez v0, :cond_b

    .line 14866
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v2

    .line 14869
    :cond_b
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->q:B

    return v1
.end method

.method public final f()I
    .locals 9

    .line 14921
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14925
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 14926
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->c:I

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14929
    :goto_0
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 14930
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 14933
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v6, 0x8

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    .line 14934
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    const/4 v4, 0x0

    .line 14937
    :goto_1
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 14938
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->g:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v5, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14941
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x5

    .line 14942
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->h:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_5
    const/4 v4, 0x0

    .line 14945
    :goto_2
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    const/4 v7, 0x6

    .line 14946
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->j:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v7, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 14949
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v7, 0x10

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_7

    const/4 v4, 0x7

    .line 14950
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->f:I

    invoke-static {v4, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 14953
    :cond_7
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v7, 0x40

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8

    .line 14954
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->i:I

    invoke-static {v6, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 14957
    :cond_8
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_9

    const/16 v2, 0x9

    .line 14958
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->b:I

    invoke-static {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14961
    :cond_9
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    const/16 v2, 0x1e

    .line 14962
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->k:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    invoke-static {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    const/4 v2, 0x0

    .line 14967
    :goto_3
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 14968
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    add-int/2addr v0, v2

    .line 26767
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->l:Ljava/util/List;

    .line 14972
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 14974
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 14975
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->m:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    invoke-static {v5, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14978
    :cond_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 14979
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->o:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 14980
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->s:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 14602
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 30044
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    .line 29047
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 31044
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$h$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$h$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 27349
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->n:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 14617
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14632
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14682
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14697
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14747
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

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

    .line 14796
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;->p:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
