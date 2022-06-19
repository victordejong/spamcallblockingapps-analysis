.class public final Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$b<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$f$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/i;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20705
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;-><init>()V

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    .locals 1

    .line 20805
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->b:I

    .line 20806
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->c:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20775
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$f;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20781
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 20777
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20778
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 20781
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    :cond_0
    throw p1
.end method

.method static synthetic g()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    .locals 1

    .line 26712
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;-><init>()V

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    .locals 2

    .line 21712
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;-><init>()V

    .line 20723
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lkotlin/reflect/jvm/internal/impl/b/a$f;
    .locals 3

    .line 20739
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 20740
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 20745
    :goto_0
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->c:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;I)I

    .line 20746
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b(Lkotlin/reflect/jvm/internal/impl/b/a$f;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;
    .locals 1

    .line 20751
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a()Lkotlin/reflect/jvm/internal/impl/b/a$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 20752
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22580
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    .line 20753
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    .line 20755
    :cond_1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;)V

    .line 23123
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 20756
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 23127
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

    .line 20699
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 20699
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$f;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 25727
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a()Lkotlin/reflect/jvm/internal/impl/b/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 20699
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

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

    .line 20699
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 20699
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

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

    .line 20699
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 25731
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->i()Lkotlin/reflect/jvm/internal/impl/b/a$f;

    move-result-object v0

    .line 25732
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25733
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 1

    .line 20762
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic f()Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;
    .locals 1

    .line 20699
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$f$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$f$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 24727
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$f;->a()Lkotlin/reflect/jvm/internal/impl/b/a$f;

    move-result-object v0

    return-object v0
.end method
