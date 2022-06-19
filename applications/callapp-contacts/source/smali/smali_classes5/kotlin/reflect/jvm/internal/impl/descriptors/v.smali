.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 57
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/v$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/v$a;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p0}, Lkotlin/g/k;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/v$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/v$b;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object p0

    invoke-static {p0}, Lkotlin/g/k;->f(Lkotlin/g/h;)Ljava/util/List;

    move-result-object p0

    .line 59
    invoke-virtual {p2, p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ad;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x1

    const-string v3, "segments.first()"

    const-string v4, "classId.relativeClassName.pathSegments()"

    const-string v5, "classId.packageFqName"

    const/4 v6, 0x0

    if-nez v0, :cond_5

    .line 24
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object p0

    .line 25
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->b()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    .line 27
    invoke-static {p1}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 28
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    .line 26
    invoke-interface {p0, v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v6

    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 32
    instance-of v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v2, :cond_1

    return-object v6

    .line 33
    :cond_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {p0, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_2

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_1

    :cond_2
    move-object p0, v6

    :goto_1
    if-nez p0, :cond_3

    return-object v6

    .line 33
    :cond_3
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    goto :goto_0

    :cond_4
    return-object p0

    .line 24
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/c/b;->g()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->b()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    .line 27
    invoke-static {v7}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 28
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    .line 26
    invoke-interface {v0, v8, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_2
    move-object v0, v6

    goto :goto_5

    .line 31
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 32
    instance-of v9, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v9, :cond_7

    goto :goto_2

    .line 33
    :cond_7
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    .line 34
    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v0, v8, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    instance-of v8, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v8, :cond_8

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_4

    :cond_8
    move-object v0, v6

    :goto_4
    if-nez v0, :cond_9

    goto :goto_2

    .line 33
    :cond_9
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    goto :goto_3

    :cond_a
    :goto_5
    if-nez v0, :cond_10

    .line 24
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object p0

    .line 25
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->b()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    .line 27
    invoke-static {p1}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 28
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    .line 26
    invoke-interface {p0, v0, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v6

    .line 31
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 32
    instance-of v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v2, :cond_c

    return-object v6

    .line 33
    :cond_c
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p0

    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {p0, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_d

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_7

    :cond_d
    move-object p0, v6

    :goto_7
    if-nez p0, :cond_e

    return-object v6

    .line 33
    :cond_e
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    goto :goto_6

    :cond_f
    return-object p0

    :cond_10
    return-object v0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/v;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p1, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
