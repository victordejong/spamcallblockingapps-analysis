.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ax;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V
    .locals 1

    const-string v0, "containingDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "visibilityImpl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 35
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 100
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "declaredTypeParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->b:Ljava/util/List;

    return-void
.end method

.method public accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string/jumbo v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    invoke-interface {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d()Lkotlin/reflect/jvm/internal/impl/f/n;
.end method

.method public final e()Ljava/util/Collection;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 65
    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 67
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getConstructors()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "classDescriptor.constructors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 136
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 68
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->d()Lkotlin/reflect/jvm/internal/impl/f/n;

    move-result-object v5

    move-object/from16 v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "storageManager"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeAliasDescriptor"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "constructor"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_2

    goto/16 :goto_2

    .line 1179
    :cond_2
    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v15

    if-nez v15, :cond_3

    goto/16 :goto_2

    .line 1182
    :cond_3
    new-instance v24, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;

    const/4 v8, 0x0

    .line 1185
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v9

    .line 1186
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v10

    const-string v4, "constructor.kind"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v11

    const-string v4, "typeAliasDescriptor.source"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v4, v24

    move-object v6, v3

    move-object v7, v15

    .line 1182
    invoke-direct/range {v4 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Lkotlin/reflect/jvm/internal/impl/descriptors/c;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1191
    move-object/from16 v4, v24

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getValueParameters()Ljava/util/List;

    move-result-object v5

    .line 1190
    invoke-static {v4, v5, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getSubstitutedValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Ljava/util/List;

    move-result-object v20

    if-nez v20, :cond_4

    goto :goto_2

    .line 1194
    :cond_4
    invoke-interface {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    const-string v6, "typeAliasDescriptor.defaultType"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    .line 1196
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 1198
    :cond_5
    move-object/from16 v5, v24

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 1199
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v13, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 1200
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    .line 1197
    invoke-static {v5, v2, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v14

    :goto_1
    move-object/from16 v17, v14

    const/16 v18, 0x0

    .line 1207
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v19

    .line 1209
    move-object/from16 v21, v4

    check-cast v21, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1210
    sget-object v22, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 1211
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v23

    move-object/from16 v16, v24

    .line 1204
    invoke-virtual/range {v16 .. v23}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ad;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    .line 1214
    move-object/from16 v14, v24

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ac;

    :goto_2
    if-eqz v14, :cond_1

    .line 136
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 140
    :cond_6
    check-cast v1, Ljava/util/List;

    .line 128
    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method protected abstract f()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public getDeclaredTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "declaredTypeParametersImpl"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    .line 75
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    .line 4090
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 30
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 3090
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 30
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public bridge synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 2090
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    .line 30
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-object v0
.end method

.method public getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 1

    .line 86
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    return-object v0
.end method

.method public isActual()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInner()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->a()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c$b;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "typealias "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
