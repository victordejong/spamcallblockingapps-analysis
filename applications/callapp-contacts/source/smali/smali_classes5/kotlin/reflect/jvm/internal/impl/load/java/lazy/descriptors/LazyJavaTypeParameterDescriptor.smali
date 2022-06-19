.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor;
.source "SourceFile"


# instance fields
.field private final annotations:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final javaTypeParameter:Lkotlin/reflect/jvm/internal/impl/load/java/d/x;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/x;ILkotlin/reflect/jvm/internal/impl/descriptors/k;)V
    .locals 12

    move-object v9, p0

    move-object v10, p1

    move-object v11, p2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeParameter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 39
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/x;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    .line 40
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 43
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 2112
    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3057
    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->m:Lkotlin/reflect/jvm/internal/impl/descriptors/aw;

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p3

    .line 36
    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/descriptors/aw;)V

    .line 32
    iput-object v10, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 33
    iput-object v11, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->javaTypeParameter:Lkotlin/reflect/jvm/internal/impl/load/java/d/x;

    .line 45
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;

    move-object v2, v11

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->annotations:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;

    return-void
.end method

.method private final computeNotEnhancedBounds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->javaTypeParameter:Lkotlin/reflect/jvm/internal/impl/load/java/d/x;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/x;->d()Ljava/util/Collection;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 56
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 3129
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4059
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 56
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->g()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const-string v1, "c.module.builtIns.anyType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 4129
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5059
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 57
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const-string v2, "c.module.builtIns.nullableAnyType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/j;

    .line 62
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 5124
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 62
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;
    .locals 1

    .line 45
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->annotations:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;

    return-object v0
.end method

.method public final processBoundsWithoutCycles(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 6112
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 7062
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    .line 67
    move-object v11, p0

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-object v12, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    const-string v2, "typeParameter"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7248
    check-cast p1, Ljava/lang/Iterable;

    .line 7668
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 7669
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7670
    move-object v5, v2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 7249
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$g;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v2}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 7251
    :cond_0
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;

    .line 7252
    move-object v4, v11

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    .line 8071
    sget-object v2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v2, Ljava/util/List;

    .line 7252
    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    const/4 v7, 0x0

    .line 7253
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/a;->TYPE_PARAMETER_BOUNDS:Lkotlin/reflect/jvm/internal/impl/load/java/a;

    const/4 v10, 0x1

    move-object v2, v13

    move-object v3, v1

    move-object v8, v12

    .line 7251
    invoke-direct/range {v2 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/Collection;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/a;Z)V

    const/4 v2, 0x0

    .line 8285
    invoke-virtual {v13, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/r;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;

    move-result-object v2

    .line 8590
    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 7255
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7671
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final reportSupertypeLoopError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final resolveUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;->computeNotEnhancedBounds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
