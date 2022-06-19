.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;)Ljava/lang/Object;
    .locals 6

    .line 39
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/d;->b()Lkotlin/jvm/functions/n;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 33
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;Lkotlin/jvm/functions/n;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/k<",
            "TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration<",
            "+TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/h<",
            "TT;>;",
            "Lkotlin/jvm/functions/n<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "-TT;-",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;",
            "Lkotlin/v;",
            ">;)TT;"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p5

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    :goto_0
    const-string v1, "kotlinType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "factory"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeMappingConfiguration"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "writeGenericType"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->preprocessType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-interface/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->releaseCoroutines()Z

    move-result v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    .line 53
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;

    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const-string v9, "<this>"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "type"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "typeFactory"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    invoke-interface {v4, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v1

    .line 1038
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    const-string v11, "["

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_b

    .line 1040
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1042
    invoke-interface {v6, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->a(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Ljava/lang/Object;

    move-result-object v1

    .line 1043
    invoke-interface {v4, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v4, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 1044
    :goto_2
    invoke-static {v6, v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/x;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_5

    .line 1047
    :cond_4
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getPrimitiveArrayType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/builtins/h;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1049
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->get(Lkotlin/reflect/jvm/internal/impl/builtins/h;)Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    .line 1052
    :cond_5
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isUnderKotlinPackage(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1053
    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getClassFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v12

    goto :goto_3

    :cond_6
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_b

    .line 2022
    iget-boolean v4, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->h:Z

    if-nez v4, :cond_a

    .line 1055
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->b()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1105
    instance-of v10, v4, Ljava/util/Collection;

    if-eqz v10, :cond_7

    move-object v10, v4

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1106
    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;

    .line 2041
    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/builtins/a/c$a;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 1055
    invoke-static {v10, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_b

    .line 1058
    :cond_a
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "byClassId(classId).internalName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    :cond_b
    :goto_5
    if-eqz v12, :cond_c

    .line 3015
    iget-boolean v1, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->b:Z

    .line 55
    invoke-static {v6, v12, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/x;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 56
    invoke-interface {v5, v0, v1, v2}, Lkotlin/jvm/functions/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 60
    :cond_c
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    .line 61
    instance-of v4, v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v4, :cond_e

    .line 62
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    if-nez v0, :cond_d

    .line 63
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->commonSupertype(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 71
    :cond_d
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->replaceArgumentsWithStarProjections(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    goto/16 :goto_0

    .line 77
    :cond_e
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 81
    move-object v1, v10

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v1, "error/NonExistentClass"

    .line 82
    invoke-interface {v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v3, v0, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->processErrorType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    if-eqz v7, :cond_f

    .line 84
    invoke-virtual {v7, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a(Ljava/lang/Object;)V

    :cond_f
    return-object v1

    .line 88
    :cond_10
    instance-of v4, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v4, :cond_19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 89
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v14, :cond_18

    .line 92
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 93
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    const-string v4, "memberProjection.type"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v4, v8, :cond_11

    const-string v0, "java/lang/Object"

    .line 97
    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v7, :cond_17

    .line 99
    invoke-virtual/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a()V

    .line 100
    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a(Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    if-eqz v7, :cond_12

    .line 104
    invoke-virtual/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->a()V

    .line 107
    :cond_12
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    const-string v4, "memberProjection.projectionKind"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "effectiveVariance"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3128
    iget-boolean v4, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->d:Z

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w$b;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v14, :cond_15

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    .line 3131
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->g:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    if-nez v0, :cond_16

    goto :goto_6

    .line 3130
    :cond_14
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->j:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    if-nez v0, :cond_16

    goto :goto_6

    .line 3129
    :cond_15
    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    move-object v2, v0

    :goto_6
    move-object v0, v1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 106
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    :cond_17
    :goto_7
    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    if-eqz v4, :cond_1e

    .line 119
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 4016
    iget-boolean v1, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->c:Z

    if-nez v1, :cond_1a

    .line 120
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;

    invoke-static {v1, v8}, Lkotlin/reflect/jvm/internal/impl/types/ExpandedTypeUtilsKt;->computeExpandedTypeForInlineClass(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v1, :cond_1a

    .line 4135
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    .line 4136
    iget-boolean v12, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->b:Z

    const/4 v13, 0x1

    iget-boolean v14, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->d:Z

    iget-boolean v15, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->e:Z

    iget-boolean v4, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->f:Z

    .line 4137
    iget-object v8, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->g:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    iget-boolean v9, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->h:Z

    iget-object v10, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->i:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->j:Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;

    const/16 v21, 0x0

    const/16 v22, 0x200

    const/16 v23, 0x0

    move-object v11, v0

    move/from16 v16, v4

    move-object/from16 v17, v8

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v2

    .line 4135
    invoke-direct/range {v11 .. v23}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;-><init>(ZZZZZLkotlin/reflect/jvm/internal/impl/load/kotlin/w;ZLkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0

    .line 5017
    :cond_1a
    iget-boolean v1, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->d:Z

    if-eqz v1, :cond_1b

    .line 130
    move-object v1, v10

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 131
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    .line 133
    :cond_1b
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    const-string v4, "descriptor.original"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->getPredefinedTypeForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 137
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v1, v4, :cond_1c

    .line 138
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 141
    :cond_1c
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    const-string v4, "enumClassIfEnumEntry.original"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    :cond_1d
    :goto_8
    invoke-interface {v5, v0, v1, v2}, Lkotlin/jvm/functions/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 150
    :cond_1e
    instance-of v1, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v1, :cond_20

    .line 152
    move-object v0, v10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getRepresentativeUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 153
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/d;->b()Lkotlin/jvm/functions/n;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    .line 151
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;Lkotlin/jvm/functions/n;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v7, :cond_1f

    .line 155
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    const-string v2, "descriptor.getName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5100
    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/h;->b(Ljava/lang/Object;)V

    :cond_1f
    return-object v0

    .line 159
    :cond_20
    instance-of v1, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v1, :cond_21

    .line 6025
    iget-boolean v1, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->k:Z

    if-eqz v1, :cond_21

    .line 160
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->b()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    goto/16 :goto_0

    .line 163
    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown type "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "no descriptor for type constructor of "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfigurationImpl;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfigurationImpl;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;

    .line 173
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->getPredefinedFullInternalNameForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 179
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/g;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safeIdentifier(klass.name).identifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v2, :cond_2

    .line 183
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p0

    .line 6063
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 6101
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fqName.asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/4 v2, 0x0

    const/16 v3, 0x2f

    .line 7063
    invoke-static {p0, v0, v3, v2}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :cond_2
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 191
    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;->getPredefinedInternalNameForClass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    .line 192
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;)Ljava/lang/String;

    move-result-object p0

    .line 194
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
