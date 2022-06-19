.class public final Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/b/a$p$a;


# instance fields
.field public b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

.field public c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field public d:I

.field private final f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5123
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 5659
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;-><init>(Z)V

    .line 5660
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5052
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 5271
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    .line 5302
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->i:I

    .line 5053
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->k()V

    .line 5055
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 5057
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_8

    .line 5063
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    const/16 v5, 0x12

    if-eq v4, v5, :cond_2

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    .line 5069
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 5101
    :cond_1
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    .line 7348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 5102
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 5089
    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    .line 5090
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->v()Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v4

    .line 5092
    :cond_3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v5, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    if-eqz v4, :cond_4

    .line 5094
    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    .line 5095
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5097
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    or-int/2addr v4, v6

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    goto :goto_0

    .line 6570
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 5077
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    move-result-object v6

    if-nez v6, :cond_6

    .line 5079
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 5080
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto :goto_0

    .line 5082
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    .line 5083
    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5110
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 9057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 5110
    throw p2

    :catch_1
    move-exception p1

    .line 8057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 5108
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5114
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5118
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 5120
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->w()V

    throw p1

    .line 5114
    :cond_8
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5118
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 5120
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5028
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 5034
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 5271
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    .line 5302
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->i:I

    .line 6123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 5035
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 5028
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5037
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 5271
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    .line 5302
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->i:I

    .line 5037
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;I)I
    .locals 0

    .line 5028
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;
    .locals 0

    .line 5028
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$p$a;
    .locals 1

    .line 5041
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;
    .locals 0

    .line 5028
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 5028
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;I)I
    .locals 0

    .line 5028
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    return p1
.end method

.method private k()V
    .locals 1

    .line 5267
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->INV:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    .line 5268
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/4 v0, 0x0

    .line 5269
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

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

    .line 5289
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f()I

    .line 5290
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5291
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 5293
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5294
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 5296
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 5297
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 5299
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p$a;",
            ">;"
        }
    .end annotation

    .line 5135
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 5219
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

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

    .line 5238
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

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

    .line 5273
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 5277
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9248
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 5278
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5279
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    return v2

    .line 5283
    :cond_2
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->h:B

    return v1
.end method

.method public final f()I
    .locals 3

    .line 5304
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5308
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5309
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$b;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 5312
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 5313
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 5316
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 5317
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->d:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 5320
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 5321
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->i:I

    return v2
.end method

.method public final g()Z
    .locals 2

    .line 5257
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->g:I

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

    .line 11385
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object v0

    .line 10388
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p$a;)Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 12385
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$p$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 13045
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$p$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p$a;

    return-object v0
.end method
