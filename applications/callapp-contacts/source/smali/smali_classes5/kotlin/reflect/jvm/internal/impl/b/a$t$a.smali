.class public final Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$t$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/w;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private f:I

.field private g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

.field private h:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18481
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    .line 18717
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18809
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 18663
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    .line 18664
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 3

    .line 18756
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 18758
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 18761
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18764
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 18702
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    .line 18703
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->d:I

    return-object p0
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 3

    .line 18848
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 18850
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p$b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$p$b;->h()Lkotlin/reflect/jvm/internal/impl/b/a$p;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    goto :goto_0

    .line 18853
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18856
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    return-object p0
.end method

.method private c(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 18794
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    .line 18795
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->f:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18612
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18618
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 18614
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18615
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 18618
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    :cond_0
    throw p1
.end method

.method private d(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 18886
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    .line 18887
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->h:I

    return-object p0
.end method

.method static synthetic h()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 24488
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;-><init>()V

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 2

    .line 19488
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;-><init>()V

    .line 18509
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;
    .locals 1

    .line 18557
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18558
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20225
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b:I

    .line 18559
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18561
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20240
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c:I

    .line 18562
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18564
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20255
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18565
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18567
    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20270
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e:I

    .line 18568
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->c(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18570
    :cond_4
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20285
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->f:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18571
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18573
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20300
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;->g:I

    .line 18574
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->d(I)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    .line 18576
    :cond_6
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 21123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 18577
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 21127
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18475
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 18475
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 23513
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 18475
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18475
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 18475
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18475
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 23517
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v0

    .line 23518
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 23519
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 5

    .line 21690
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v4

    :cond_1
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 21728
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18588
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    .line 21814
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 21820
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    .line 18594
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->e()Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    .line 18599
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->k()Z

    move-result v0

    if-nez v0, :cond_6

    return v4

    :cond_6
    return v3
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 18475
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$t$a;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/b/a$t;
    .locals 5

    .line 18525
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 18526
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 18531
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 18535
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 18539
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 18543
    :cond_3
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->f:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->c(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I

    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 18547
    :cond_4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->b(Lkotlin/reflect/jvm/internal/impl/b/a$t;Lkotlin/reflect/jvm/internal/impl/b/a$p;)Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x20

    .line 18551
    :cond_5
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$t$a;->h:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->d(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I

    .line 18552
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->e(Lkotlin/reflect/jvm/internal/impl/b/a$t;I)I

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 22513
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$t;->a()Lkotlin/reflect/jvm/internal/impl/b/a$t;

    move-result-object v0

    return-object v0
.end method
