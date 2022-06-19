.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([Ljava/lang/annotation/Annotation;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 45
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 37
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    invoke-direct {v4, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static final a([Ljava/lang/annotation/Annotation;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 41
    invoke-static {v3}, Lkotlin/jvm/a;->a(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/c;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/a;->a(Lkotlin/reflect/c;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    return-object v2

    :cond_2
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object p0
.end method
