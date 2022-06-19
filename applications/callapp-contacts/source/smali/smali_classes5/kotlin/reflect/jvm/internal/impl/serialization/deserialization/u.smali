.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->c(I)Z

    move-result p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p0

    const-string p1, "fromString(getQualifiedClassName(index), isLocalClassName(index))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->d(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    const-string p1, "guessByFirstCharacter(getString(index))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
