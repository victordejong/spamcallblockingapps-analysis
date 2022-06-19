.class public final Lkotlin/reflect/jvm/internal/impl/b/a$o;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$o;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lkotlin/reflect/jvm/internal/impl/b/a$o;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 378
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$o$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 722
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;-><init>(Z)V

    .line 723
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    .line 7423
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 425
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e:B

    .line 444
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f:I

    .line 1423
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/m;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 328
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 330
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 336
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 342
    invoke-virtual {p0, p1, v2, p2, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 349
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v5

    and-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_2

    .line 351
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/m;

    invoke-direct {v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/m;-><init>()V

    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    or-int/lit8 v4, v4, 0x1

    .line 354
    :cond_2
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v6, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 362
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 3057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 362
    throw p2

    :catch_1
    move-exception p1

    .line 2057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 360
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_4

    .line 366
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 369
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 373
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 375
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->w()V

    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    .line 366
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 369
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 373
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 375
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$o;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 307
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 425
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e:B

    .line 444
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f:I

    .line 1123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 308
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$o;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 425
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e:B

    .line 444
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f:I

    .line 310
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;
    .locals 1

    .line 3524
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    .line 527
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$o;
    .locals 1

    .line 314
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$o;Lkotlin/reflect/jvm/internal/impl/protobuf/n;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 0

    .line 301
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-object p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/n;
    .locals 0

    .line 301
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 301
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f()I

    const/4 v0, 0x0

    .line 438
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 439
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$o;",
            ">;"
        }
    .end annotation

    .line 390
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 427
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 431
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->e:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 446
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 452
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 453
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    invoke-interface {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/n;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v0

    .line 3400
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/n;

    .line 457
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/s;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 459
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 460
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->f:I

    return v2
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 5524
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    .line 4527
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$o;)Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 6524
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$o$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$o$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 7318
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$o;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    return-object v0
.end method
