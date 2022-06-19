.class public final Lkotlin/reflect/jvm/internal/impl/b/a$d;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$d$a;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lkotlin/reflect/jvm/internal/impl/b/a$d;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23412
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$d$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$d$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 23801
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$d;-><init>(Z)V

    .line 23802
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->b:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    .line 29463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23360
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 23465
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    .line 23490
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f:I

    .line 24463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    .line 23363
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 23365
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 23371
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 23377
    invoke-virtual {p0, p1, v2, p2, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v1, :cond_2

    .line 23385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 23388
    :cond_2
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$e;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v6, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 23396
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 26057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 23396
    throw p2

    :catch_1
    move-exception p1

    .line 25057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 23394
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_4

    .line 23400
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    .line 23403
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23407
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 23409
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->w()V

    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    .line 23400
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    .line 23403
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 23407
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 23409
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23336
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 23342
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 23465
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    .line 23490
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f:I

    .line 24123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 23343
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 23336
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 23345
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 23465
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    .line 23490
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f:I

    .line 23345
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23336
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;
    .locals 1

    .line 26565
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    .line 23568
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$d;
    .locals 1

    .line 23349
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->b:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Ljava/util/List;
    .locals 0

    .line 23336
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 23336
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23483
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f()I

    const/4 v0, 0x0

    .line 23484
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 23485
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23487
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$d;",
            ">;"
        }
    .end annotation

    .line 23424
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;
    .locals 1

    .line 27565
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    .line 26568
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$d;)Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .line 23467
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 26446
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 26452
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$e;

    .line 23472
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$e;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 23473
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23477
    :cond_3
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->e:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 23492
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23496
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 23497
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23500
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v1, v0

    .line 23501
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->f:I

    return v1
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 23336
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$d;->c()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 28565
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$d$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$d$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 29353
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$d;->b:Lkotlin/reflect/jvm/internal/impl/b/a$d;

    return-object v0
.end method
