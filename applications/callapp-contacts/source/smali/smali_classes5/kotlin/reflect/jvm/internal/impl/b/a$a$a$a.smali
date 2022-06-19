.class public final Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a$a;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/c;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3956
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    .line 4087
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 1

    .line 4072
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    .line 4073
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 3

    .line 4126
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    goto :goto_0

    .line 4131
    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 4134
    :goto_0
    iget p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    or-int/2addr p1, v1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4042
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4048
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 4044
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4045
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 4048
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 1

    .line 10963
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 2

    .line 4963
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;-><init>()V

    .line 3976
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;
    .locals 4

    .line 3992
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 3993
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3998
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;I)I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 4002
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 4003
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;
    .locals 1

    .line 4008
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4009
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5804
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->b:I

    .line 4010
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    .line 4012
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5819
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->c:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 4013
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    .line 6123
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 4015
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 6127
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

    .line 3949
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 3949
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a$a;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 8980
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 3949
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

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

    .line 3949
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 3949
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

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

    .line 3949
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 8984
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    move-result-object v0

    .line 8985
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8986
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 7060
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->b:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v2

    .line 7098
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;

    .line 4029
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a$b;->e()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 9980
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/a$a$a;

    move-result-object v0

    return-object v0
.end method
