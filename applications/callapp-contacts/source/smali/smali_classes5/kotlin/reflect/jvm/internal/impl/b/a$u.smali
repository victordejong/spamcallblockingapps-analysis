.class public final Lkotlin/reflect/jvm/internal/impl/b/a$u;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$u$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$u$c;,
        Lkotlin/reflect/jvm/internal/impl/b/a$u$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lkotlin/reflect/jvm/internal/impl/b/a$u;


# instance fields
.field public b:I

.field public c:I

.field public d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

.field public e:I

.field public f:I

.field public g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

.field private final i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private j:I

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21057
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 21940
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;-><init>(Z)V

    .line 21941
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->n()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20972
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 21357
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k:B

    .line 21391
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l:I

    .line 20973
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->n()V

    .line 20975
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 20977
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_a

    .line 20983
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    const/16 v6, 0x10

    if-eq v4, v6, :cond_7

    const/16 v7, 0x18

    if-eq v4, v7, :cond_5

    const/16 v7, 0x20

    if-eq v4, v7, :cond_4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_3

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 20989
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 25570
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 21029
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    move-result-object v6

    if-nez v6, :cond_2

    .line 21031
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 21032
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto :goto_0

    .line 21034
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/2addr v4, v7

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 21035
    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    goto :goto_0

    .line 21023
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/2addr v4, v6

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 25348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 21024
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    goto :goto_0

    .line 21018
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 24348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 21019
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    goto :goto_0

    .line 23570
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 21007
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    move-result-object v6

    if-nez v6, :cond_6

    .line 21009
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 21010
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto :goto_0

    .line 21012
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 21013
    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    goto :goto_0

    .line 21001
    :cond_7
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 23348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 21002
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    goto :goto_0

    .line 20996
    :cond_8
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 20997
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21044
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 27057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 21044
    throw p2

    :catch_1
    move-exception p1

    .line 26057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 21042
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21048
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21052
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 21054
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->w()V

    throw p1

    .line 21048
    :cond_a
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21052
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 21054
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20948
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$u;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 20954
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 21357
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k:B

    .line 21391
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l:I

    .line 22123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 20955
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 20948
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$u;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 20957
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 21357
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k:B

    .line 21391
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l:I

    .line 20957
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I
    .locals 0

    .line 20948
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$u;Lkotlin/reflect/jvm/internal/impl/b/a$u$b;)Lkotlin/reflect/jvm/internal/impl/b/a$u$b;
    .locals 0

    .line 20948
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$u;Lkotlin/reflect/jvm/internal/impl/b/a$u$c;)Lkotlin/reflect/jvm/internal/impl/b/a$u$c;
    .locals 0

    .line 20948
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$u;
    .locals 1

    .line 20961
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 20948
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I
    .locals 0

    .line 20948
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I
    .locals 0

    .line 20948
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I
    .locals 0

    .line 20948
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    return p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$u;I)I
    .locals 0

    .line 20948
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    return p1
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    .line 21350
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    .line 21351
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    .line 21352
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->ERROR:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    .line 21353
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    .line 21354
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    .line 21355
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->LANGUAGE_VERSION:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

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

    .line 21369
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f()I

    .line 21370
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 21371
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 21373
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 21374
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 21376
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 21377
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->getNumber()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 21379
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 21380
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 21382
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 21383
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 21385
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 21386
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 21388
    :cond_5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$u;",
            ">;"
        }
    .end annotation

    .line 21069
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 21215
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

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

    .line 21241
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

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

    .line 21359
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 21363
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->k:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 21393
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 21397
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 21398
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21401
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 21402
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->c:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21405
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 21406
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->d:Lkotlin/reflect/jvm/internal/impl/b/a$u$b;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$u$b;->getNumber()I

    move-result v3

    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21409
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 21410
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->e:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21413
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 21414
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->f:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21417
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 21418
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->g:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$u$c;->getNumber()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 21421
    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 21422
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->l:I

    return v2
.end method

.method public final g()Z
    .locals 2

    .line 21265
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

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

    .line 29486
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object v0

    .line 28489
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$u;)Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 30486
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$u$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$u$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 30965
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->h:Lkotlin/reflect/jvm/internal/impl/b/a$u;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 21288
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

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

    .line 21311
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

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

    .line 21335
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$u;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
