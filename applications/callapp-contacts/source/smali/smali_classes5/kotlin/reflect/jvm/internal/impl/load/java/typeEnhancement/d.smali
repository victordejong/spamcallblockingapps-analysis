.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;,
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;)V
    .locals 1

    const-string v0, "javaResolverSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/c;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/jvm/functions/Function1;I)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            ">;I)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;"
        }
    .end annotation

    .line 71
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;

    invoke-direct {p1, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;IZ)V

    return-object p1

    .line 73
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_8

    .line 74
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/RawType;

    .line 75
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;

    move-object v4, p0

    move-object v6, p2

    move v7, p3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    move-result-object v10

    .line 76
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;

    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    move-result-object p2

    .line 3048
    iget p3, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    .line 4048
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 77
    :goto_0
    sget-boolean v0, Lkotlin/x;->a:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Different tree sizes of bounds: lower = ("

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p3

    .line 78
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5048
    iget v0, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), upper = ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6048
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 7048
    :cond_3
    :goto_1
    iget-boolean p3, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->b:Z

    if-nez p3, :cond_4

    .line 8048
    iget-boolean p3, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->b:Z

    if-eqz p3, :cond_5

    :cond_4
    const/4 v2, 0x1

    .line 8052
    :cond_5
    iget-object p3, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 84
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 9052
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 84
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p3

    if-eqz v2, :cond_7

    .line 87
    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    if-eqz p1, :cond_6

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    .line 10052
    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 11052
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 87
    invoke-direct {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_2

    .line 88
    :cond_6
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 12052
    iget-object p1, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 13052
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;->c:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 88
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 89
    :goto_2
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    .line 92
    :cond_7
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;

    .line 93
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 14048
    iget p3, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    .line 92
    invoke-direct {p2, p1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;IZ)V

    return-object p2

    .line 98
    :cond_8
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_9

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;

    invoke-static {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;

    return-object p1

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 102
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/jvm/functions/Function1;ILkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;Z)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            ">;I",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;",
            "Z)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 108
    invoke-static/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/p;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    invoke-direct {v1, v0, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    return-object v1

    .line 111
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v3

    if-nez v3, :cond_1

    .line 112
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    invoke-direct {v1, v0, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    return-object v1

    .line 114
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 115
    invoke-static {v3, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object v3

    .line 15000
    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->a:Ljava/lang/Object;

    .line 115
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    .line 16000
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 117
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    const-string v8, "enhancedClassifier.typeConstructor"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v8, p3, 0x1

    if-eqz v3, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 121
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getArguments()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 281
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 283
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v13, 0x1

    if-gez v13, :cond_3

    .line 284
    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_3
    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 122
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v16

    const-string v5, "arg.projectionKind"

    if-eqz v16, :cond_5

    .line 123
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    add-int/lit8 v8, v8, 0x1

    .line 16020
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    move/from16 v17, v8

    .line 126
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-ne v4, v8, :cond_4

    if-nez p5, :cond_4

    .line 127
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    .line 128
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v4, v8, v5}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    goto :goto_2

    .line 130
    :cond_4
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    const-string v5, "{\n                    TypeUtils.makeStarProjection(enhancedClassifier.typeConstructor.parameters[localArgIndex])\n                }"

    .line 129
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move/from16 v8, v17

    move-object/from16 v17, v7

    move-object/from16 v7, p0

    goto :goto_5

    .line 133
    :cond_5
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    move-object/from16 v17, v7

    move-object/from16 v7, p0

    invoke-direct {v7, v4, v1, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/jvm/functions/Function1;I)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;

    move-result-object v4

    if-nez v10, :cond_7

    .line 16048
    iget-boolean v10, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->b:Z

    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v10, 0x1

    .line 17048
    :goto_4
    iget v1, v4, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a:I

    add-int/2addr v8, v1

    .line 136
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v1, v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->createProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    .line 122
    :goto_5
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p2

    move v13, v15

    move-object/from16 v7, v17

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v7, p0

    .line 285
    move-object v1, v12

    check-cast v1, Ljava/util/List;

    .line 140
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v4, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object v2

    .line 18000
    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->a:Ljava/lang/Object;

    .line 140
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 19000
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    if-nez v10, :cond_a

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v4, 0x1

    :goto_7
    sub-int v5, v8, p3

    if-nez v4, :cond_b

    .line 144
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    return-object v1

    :cond_b
    const/4 v4, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 147
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v10

    aput-object v10, v8, v4

    const/4 v10, 0x1

    aput-object v3, v8, v10

    const/4 v3, 0x2

    aput-object v2, v8, v3

    .line 146
    invoke-static {v8}, Lkotlin/a/n;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 150
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v8

    .line 152
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    const/4 v12, 0x0

    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object v10, v1

    invoke-static/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleType$default(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 19022
    iget-boolean v3, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->d:Z

    if-eqz v3, :cond_c

    .line 159
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    :cond_c
    if-eqz v2, :cond_d

    .line 19023
    iget-boolean v2, v6, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->e:Z

    if-eqz v2, :cond_d

    const/4 v4, 0x1

    :cond_d
    if-eqz v4, :cond_e

    .line 161
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    goto :goto_8

    :cond_e
    move-object v0, v1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 163
    :goto_8
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v5, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;IZ)V

    return-object v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 62
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    .line 63
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object p0, p1

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    .line 67
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    .line 170
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameter;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/NotNullTypeParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d;->a(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/jvm/functions/Function1;I)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    .line 2048
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a;->b:Z

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
