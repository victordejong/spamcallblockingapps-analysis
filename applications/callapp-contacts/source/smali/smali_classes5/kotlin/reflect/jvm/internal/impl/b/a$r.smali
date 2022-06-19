.class public final Lkotlin/reflect/jvm/internal/impl/b/a$r;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$r$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/u;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lkotlin/reflect/jvm/internal/impl/b/a$r;


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
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

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7378
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$r$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 8251
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;-><init>(Z)V

    .line 8252
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->h:Lkotlin/reflect/jvm/internal/impl/b/a$r;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7275
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 7575
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k:I

    .line 7585
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    .line 7645
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->m:I

    .line 7276
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l()V

    .line 7278
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 7280
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x10

    const/16 v6, 0x20

    if-nez v3, :cond_10

    .line 7286
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    if-eqz v7, :cond_d

    const/16 v8, 0x8

    if-eq v7, v8, :cond_c

    if-eq v7, v5, :cond_b

    const/16 v9, 0x18

    if-eq v7, v9, :cond_a

    if-eq v7, v6, :cond_8

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_6

    const/16 v8, 0x30

    if-eq v7, v8, :cond_4

    const/16 v8, 0x32

    if-eq v7, v8, :cond_1

    .line 7292
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 7342
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 7343
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v7

    and-int/lit8 v8, v4, 0x20

    if-eq v8, v6, :cond_2

    .line 7344
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_2

    .line 7345
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 7348
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v8

    if-lez v8, :cond_3

    .line 7349
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 12348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 7349
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7351
    :cond_3
    invoke-virtual {p1, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v6, :cond_5

    .line 7335
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 7338
    :cond_5
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 11348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 7338
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v7, v4, 0x10

    if-eq v7, v5, :cond_7

    .line 7327
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    or-int/lit8 v4, v4, 0x10

    .line 7330
    :cond_7
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10570
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v9

    .line 7315
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    move-result-object v10

    if-nez v10, :cond_9

    .line 7317
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 7318
    invoke-virtual {v2, v9}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_0

    .line 7320
    :cond_9
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    or-int/2addr v7, v8

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    .line 7321
    iput-object v10, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    goto/16 :goto_0

    .line 7309
    :cond_a
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    .line 7310
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b()Z

    move-result v7

    iput-boolean v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d:Z

    goto/16 :goto_0

    .line 7304
    :cond_b
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    .line 10348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 7305
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    goto/16 :goto_0

    .line 7299
    :cond_c
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    .line 9348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 7300
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 7359
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 14057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 7359
    throw p2

    :catch_1
    move-exception p1

    .line 13057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 7357
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x10

    if-ne p2, v5, :cond_e

    .line 7363
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v6, :cond_f

    .line 7366
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 7369
    :cond_f
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7373
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 7375
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->w()V

    throw p1

    :cond_10
    and-int/lit8 p1, v4, 0x10

    if-ne p1, v5, :cond_11

    .line 7363
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v6, :cond_12

    .line 7366
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 7369
    :cond_12
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7373
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 7375
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7250
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            "*>;)V"
        }
    .end annotation

    .line 7257
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 7575
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k:I

    .line 7585
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    .line 7645
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->m:I

    .line 9123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 7258
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 7250
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$r;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 7260
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 7575
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k:I

    .line 7585
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    .line 7645
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->m:I

    .line 7260
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I
    .locals 0

    .line 7250
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;
    .locals 0

    .line 7250
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7250
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Lkotlin/reflect/jvm/internal/impl/b/a$r$b;)Lkotlin/reflect/jvm/internal/impl/b/a$r$b;
    .locals 0

    .line 7250
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$r;
    .locals 1

    .line 7264
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->h:Lkotlin/reflect/jvm/internal/impl/b/a$r;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Z)Z
    .locals 0

    .line 7250
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d:Z

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I
    .locals 0

    .line 7250
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Ljava/util/List;
    .locals 0

    .line 7250
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$r;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7250
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$r;I)I
    .locals 0

    .line 7250
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 7250
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    .line 7578
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    .line 7579
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    .line 7580
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d:Z

    .line 7581
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->INV:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    .line 7582
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    .line 7583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

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

    .line 7615
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f()I

    .line 7617
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 7619
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 7620
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 7622
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7623
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 7625
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 7626
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d:Z

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Z)V

    .line 7628
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 7629
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7631
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x5

    .line 7632
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14561
    :cond_4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 7634
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x32

    .line 7635
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 7636
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k:I

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 7638
    :cond_5
    :goto_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 7639
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/16 v1, 0x3e8

    .line 7641
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 7642
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;"
        }
    .end annotation

    .line 7390
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 7465
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

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

    .line 7480
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

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

    .line 7587
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 7591
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7592
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    return v2

    .line 7595
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7596
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 14538
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 14544
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 7600
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 7601
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7605
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->x()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7606
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    return v2

    .line 7609
    :cond_6
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->l:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 7647
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7651
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 7652
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7655
    :goto_0
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 7656
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c:I

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 7659
    :cond_2
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 14587
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 7663
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 7664
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->e:Lkotlin/reflect/jvm/internal/impl/b/a$r$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$r$b;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    const/4 v1, 0x0

    .line 7667
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    .line 7668
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 7673
    :goto_2
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 7674
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

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

    .line 15561
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->g:Ljava/util/List;

    .line 7678
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 7680
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 7683
    :cond_7
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->k:I

    .line 7685
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->z()I

    move-result v1

    add-int/2addr v0, v1

    .line 7686
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 7687
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->m:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 7495
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

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

    .line 18751
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    .line 17754
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$r;)Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 19751
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$r$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$r$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 16268
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->h:Lkotlin/reflect/jvm/internal/impl/b/a$r;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 7510
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$r;->j:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
