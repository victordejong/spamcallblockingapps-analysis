.class public final Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
.super Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/DynamicTypeMarker;


# instance fields
.field private final annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V
    .locals 2

    const-string v0, "builtIns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->f()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const-string v1, "builtIns.nothingType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string v1, "builtIns.nullableAnyType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    .line 47
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-void
.end method


# virtual methods
.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 47
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public final isMarkedNullable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p1
.end method

.method public final refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object p1
.end method

.method public final bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p1
.end method

.method public final render(Lkotlin/reflect/jvm/internal/impl/e/c;Lkotlin/reflect/jvm/internal/impl/e/f;)Ljava/lang/String;
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dynamic"

    return-object p1
.end method

.method public final replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
    .locals 2

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    return-object v0
.end method

.method public final bridge synthetic replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->replaceAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    return-object p1
.end method
