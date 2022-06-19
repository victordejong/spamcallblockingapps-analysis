.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;,
        Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/b/c/a$d;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 171
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 2093
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;-><init>(Z)V

    .line 2094
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 1631
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f:I

    .line 1637
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->g:B

    .line 1663
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->h:I

    .line 96
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c()V

    .line 98
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 100
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_b

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_1

    .line 112
    invoke-virtual {p0, p1, v2, p2, v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 135
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 136
    invoke-virtual {p1, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result v6

    and-int/lit8 v7, v4, 0x2

    if-eq v7, v5, :cond_2

    .line 137
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v7

    if-lez v7, :cond_2

    .line 138
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 141
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result v7

    if-lez v7, :cond_3

    .line 142
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 3348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v8

    .line 142
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p1, v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_5

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 131
    :cond_5
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 2348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v7

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_7

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 123
    :cond_7
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_8
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 5057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 152
    throw p2

    :catch_1
    move-exception p1

    .line 4057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 150
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_9

    .line 156
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_a

    .line 159
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 162
    :cond_a
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 168
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->w()V

    throw p1

    :cond_b
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_c

    .line 156
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_d

    .line 159
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 162
    :cond_d
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_5

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 168
    :goto_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 1631
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f:I

    .line 1637
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->g:B

    .line 1663
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->h:I

    .line 2123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 78
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 1631
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f:I

    .line 1637
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->g:B

    .line 1663
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->h:I

    .line 80
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 71
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
    .locals 1

    .line 84
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1738
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Ljava/io/InputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Ljava/util/List;
    .locals 0

    .line 71
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 71
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 71
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 1634
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    .line 1635
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

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

    .line 1649
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f()I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1650
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1651
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5609
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 1653
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x2a

    .line 1654
    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 1655
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f:I

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 1657
    :cond_1
    :goto_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1658
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1660
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 1639
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1643
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->g:B

    return v1
.end method

.method public final f()I
    .locals 5

    .line 1665
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1669
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1670
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1675
    :goto_1
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1676
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v2, v1

    .line 6609
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->c:Ljava/util/List;

    .line 1680
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1682
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 1685
    :cond_3
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->f:I

    .line 1687
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 1688
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->h:I

    return v2
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 8752
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    .line 7755
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$d;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 9752
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 10088
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$d;

    return-object v0
.end method
