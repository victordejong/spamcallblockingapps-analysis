.class public final Lkotlin/reflect/jvm/internal/impl/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/a/a/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "from"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scopeOwner"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v6

    const-string p2, "scopeOwner.fqName.asString()"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v8

    const-string p2, "name.asString()"

    invoke-static {v8, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "packageFqName"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    if-eq p0, p2, :cond_0

    .line 1043
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/a/a/b;->getLocation()Lkotlin/reflect/jvm/internal/impl/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1044
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/a/a/e;->a:Lkotlin/reflect/jvm/internal/impl/a/a/e$a;

    .line 2034
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/a/a/e;->a()Lkotlin/reflect/jvm/internal/impl/a/a/e;

    move-result-object v5

    .line 1045
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/a/a/f;->PACKAGE:Lkotlin/reflect/jvm/internal/impl/a/a/f;

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/a/a/c;->a(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/a/a/e;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/a/a/f;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/a/a/b;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/a/a/c$a;

    if-ne p0, v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/a/a/b;->getLocation()Lkotlin/reflect/jvm/internal/impl/a/a/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 33
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a/a/e;->a:Lkotlin/reflect/jvm/internal/impl/a/a/e$a;

    .line 1034
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/a/a/e;->a()Lkotlin/reflect/jvm/internal/impl/a/a/e;

    move-result-object v3

    .line 34
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/c;->a()Ljava/lang/String;

    move-result-object v4

    const-string p1, "getFqName(scopeOwner).asString()"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/a/a/f;->CLASSIFIER:Lkotlin/reflect/jvm/internal/impl/a/a/f;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string p1, "name.asString()"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/a/a/c;->a(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/a/a/e;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/a/a/f;Ljava/lang/String;)V

    return-void
.end method
