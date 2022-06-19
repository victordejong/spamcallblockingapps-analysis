.class public final Lkotlin/reflect/jvm/internal/impl/b/a$n;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$n$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lkotlin/reflect/jvm/internal/impl/b/a$n;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 826
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 1838
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;-><init>(Z)V

    .line 1839
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    .line 8500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 774
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 1502
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    .line 1527
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f:I

    .line 2500
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    .line 777
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 779
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 785
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 791
    invoke-virtual {p0, p1, v2, p2, v5}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v4, 0x1

    if-eq v5, v1, :cond_2

    .line 799
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    or-int/lit8 v4, v4, 0x1

    .line 802
    :cond_2
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

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

    .line 810
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 4057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 810
    throw p2

    :catch_1
    move-exception p1

    .line 3057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 808
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v4, 0x1

    if-ne p2, v1, :cond_4

    .line 814
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    .line 817
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 823
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->w()V

    throw p1

    :cond_5
    and-int/lit8 p1, v4, 0x1

    if-ne p1, v1, :cond_6

    .line 814
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    .line 817
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 821
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 823
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 750
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 756
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 1502
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    .line 1527
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f:I

    .line 2123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 757
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 750
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 759
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 1502
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    .line 1527
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f:I

    .line 759
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$n;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 750
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    return-object p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;
    .locals 1

    .line 4602
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$n;
    .locals 1

    .line 763
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Ljava/util/List;
    .locals 0

    .line 750
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 750
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    .locals 1

    .line 1489
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f()I

    const/4 v0, 0x0

    .line 1521
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1522
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1524
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n;",
            ">;"
        }
    .end annotation

    .line 838
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .line 1504
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 4483
    :goto_0
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1509
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1510
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    :cond_3
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->e:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 1529
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1533
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1534
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v1, v0

    .line 1538
    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->f:I

    return v1
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 6602
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    .line 5605
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n;)Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 7602
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 7767
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n;->b:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    return-object v0
.end method
