.class final Lkotlin/reflect/jvm/internal/u$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/u;-><init>(Lkotlin/reflect/jvm/internal/k;Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0003 \u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
        "kotlin.jvm.PlatformType",
        "V",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/u;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/u;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/u$e;->a:Lkotlin/reflect/jvm/internal/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1102
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/u$e;->a:Lkotlin/reflect/jvm/internal/u;

    .line 2028
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/u;->b:Lkotlin/reflect/jvm/internal/k;

    .line 1102
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/u$e;->a:Lkotlin/reflect/jvm/internal/u;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/u;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/u$e;->a:Lkotlin/reflect/jvm/internal/u;

    .line 2030
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/u;->c:Ljava/lang/String;

    const-string v4, "name"

    .line 1102
    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "signature"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    sget-object v4, Lkotlin/reflect/jvm/internal/k;->c:Lkotlin/h/l;

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "input"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3142
    iget-object v4, v4, Lkotlin/h/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v6, "nativePattern.matcher(input)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4270
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    new-instance v6, Lkotlin/h/k;

    invoke-direct {v6, v4, v5}, Lkotlin/h/k;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object v4, v6

    check-cast v4, Lkotlin/h/j;

    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 2076
    invoke-interface {v4}, Lkotlin/h/j;->c()Lkotlin/h/j$a;

    move-result-object v2

    .line 5096
    iget-object v2, v2, Lkotlin/h/j$a;->a:Lkotlin/h/j;

    .line 2076
    invoke-interface {v2}, Lkotlin/h/j;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2077
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/k;->a(I)Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 2078
    :cond_1
    new-instance v3, Lkotlin/reflect/jvm/internal/ab;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local property #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found in "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/k;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 2081
    :cond_2
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    const-string v6, "Name.identifier(name)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/k;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 2304
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 2305
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 2083
    sget-object v10, Lkotlin/reflect/jvm/internal/ah;->b:Lkotlin/reflect/jvm/internal/ah;

    invoke-virtual {v10, v9}, Lkotlin/reflect/jvm/internal/ah;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/e;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/e;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2306
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 2086
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v8, ") not resolved in "

    const-string v9, "\' (JVM signature: "

    const-string v10, "Property \'"

    if-nez v4, :cond_b

    .line 2090
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v5, :cond_a

    .line 2101
    check-cast v7, Ljava/lang/Iterable;

    .line 2307
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 2308
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2309
    move-object v12, v11

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 2102
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v12

    .line 2311
    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    .line 2310
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/List;

    .line 2314
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    :cond_5
    check-cast v13, Ljava/util/List;

    .line 2318
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2103
    :cond_6
    sget-object v7, Lkotlin/reflect/jvm/internal/k$f;->a:Lkotlin/reflect/jvm/internal/k$f;

    check-cast v7, Ljava/util/Comparator;

    const-string v11, "$this$toSortedMap"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "comparator"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5103
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v11, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    check-cast v11, Ljava/util/SortedMap;

    .line 2103
    invoke-interface {v11}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-string v7, "properties\n             \u2026                }).values"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .line 2105
    invoke-static {v4}, Lkotlin/a/n;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    .line 2101
    check-cast v4, Ljava/util/List;

    .line 2106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_7

    const-string v1, "mostVisibleProperties"

    .line 2107
    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object v1

    .line 2110
    :cond_7
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/k;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Iterable;

    const-string v4, "\n"

    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/k$e;->a:Lkotlin/reflect/jvm/internal/k$e;

    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x1e

    invoke-static/range {v11 .. v18}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    .line 2113
    new-instance v7, Lkotlin/reflect/jvm/internal/ab;

    .line 2114
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2115
    move-object v1, v6

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_9

    const-string v1, " no members found"

    goto :goto_4

    :cond_9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2113
    invoke-direct {v7, v1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    .line 2119
    :cond_a
    invoke-static {v7}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object v1

    .line 2087
    :cond_b
    new-instance v4, Lkotlin/reflect/jvm/internal/ab;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lkotlin/reflect/jvm/internal/ab;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method
