.class public final Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$a<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$n$b;",
        "Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/b/o;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1238
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;-><init>()V

    const/4 v0, -0x1

    .line 1338
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->c:I

    .line 1418
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->PACKAGE:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    return-void
.end method

.method private a(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 1

    .line 1355
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    .line 1356
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->c:I

    return-object p0
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 1

    .line 1436
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    .line 1439
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    return-object p0
.end method

.method private b(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 1

    .line 1399
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    .line 1400
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->d:I

    return-object p0
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1325
    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/r;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4066
    :try_start_1
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1327
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    :cond_0
    throw p1
.end method

.method static synthetic f()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 1

    .line 6245
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;-><init>()V

    return-object v0
.end method

.method private g()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 2

    .line 2245
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;-><init>()V

    .line 1260
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object v0

    return-object v0
.end method

.method private h()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    .locals 5

    .line 1276
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V

    .line 1277
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1282
    :goto_0
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->c:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1286
    :cond_1
    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->d:I

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 1290
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    .line 1291
    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;
    .locals 1

    .line 1296
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1297
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3063
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    .line 1298
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    .line 1300
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3086
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    .line 1301
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    .line 1303
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3101
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    .line 1304
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    .line 3123
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 1306
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    .line 3127
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

    .line 1231
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 0

    .line 1231
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/protobuf/h;
    .locals 1

    .line 4264
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    .locals 1

    .line 1231
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

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

    .line 1231
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c()Lkotlin/reflect/jvm/internal/impl/protobuf/a$a;
    .locals 1

    .line 1231
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

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

    .line 1231
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->g()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 2

    .line 4268
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->h()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v0

    .line 4269
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4270
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final e()Z
    .locals 4

    .line 3379
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->b:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public final synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 5264
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    move-result-object v0

    return-object v0
.end method
