.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a;


# instance fields
.field public b:I

.field public c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2079
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 4151
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;-><init>(Z)V

    .line 4152
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2020
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 3826
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    .line 3860
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->h:I

    .line 2021
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g()V

    .line 2023
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2025
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_6

    .line 2031
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 2037
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2050
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    .line 2051
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 6000
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v4

    .line 2053
    :cond_2
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v5, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    if-eqz v4, :cond_3

    .line 2055
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    .line 2056
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 2058
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    or-int/2addr v4, v6

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    goto :goto_0

    .line 2044
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    .line 5348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 2045
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2066
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 7057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2066
    throw p2

    :catch_1
    move-exception p1

    .line 6057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2064
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2074
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2076
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->w()V

    throw p1

    .line 2070
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2074
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2076
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1996
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 2002
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 3826
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    .line 3860
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->h:I

    .line 5123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 2003
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 1996
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2005
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 3826
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    .line 3860
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->h:I

    .line 2005
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;I)I
    .locals 0

    .line 1996
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;
    .locals 0

    .line 1996
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
    .locals 1

    .line 2009
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 1996
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;I)I
    .locals 0

    .line 1996
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    return p1
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 3823
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    .line 3824
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3850
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f()I

    .line 3851
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3852
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 3854
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3855
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 3857
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
            ">;"
        }
    .end annotation

    .line 2091
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 3798
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

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

    .line 3813
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

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

    .line 3828
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3832
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3833
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    return v2

    .line 3836
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3837
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    return v2

    .line 7819
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 3840
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3841
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    return v2

    .line 3844
    :cond_4
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->g:B

    return v1
.end method

.method public final f()I
    .locals 3

    .line 3862
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3866
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3867
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 3870
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3871
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3874
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 3875
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->h:I

    return v2
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 9939
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object v0

    .line 8942
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 10939
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 11013
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    return-object v0
.end method
