.class final Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 534
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;Lkotlin/reflect/jvm/internal/impl/protobuf/u$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->d:Ljava/util/Iterator;

    .line 580
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .line 540
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 1546
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->c:Z

    .line 1549
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1550
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 1552
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 557
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->c:Z

    .line 561
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)V

    .line 563
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->b:I

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/u;I)Ljava/lang/Object;

    return-void

    .line 566
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
