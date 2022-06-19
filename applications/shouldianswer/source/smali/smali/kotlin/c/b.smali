.class public final Lkotlin/c/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lkotlin/c/f;


# instance fields
.field private final a:Lkotlin/c/f;

.field private final b:Lkotlin/c/f$b;


# direct methods
.method public constructor <init>(Lkotlin/c/f;Lkotlin/c/f$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    iput-object p2, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    return-void
.end method

.method private final a()I
    .locals 3

    .line 70
    move-object v0, p0

    check-cast v0, Lkotlin/c/b;

    const/4 v1, 0x2

    .line 73
    :goto_0
    iget-object v0, v0, Lkotlin/c/b;->a:Lkotlin/c/f;

    instance-of v2, v0, Lkotlin/c/b;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/c/b;

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final a(Lkotlin/c/b;)Z
    .locals 1

    .line 84
    :goto_0
    iget-object v0, p1, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-direct {p0, v0}, Lkotlin/c/b;->a(Lkotlin/c/f$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-object p1, p1, Lkotlin/c/b;->a:Lkotlin/c/f;

    .line 86
    instance-of v0, p1, Lkotlin/c/b;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Lkotlin/c/b;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 89
    check-cast p1, Lkotlin/c/f$b;

    invoke-direct {p0, p1}, Lkotlin/c/b;->a(Lkotlin/c/f$b;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lkotlin/c/f$b;)Z
    .locals 1

    .line 79
    invoke-interface {p1}, Lkotlin/c/f$b;->getKey()Lkotlin/c/f$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/c/b;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 95
    move-object v0, p0

    check-cast v0, Lkotlin/c/b;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lkotlin/c/b;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/c/b;

    invoke-direct {p1}, Lkotlin/c/b;->a()I

    move-result v0

    invoke-direct {p0}, Lkotlin/c/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/c/b;->a(Lkotlin/c/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/e/a/m<",
            "-TR;-",
            "Lkotlin/c/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    invoke-interface {v0, p1, p2}, Lkotlin/c/f;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-interface {p2, p1, v0}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, p0

    check-cast v0, Lkotlin/c/b;

    .line 46
    :goto_0
    iget-object v1, v0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-interface {v1, p1}, Lkotlin/c/f$b;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 47
    :cond_0
    iget-object v0, v0, Lkotlin/c/b;->a:Lkotlin/c/f;

    .line 48
    instance-of v1, v0, Lkotlin/c/b;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lkotlin/c/b;

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v0, p1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget-object v0, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-interface {v0, p1}, Lkotlin/c/f$b;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    invoke-interface {v0, p1}, Lkotlin/c/f;->minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lkotlin/c/b;->a:Lkotlin/c/f;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    check-cast p1, Lkotlin/c/f;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lkotlin/c/g;->a:Lkotlin/c/g;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    check-cast p1, Lkotlin/c/f;

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Lkotlin/c/b;

    iget-object v1, p0, Lkotlin/c/b;->b:Lkotlin/c/f$b;

    invoke-direct {v0, p1, v1}, Lkotlin/c/b;-><init>(Lkotlin/c/f;Lkotlin/c/f$b;)V

    move-object p1, v0

    check-cast p1, Lkotlin/c/f;

    :goto_0
    return-object p1
.end method

.method public plus(Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {p0, p1}, Lkotlin/c/f$a;->a(Lkotlin/c/f;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/c/b$a;->a:Lkotlin/c/b$a;

    check-cast v1, Lkotlin/e/a/m;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lkotlin/c/b;->fold(Ljava/lang/Object;Lkotlin/e/a/m;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
