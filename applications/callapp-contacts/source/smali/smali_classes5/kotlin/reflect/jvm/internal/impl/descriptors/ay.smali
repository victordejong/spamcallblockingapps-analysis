.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/h;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->isInner()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-nez v2, :cond_0

    return-object v0

    .line 32
    :cond_0
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/g/h;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ay$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ay$a;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const-string v5, "$this$takeWhile"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "predicate"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1538
    new-instance v5, Lkotlin/g/q;

    invoke-direct {v5, v3, v4}, Lkotlin/g/q;-><init>(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lkotlin/g/h;

    .line 33
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ay$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ay$b;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v3}, Lkotlin/g/k;->a(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v3

    .line 34
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ay$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ay$c;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/g/k;->c(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v3

    .line 35
    invoke-static {v3}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object v3

    .line 37
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/g/h;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 37
    :goto_0
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_5

    .line 2071
    sget-object v4, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v6, v4

    check-cast v6, Ljava/util/List;

    .line 38
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 41
    :cond_6
    check-cast v3, Ljava/util/Collection;

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v3, v6}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 104
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 105
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const-string v4, "it"

    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 3050
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CapturedTypeParameterDescriptor;

    invoke-direct {v5, v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/CapturedTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/k;I)V

    .line 42
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 106
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 44
    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/h;I)Lkotlin/reflect/jvm/internal/impl/descriptors/al;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 83
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 85
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    .line 86
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->isInner()Z

    move-result v3

    if-nez v3, :cond_5

    .line 87
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sget-boolean v3, Lkotlin/x;->a:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " trailing arguments were found in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " type"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 91
    :cond_4
    :goto_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v2, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/al;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V

    return-object v1

    .line 94
    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 95
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    .line 97
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v3

    instance-of v4, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v4, :cond_6

    move-object v0, v3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    :cond_6
    invoke-static {p0, v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ay;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/h;I)Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    move-result-object p0

    .line 95
    invoke-direct {v1, p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/al;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V

    return-object v1

    :cond_7
    :goto_3
    return-object v0
.end method
