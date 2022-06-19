.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "SourceFile"


# instance fields
.field private final _collectAnnotations:Z

.field private _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field private final _typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 44
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 45
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    return-void
.end method

.method private _findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object p1

    .line 116
    array-length v0, p1

    move-object v4, v2

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v6, p1, v3

    .line 117
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v7

    if-nez v7, :cond_0

    move-object v4, v6

    goto :goto_1

    :cond_0
    if-nez v5, :cond_1

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 126
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v4

    :cond_4
    if-nez v5, :cond_6

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    if-nez v4, :cond_5

    return-object p1

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 140
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p1

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_7

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move-object v12, v0

    move v0, p1

    move-object p1, v12

    :goto_3
    if-eqz p2, :cond_c

    .line 150
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object p2

    array-length v3, p2

    move-object v7, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    aget-object v8, p2, v6

    .line 151
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v9

    if-nez v9, :cond_8

    if-eqz v4, :cond_b

    .line 153
    invoke-virtual {p0, v4, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-object v4, v2

    goto :goto_7

    :cond_8
    if-eqz v5, :cond_b

    if-nez v7, :cond_9

    .line 160
    new-array v7, v0, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v0, :cond_9

    .line 162
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 165
    :cond_9
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v0, :cond_b

    .line 168
    aget-object v11, v7, v10

    invoke-virtual {v9, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 170
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v9, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v8

    .line 169
    invoke-interface {p1, v10, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_d

    .line 179
    invoke-virtual {p0, v4, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    :cond_d
    :goto_8
    if-ge v1, v0, :cond_f

    .line 182
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez p2, :cond_e

    .line 185
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object p2

    .line 184
    invoke-interface {p1, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    return-object p1
.end method

.method private _findPotentialFactories(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 197
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v8, v2, v6

    .line 198
    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v7, :cond_0

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 206
    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v7, :cond_3

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 225
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 227
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 228
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_4

    .line 230
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_8

    .line 235
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    move-object v11, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_8

    aget-object v12, v8, v10

    .line 236
    invoke-static {v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez v11, :cond_5

    .line 240
    new-array v11, v3, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v3, :cond_5

    .line 242
    new-instance v14, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    invoke-direct {v14, v15}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 245
    :cond_5
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v13, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v3, :cond_7

    .line 247
    aget-object v15, v11, v14

    invoke-virtual {v13, v15}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 249
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v13, v2, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v12

    .line 248
    invoke-interface {v6, v14, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    if-ge v5, v3, :cond_a

    .line 258
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v8, :cond_9

    .line 260
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    move-object/from16 v9, p2

    .line 264
    invoke-static {v8, v9, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->narrowMethodTypeParameters(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    move-result-object v10

    .line 267
    invoke-virtual {v0, v8, v10, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v8

    .line 266
    invoke-interface {v6, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    move-object/from16 v9, p2

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    return-object v6
.end method

.method private static _isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 387
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    return-object p1

    .line 391
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    return-object p1
.end method

.method private final collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 0

    .line 395
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 397
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    return-object p1
.end method

.method private collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 5

    .line 365
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_2

    .line 366
    array-length v0, p1

    .line 367
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 369
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 372
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 374
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 378
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object p1
.end method

.method public static collectCreators(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p5, v0

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;

    invoke-direct {v0, p0, p2, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V

    .line 61
    invoke-virtual {v0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    move-result-object p0

    return-object p0
.end method

.method private static isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialFactories(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 77
    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz p2, :cond_4

    .line 78
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    .line 85
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 86
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    .line 90
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 95
    :cond_4
    new-instance p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {p2, p3, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method

.method protected final constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 3

    .line 284
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method protected final constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 3

    .line 350
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 351
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 352
    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    .line 353
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    invoke-direct {p3, p2, p1, v1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object p3

    :cond_0
    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p3

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0

    .line 359
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    .line 360
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p3

    .line 360
    :goto_0
    invoke-direct {p0, v2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p3

    invoke-direct {v0, p2, p1, v1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method protected final constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 8

    .line 293
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 295
    new-instance p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 296
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    invoke-direct {p2, v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object p2

    :cond_0
    if-nez v0, :cond_1

    .line 304
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    sget-object p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 311
    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    .line 316
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 318
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    array-length v4, v1

    add-int/2addr v4, v7

    if-ne v0, v4, :cond_2

    .line 320
    array-length v2, v1

    add-int/2addr v2, v7

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 321
    array-length v4, v1

    invoke-static {v1, v5, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    array-length v2, v1

    add-int/2addr v2, v6

    if-ne v0, v2, :cond_3

    .line 328
    array-length v2, v1

    add-int/2addr v2, v6

    new-array v2, v2, [[Ljava/lang/annotation/Annotation;

    .line 329
    array-length v4, v1

    invoke-static {v1, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v1, v2, v5

    .line 331
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    goto :goto_3

    .line 335
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 337
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    array-length p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    .line 335
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    if-nez p2, :cond_6

    goto :goto_2

    .line 341
    :cond_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 340
    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    .line 343
    :goto_3
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method
