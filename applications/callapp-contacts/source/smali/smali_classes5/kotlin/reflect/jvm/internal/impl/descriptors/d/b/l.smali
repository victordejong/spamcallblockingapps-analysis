.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/j;


# instance fields
.field final a:Ljava/lang/reflect/Type;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/d/i;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 29
    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;

    .line 1028
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 32
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;-><init>(Ljava/lang/reflect/TypeVariable;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    goto :goto_0

    .line 34
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/j;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    .line 29
    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    return-void

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a classifier type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            ">;"
        }
    .end annotation

    .line 5071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 54
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/load/java/d/i;
    .locals 1

    .line 29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->c:Lkotlin/reflect/jvm/internal/impl/load/java/d/i;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2028
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    const-string v2, "Type not found: "

    .line 41
    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 3028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 3

    .line 4028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 47
    instance-of v1, v0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "getTypeParameters()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/w;",
            ">;"
        }
    .end annotation

    .line 5028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 50
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->a(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/reflect/Type;

    .line 50
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
