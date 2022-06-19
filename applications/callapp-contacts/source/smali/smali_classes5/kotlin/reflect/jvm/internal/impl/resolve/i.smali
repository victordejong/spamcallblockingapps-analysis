.class public final Lkotlin/reflect/jvm/internal/impl/resolve/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TH;+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptorByHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 54
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object p0

    .line 56
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_5

    .line 57
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v4

    .line 62
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/resolve/i$a;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/i$a;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/i;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v2, p1, v5}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/lang/Object;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v2

    const-string v3, "val conflictedHandles = SmartSet.create<H>()\n\n        val overridableGroup =\n            OverridingUtil.extractMembersOverridableInBothWays(nextHandle, queue, descriptorByHandle) { conflictedHandles.add(it) }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/utils/i;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/a/n;->d(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "overridableGroup.single()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/i;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "selectMostSpecificMember(overridableGroup, descriptorByHandle)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 72
    check-cast v2, Ljava/lang/Iterable;

    .line 88
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "it"

    .line 73
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v5, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_3
    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 77
    invoke-virtual {p0, v4}, Lkotlin/reflect/jvm/internal/impl/utils/i;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_4
    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/impl/utils/i;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 82
    :cond_5
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
