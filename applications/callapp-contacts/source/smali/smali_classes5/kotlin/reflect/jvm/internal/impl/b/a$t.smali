.class public final Lkotlin/reflect/jvm/internal/impl/b/a$t;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/w;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lkotlin/reflect/jvm/internal/impl/b/a$t;


# instance fields
.field public b:I

.field public c:I

.field public d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public e:I

.field public f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public g:I

.field private final i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private j:I

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18183
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$t$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 18905
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;-><init>(Z)V

    .line 18906
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->h:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->n()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18096
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 18311
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    .line 18369
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l:I

    .line 18097
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->n()V

    .line 18099
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 18101
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_c

    .line 18107
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    const/16 v6, 0x10

    if-eq v4, v6, :cond_9

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eq v4, v7, :cond_6

    const/16 v7, 0x22

    if-eq v4, v7, :cond_3

    const/16 v6, 0x28

    if-eq v4, v6, :cond_2

    const/16 v5, 0x30

    if-eq v4, v5, :cond_1

    .line 18113
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 18161
    :cond_1
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 18162
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    goto :goto_0

    .line 18156
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    .line 21348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 18157
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    goto :goto_0

    .line 18144
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_4

    .line 18145
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v8

    .line 18147
    :cond_4
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v8, :cond_5

    .line 18149
    invoke-virtual {v8, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 18150
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18152
    :cond_5
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/2addr v4, v6

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    goto :goto_0

    .line 18131
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 18132
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v8

    .line 18134
    :cond_7
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v8, :cond_8

    .line 18136
    invoke-virtual {v8, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 18137
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18139
    :cond_8
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    goto/16 :goto_0

    .line 18125
    :cond_9
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    .line 20348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 18126
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    goto/16 :goto_0

    .line 18120
    :cond_a
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    .line 19348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 18121
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18170
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 24057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 18170
    throw p2

    :catch_1
    move-exception p1

    .line 23057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 18168
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18174
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18178
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 18180
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->w()V

    throw p1

    .line 18174
    :cond_c
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 18178
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 18180
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18071
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            "*>;)V"
        }
    .end annotation

    .line 18078
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 18311
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    .line 18369
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l:I

    .line 19123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 18079
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 18071
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 18081
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 18311
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    .line 18369
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l:I

    .line 18081
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I
    .locals 0

    .line 18071
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 18071
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 24465
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    .line 18468
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$t;
    .locals 1

    .line 18085
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->h:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I
    .locals 0

    .line 18071
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 18071
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 18071
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I
    .locals 0

    .line 18071
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    return p1
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I
    .locals 0

    .line 18071
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    return p1
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I
    .locals 0

    .line 18071
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    return p1
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    .line 18304
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    .line 18305
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    .line 18306
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18307
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    .line 18308
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18309
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

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

    .line 18343
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f()I

    .line 18345
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 18347
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 18348
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 18350
    :cond_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 18351
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 18353
    :cond_1
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 18354
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 18356
    :cond_2
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 18357
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 18359
    :cond_3
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 18360
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 18362
    :cond_4
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 18363
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_5
    const/16 v1, 0xc8

    .line 18365
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 18366
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ">;"
        }
    .end annotation

    .line 18195
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 18212
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

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

    .line 18234
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

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
    .locals 3

    .line 18313
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 18317
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18318
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    return v2

    .line 18321
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24255
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18322
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18323
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    return v2

    .line 18327
    :cond_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24285
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18328
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18329
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    return v2

    .line 18333
    :cond_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->x()Z

    move-result v0

    if-nez v0, :cond_5

    .line 18334
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    return v2

    .line 18337
    :cond_5
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 18371
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 18375
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 18376
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 18379
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 18380
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 18383
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 18384
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18387
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 18388
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 18391
    :cond_4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    .line 18392
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 18395
    :cond_5
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 18396
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 18399
    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->z()I

    move-result v0

    add-int/2addr v2, v0

    .line 18400
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 18401
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l:I

    return v2
.end method

.method public final g()Z
    .locals 2

    .line 18249
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

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

    .line 27465
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    .line 26468
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 28465
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 25089
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->h:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 18264
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

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

    .line 18279
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

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

    .line 18294
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t;->j:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
