.class public final Lkotlin/reflect/jvm/internal/impl/builtins/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 28
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    .line 29
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->getErrorModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v1

    const-string v9, "getErrorModule()"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->e:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 30
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    .line 28
    invoke-direct/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    .line 33
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-virtual {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v8, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 37
    move-object v1, v8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const-string v0, "T"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v6, 0x0

    .line 36
    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/reflect/jvm/internal/impl/f/n;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v1

    .line 38
    invoke-static {v1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-virtual {v8, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Ljava/util/List;)V

    .line 40
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a()V

    .line 32
    sput-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    .line 44
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    .line 45
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->getErrorModule()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j;->d:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    move-object v11, v2

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 46
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    .line 47
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v15

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v1

    .line 44
    invoke-direct/range {v10 .. v17}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/e;ZZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    .line 49
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    .line 50
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 53
    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/f/f;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 52
    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl;->createWithDefaultBound(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/c/e;ILkotlin/reflect/jvm/internal/impl/f/n;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a(Ljava/util/List;)V

    .line 56
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->a()V

    .line 48
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/k;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 12

    const-string v0, "suspendFunType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    sget-boolean v1, Lkotlin/x;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "This type should be suspend function type: "

    .line 61
    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 60
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 65
    :cond_1
    :goto_0
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    .line 67
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->d(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 68
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 90
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 91
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 68
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 89
    check-cast v4, Ljava/util/Collection;

    .line 69
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 70
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v5

    if-eqz p1, :cond_3

    .line 74
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/k;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    goto :goto_2

    .line 75
    :cond_3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    :goto_2
    move-object v6, p1

    const-string p1, "if (isReleaseCoroutines) FAKE_CONTINUATION_CLASS_DESCRIPTOR_RELEASE.typeConstructor\n                    else FAKE_CONTINUATION_CLASS_DESCRIPTOR_EXPERIMENTAL.typeConstructor"

    .line 74
    invoke-static {v6, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->e(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->asTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    .line 69
    invoke-static/range {v5 .. v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleType$default(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    .line 68
    invoke-static {v4, p1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    const-string v4, "suspendFunType.builtIns.nullableAnyType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 64
    invoke-static {v0, v1, v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->a(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/c/b;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->h:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 86
    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->g:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
