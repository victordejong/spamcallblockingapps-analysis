.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/x;


# instance fields
.field private final a:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "typeVariable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/n;-><init>()V

    .line 25
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v1, v0, Ljava/lang/reflect/AnnotatedElement;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/a;
    .locals 0

    .line 4024
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/c;

    move-result-object p1

    .line 24
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/a;

    return-object p1
.end method

.method public final synthetic b()Ljava/util/Collection;
    .locals 1

    .line 5024
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;)Ljava/util/List;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 24
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/f;

    const-string v1, "this"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic d()Ljava/util/Collection;
    .locals 6

    .line 2029
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "typeVariable.bounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 2049
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 2050
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 2051
    check-cast v4, Ljava/lang/reflect/Type;

    .line 2029
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2052
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 2030
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3028
    :cond_1
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/l;->a:Ljava/lang/reflect/Type;

    .line 2030
    :goto_1
    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 24
    :cond_2
    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 42
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 2

    .line 40
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(typeVariable.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
