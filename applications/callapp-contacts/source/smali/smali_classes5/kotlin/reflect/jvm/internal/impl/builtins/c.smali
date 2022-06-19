.class public final Lkotlin/reflect/jvm/internal/impl/builtins/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/builtins/b;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    move-object p0, p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/b;->a()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
