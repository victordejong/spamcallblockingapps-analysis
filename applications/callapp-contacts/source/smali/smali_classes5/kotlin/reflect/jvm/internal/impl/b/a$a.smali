.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$a$b;,
        Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/b/a$a;


# instance fields
.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
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

    .line 1956
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 4607
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;-><init>(Z)V

    .line 4608
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1899
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 4213
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    .line 4245
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->h:I

    .line 1900
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->k()V

    .line 1902
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 1904
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v5, 0x2

    if-nez v3, :cond_6

    .line 1910
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v6

    if-eqz v6, :cond_4

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    const/16 v7, 0x12

    if-eq v6, v7, :cond_1

    .line 1916
    invoke-virtual {p0, p1, v2, p2, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v5, :cond_2

    .line 1929
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    or-int/lit8 v4, v4, 0x2

    .line 1932
    :cond_2
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v7, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1923
    :cond_3
    iget v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    or-int/2addr v6, v1

    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    .line 5348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v6

    .line 1924
    iput v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1940
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 7057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1940
    throw p2

    :catch_1
    move-exception p1

    .line 6057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1938
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x2

    if-ne p2, v5, :cond_5

    .line 1944
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    .line 1947
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1951
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 1953
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->w()V

    throw p1

    :cond_6
    and-int/lit8 p1, v4, 0x2

    if-ne p1, v5, :cond_7

    .line 1944
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    .line 1947
    :cond_7
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1951
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 1953
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1875
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 1881
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 4213
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    .line 4245
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->h:I

    .line 5123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1882
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 1875
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 1884
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 4213
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    .line 4245
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->h:I

    .line 1884
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a;I)I
    .locals 0

    .line 1875
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1875
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 1

    .line 7324
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    .line 4327
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$a;
    .locals 1

    .line 1888
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$a;I)I
    .locals 0

    .line 1875
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Ljava/util/List;
    .locals 0

    .line 1875
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 1875
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 4210
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    .line 4211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

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

    .line 4235
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f()I

    .line 4236
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4237
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_0
    const/4 v0, 0x0

    .line 4239
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4240
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4242
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
            ">;"
        }
    .end annotation

    .line 1968
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 4165
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .line 4193
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 4

    .line 4215
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 4219
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4220
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 4223
    :goto_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->d()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 7199
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    .line 4224
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4225
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4229
    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 4247
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4251
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4252
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4255
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    const/4 v1, 0x2

    .line 4256
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4259
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 4260
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->h:I

    return v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;
    .locals 1

    .line 8324
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    .line 7327
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 1875
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 9324
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 9892
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a;

    return-object v0
.end method
