.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassifierNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 39
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 36
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 33
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getFunctionNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->k:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/d;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 44
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz v3, :cond_0

    .line 58
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 44
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v3, "it.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public getVariableNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->l:Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/d;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 49
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz v3, :cond_0

    .line 62
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 49
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v3, "it.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 1

    .line 29
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    return-void
.end method
