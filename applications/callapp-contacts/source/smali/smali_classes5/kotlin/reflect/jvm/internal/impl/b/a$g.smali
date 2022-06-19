.class public final Lkotlin/reflect/jvm/internal/impl/b/a$g;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$g$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$g$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lkotlin/reflect/jvm/internal/impl/b/a$g;


# instance fields
.field b:I

.field c:I

.field d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

.field e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field f:I

.field private final h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25098
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$g$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 26424
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;-><init>(Z)V

    .line 26425
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->g:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24995
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 25423
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    .line 25478
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m:I

    .line 24996
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m()V

    .line 24998
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 25000
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/16 v5, 0x40

    const/16 v6, 0x20

    if-nez v3, :cond_10

    .line 25006
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v7

    if-eqz v7, :cond_d

    const/16 v8, 0x8

    if-eq v7, v8, :cond_c

    const/16 v9, 0x10

    if-eq v7, v9, :cond_b

    const/16 v10, 0x18

    if-eq v7, v10, :cond_9

    const/16 v10, 0x22

    if-eq v7, v10, :cond_6

    const/16 v8, 0x28

    if-eq v7, v8, :cond_5

    const/16 v8, 0x32

    if-eq v7, v8, :cond_3

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_1

    .line 25012
    invoke-virtual {p0, p1, v2, p2, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v7, v4, 0x40

    if-eq v7, v5, :cond_2

    .line 25068
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    or-int/lit8 v4, v4, 0x40

    .line 25071
    :cond_2
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v7, v4, 0x20

    if-eq v7, v6, :cond_4

    .line 25060
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    or-int/lit8 v4, v4, 0x20

    .line 25063
    :cond_4
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v8, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25054
    :cond_5
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    or-int/2addr v7, v9

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    .line 29348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 25055
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    .line 25042
    iget v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_7

    .line 25043
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 29188
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v7

    .line 25045
    :cond_7
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v9, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v7, :cond_8

    .line 25047
    invoke-virtual {v7, v9}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 25048
    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v7

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25050
    :cond_8
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    or-int/2addr v7, v8

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    goto/16 :goto_0

    .line 28570
    :cond_9
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 25030
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$g$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    move-result-object v9

    if-nez v9, :cond_a

    .line 25032
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 25033
    invoke-virtual {v2, v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_0

    .line 25035
    :cond_a
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    .line 25036
    iput-object v9, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    goto/16 :goto_0

    .line 25024
    :cond_b
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    .line 28348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 25025
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    goto/16 :goto_0

    .line 25019
    :cond_c
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    or-int/2addr v7, v1

    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    .line 27348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 25020
    iput v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I
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

    .line 25079
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 31057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 25079
    throw p2

    :catch_1
    move-exception p1

    .line 30057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 25077
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x20

    if-ne p2, v6, :cond_e

    .line 25083
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v4, 0x40

    if-ne p2, v5, :cond_f

    .line 25086
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    .line 25089
    :cond_f
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25093
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 25095
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->w()V

    throw p1

    :cond_10
    and-int/lit8 p1, v4, 0x20

    if-ne p1, v6, :cond_11

    .line 25083
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v4, 0x40

    if-ne p1, v5, :cond_12

    .line 25086
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    .line 25089
    :cond_12
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 25093
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 25095
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24971
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$g;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 24977
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 25423
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    .line 25478
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m:I

    .line 27123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 24978
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 24971
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$g;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 24980
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 25423
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    .line 25478
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m:I

    .line 24980
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I
    .locals 0

    .line 24971
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24971
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;
    .locals 1

    .line 31577
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    .line 25580
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Lkotlin/reflect/jvm/internal/impl/b/a$g$b;)Lkotlin/reflect/jvm/internal/impl/b/a$g$b;
    .locals 0

    .line 24971
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$g;
    .locals 1

    .line 24984
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->g:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$g;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 24971
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I
    .locals 0

    .line 24971
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;
    .locals 0

    .line 24971
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 24971
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I
    .locals 0

    .line 24971
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Ljava/util/List;
    .locals 0

    .line 24971
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$g;I)I
    .locals 0

    .line 24971
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 24971
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private m()V
    .locals 2

    const/4 v0, 0x0

    .line 25415
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I

    .line 25416
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    .line 25417
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$g$b;->TRUE:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    .line 25418
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25419
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    .line 25420
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    .line 25421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

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

    .line 25453
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f()I

    .line 25454
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 25455
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 25457
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 25458
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 25460
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 25461
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$g$b;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 25463
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 25464
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 25466
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 25467
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25469
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 25470
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25472
    :cond_5
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 25473
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25475
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation

    .line 25110
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 25190
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

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

    .line 25215
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

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

    .line 25425
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 25429
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31266
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 25430
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25431
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 31321
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 31333
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 25436
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 25437
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 31386
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 31398
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 25442
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v3

    if-nez v3, :cond_5

    .line 25443
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25447
    :cond_6
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->l:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 25480
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25484
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 25485
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 25488
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 25489
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->c:I

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25492
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 25493
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->d:Lkotlin/reflect/jvm/internal/impl/b/a$g$b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$g$b;->getNumber()I

    move-result v4

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25496
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    .line 25497
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25500
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 25501
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->f:I

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    const/4 v1, 0x0

    .line 25504
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x6

    .line 25505
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25508
    :cond_6
    :goto_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/4 v1, 0x7

    .line 25509
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25512
    :cond_7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 25513
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->m:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 25235
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

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

    .line 33577
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    .line 32580
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 34577
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 34988
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->g:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 25255
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

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

    .line 25275
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$g;->i:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
