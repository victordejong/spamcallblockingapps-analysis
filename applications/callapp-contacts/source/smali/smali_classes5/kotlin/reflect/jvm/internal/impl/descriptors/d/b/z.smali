.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/aa;


# instance fields
.field private final a:Ljava/lang/reflect/WildcardType;

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    .line 1071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 42
    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/reflect/Type;
    .locals 1

    .line 3023
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    .line 23
    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/a;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 2023
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    .line 39
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "reflectType.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/a/i;->d([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic e()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;
    .locals 5

    .line 4023
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    .line 3026
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5023
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    .line 3027
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 3028
    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    array-length v2, v1

    if-gt v2, v3, :cond_2

    .line 3032
    array-length v2, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const-string v0, "lowerBounds"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/a/i;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lowerBounds.single()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v4

    goto :goto_0

    .line 3033
    :cond_0
    array-length v1, v0

    if-ne v1, v3, :cond_1

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/a/i;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ub"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v4

    .line 23
    :cond_1
    :goto_0
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    return-object v4

    .line 3029
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 6023
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/z;->a:Ljava/lang/reflect/WildcardType;

    const-string v2, "Wildcard types with many bounds are not yet supported: "

    .line 3029
    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
