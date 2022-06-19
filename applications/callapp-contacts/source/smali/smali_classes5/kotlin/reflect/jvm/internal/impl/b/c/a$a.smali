.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;


# instance fields
.field public b:I

.field public c:I

.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2670
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 3017
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;-><init>(Z)V

    .line 3018
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2619
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 2728
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g:B

    .line 2750
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->h:I

    .line 2620
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->k()V

    .line 2622
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2624
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_4

    .line 2630
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    .line 2636
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2648
    :cond_1
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    .line 4348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 2649
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

    goto :goto_0

    .line 2643
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    .line 3348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 2644
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I
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

    .line 2657
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 6057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2657
    throw p2

    :catch_1
    move-exception p1

    .line 5057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 2655
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2661
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2665
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2667
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->w()V

    throw p1

    .line 2661
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2665
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 2667
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2595
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 2601
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 2728
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g:B

    .line 2750
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->h:I

    .line 3123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 2602
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0

    .line 2595
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2604
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 2728
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g:B

    .line 2750
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->h:I

    .line 2604
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;I)I
    .locals 0

    .line 2595
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I

    return p1
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;
    .locals 1

    .line 6829
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    .line 2832
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;
    .locals 1

    .line 2608
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    return-object v0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;I)I
    .locals 0

    .line 2595
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

    return p1
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 2595
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;I)I
    .locals 0

    .line 2595
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    return p1
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    .line 2725
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I

    .line 2726
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

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

    .line 2740
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f()I

    .line 2741
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2742
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2744
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2745
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 2747
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$a;",
            ">;"
        }
    .end annotation

    .line 2682
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 2692
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

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

    .line 2711
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

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

    .line 2730
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2734
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g:B

    return v1
.end method

.method public final f()I
    .locals 3

    .line 2752
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2756
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2757
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 2760
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2761
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->c:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 2764
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 2765
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->h:I

    return v2
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;
    .locals 1

    .line 7829
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    .line 6832
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 2595
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 8829
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 9612
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    return-object v0
.end method
