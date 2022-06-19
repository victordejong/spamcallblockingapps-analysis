.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/d/q;


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/r;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/z;",
            ">;"
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 26
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericParameterTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 26
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "member.parameterAnnotations"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [[Ljava/lang/annotation/Annotation;

    .line 3024
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Ljava/lang/reflect/Member;
    .locals 1

    .line 6024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 24
    check-cast v0, Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public final g()Lkotlin/reflect/jvm/internal/impl/load/java/d/b;
    .locals 3

    .line 4024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 32
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d$a;->a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/d;

    move-result-object v1

    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    return-object v1
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;",
            ">;"
        }
    .end annotation

    .line 5024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 35
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "member.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 40
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 41
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 35
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;

    invoke-direct {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/x;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 42
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final k()Z
    .locals 1

    const-string v0, "this"

    .line 24
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5130
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->g()Lkotlin/reflect/jvm/internal/impl/load/java/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic l()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;
    .locals 2

    .line 6029
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;

    .line 7024
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/s;->a:Ljava/lang/reflect/Method;

    .line 6029
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericReturnType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/w;

    move-result-object v0

    .line 24
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    return-object v0
.end method
