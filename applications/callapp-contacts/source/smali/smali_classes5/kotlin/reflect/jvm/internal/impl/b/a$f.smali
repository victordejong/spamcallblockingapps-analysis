.class public final Lkotlin/reflect/jvm/internal/impl/b/a$f;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$c<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/i;"
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/reflect/jvm/internal/impl/b/a$f;


# instance fields
.field public b:I

.field private final d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private e:I

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20552
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$f$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 20824
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;-><init>(Z)V

    .line 20825
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->c:Lkotlin/reflect/jvm/internal/impl/b/a$f;

    const/4 v1, 0x0

    .line 28584
    iput v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20506
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 v0, -0x1

    .line 20586
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    .line 20613
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->g:I

    const/4 v0, 0x0

    .line 21584
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    .line 20509
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v1

    const/4 v2, 0x1

    .line 20511
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 20517
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 20523
    invoke-virtual {p0, p1, v3, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 20530
    :cond_1
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    or-int/2addr v4, v2

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    .line 22348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 20531
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20539
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 24057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 20539
    throw p2

    :catch_1
    move-exception p1

    .line 23057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 20537
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20543
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20547
    :catch_2
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 20549
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->w()V

    throw p1

    .line 20543
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 20547
    :catch_3
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 20549
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20481
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$f;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            "*>;)V"
        }
    .end annotation

    .line 20488
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    const/4 v0, -0x1

    .line 20586
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    .line 20613
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->g:I

    .line 21123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 20489
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 20481
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 20491
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;-><init>()V

    const/4 p1, -0x1

    .line 20586
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    .line 20613
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->g:I

    .line 20491
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$f;I)I
    .locals 0

    .line 20481
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    return p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$f;
    .locals 1

    .line 20495
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->c:Lkotlin/reflect/jvm/internal/impl/b/a$f;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 20481
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$f;I)I
    .locals 0

    .line 20481
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    return p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20602
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f()I

    .line 20604
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->y()Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;

    move-result-object v0

    .line 20606
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 20607
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    :cond_0
    const/16 v1, 0xc8

    .line 20609
    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c$a;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    .line 20610
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            ">;"
        }
    .end annotation

    .line 20564
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 20574
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 20588
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 20592
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->x()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20593
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    return v2

    .line 20596
    :cond_2
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->f:B

    return v1
.end method

.method public final f()I
    .locals 3

    .line 20615
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 20619
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 20620
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 20623
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->z()I

    move-result v0

    add-int/2addr v2, v0

    .line 20624
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 20625
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->g:I

    return v2
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 26689
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    .line 25692
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 27689
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 24499
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;->c:Lkotlin/reflect/jvm/internal/impl/b/a$f;

    return-object v0
.end method
