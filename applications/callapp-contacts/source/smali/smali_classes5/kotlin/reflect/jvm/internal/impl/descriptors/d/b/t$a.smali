.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;->d()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;)Lkotlin/reflect/jvm/internal/impl/descriptors/bf;
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/t;->d()I

    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$h;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/be$e;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object p0

    .line 42
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$c;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object p0

    .line 44
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$b;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object p0

    .line 45
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/c/a$a;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    return-object p0
.end method
