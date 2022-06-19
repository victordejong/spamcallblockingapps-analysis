.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 2

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    return-object p0
.end method
