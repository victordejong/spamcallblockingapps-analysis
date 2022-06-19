.class public final Lkotlin/reflect/jvm/internal/impl/b/a$e;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$e$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$e$c;,
        Lkotlin/reflect/jvm/internal/impl/b/a$e$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/b/a$e;


# instance fields
.field b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

.field c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

.field d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

.field private final f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$g;",
            ">;"
        }
    .end annotation
.end field

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23979
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 24813
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;-><init>(Z)V

    .line 24814
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->e:Lkotlin/reflect/jvm/internal/impl/b/a$e;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23890
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 24255
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    .line 24295
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->j:I

    .line 23891
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->k()V

    .line 23893
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 23895
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_c

    .line 23901
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v7, 0x8

    if-eq v6, v7, :cond_8

    const/16 v7, 0x12

    if-eq v6, v7, :cond_6

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_3

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    .line 23907
    invoke-virtual {p0, p1, v2, p2, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 27570
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 23948
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$e$c;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    move-result-object v8

    if-nez v8, :cond_2

    .line 23950
    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 23951
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto :goto_0

    .line 23953
    :cond_2
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    .line 23954
    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 23935
    iget v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_4

    .line 23936
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 26582
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    move-result-object v6

    .line 23938
    :cond_4
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    if-eqz v6, :cond_5

    .line 23940
    invoke-virtual {v6, v7}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g$a;

    .line 23941
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/a$g$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v6

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 23943
    :cond_5
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    or-int/2addr v6, v5

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    goto :goto_0

    :cond_6
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_7

    .line 23927
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 23930
    :cond_7
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26570
    :cond_8
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 23915
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/b/a$e$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    move-result-object v8

    if-nez v8, :cond_9

    .line 23917
    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 23918
    invoke-virtual {v2, v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_0

    .line 23920
    :cond_9
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    or-int/2addr v6, v1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    .line 23921
    iput-object v8, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 23963
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 29057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 23963
    throw p2

    :catch_1
    move-exception p1

    .line 28057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 23961
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_b

    .line 23967
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    .line 23970
    :cond_b
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23974
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 23976
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->w()V

    throw p1

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    .line 23967
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    .line 23970
    :cond_d
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 23974
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 23976
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23866
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 23872
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 24255
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    .line 24295
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->j:I

    .line 26123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 23873
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 23866
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 23875
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 24255
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    .line 24295
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->j:I

    .line 23875
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;I)I
    .locals 0

    .line 23866
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Ljava/util/List;
    .locals 0

    .line 23866
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23866
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$e$b;)Lkotlin/reflect/jvm/internal/impl/b/a$e$b;
    .locals 0

    .line 23866
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$e$c;)Lkotlin/reflect/jvm/internal/impl/b/a$e$c;
    .locals 0

    .line 23866
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$e;
    .locals 1

    .line 23879
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->e:Lkotlin/reflect/jvm/internal/impl/b/a$e;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$e;Lkotlin/reflect/jvm/internal/impl/b/a$g;)Lkotlin/reflect/jvm/internal/impl/b/a$g;
    .locals 0

    .line 23866
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 23866
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private k()V
    .locals 1

    .line 24250
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$b;->RETURNS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    .line 24251
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    .line 24252
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->a()Lkotlin/reflect/jvm/internal/impl/b/a$g;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24253
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e$c;->AT_MOST_ONCE:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

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

    .line 24279
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f()I

    .line 24280
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 24281
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$b;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    :cond_0
    const/4 v0, 0x0

    .line 24283
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 24284
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24286
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 24287
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 24289
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 24290
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$c;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 24292
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$e;",
            ">;"
        }
    .end annotation

    .line 23991
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 24165
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

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

    .line 24220
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

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

    .line 24257
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 29193
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 29199
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24262
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 24263
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24267
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29231
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    .line 24268
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$g;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 24269
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    return v2

    .line 24273
    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->i:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 24297
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 24301
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 24302
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$e$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$b;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 24305
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 24306
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->h:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24309
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 24310
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->c:Lkotlin/reflect/jvm/internal/impl/b/a$g;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24313
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 24314
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->d:Lkotlin/reflect/jvm/internal/impl/b/a$e$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$e$c;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24317
    :cond_4
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 24318
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->j:I

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 24240
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->g:I

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

    .line 31382
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object v0

    .line 30385
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$e;)Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 32382
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$e$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 32883
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$e;->e:Lkotlin/reflect/jvm/internal/impl/b/a$e;

    return-object v0
.end method
