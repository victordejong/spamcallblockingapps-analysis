.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 3

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 120
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 121
    :cond_1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method
