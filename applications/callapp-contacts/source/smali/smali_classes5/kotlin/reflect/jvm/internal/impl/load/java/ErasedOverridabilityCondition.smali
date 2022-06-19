.class public final Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;
    .locals 1

    .line 61
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->SUCCESS_ONLY:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    return-object v0
.end method

.method public final isOverridable(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;
    .locals 4

    const-string p3, "superDescriptor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "subDescriptor"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of p3, p2, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    if-eqz p3, :cond_b

    move-object p3, p2

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "subDescriptor.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 37
    :cond_0
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 38
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 40
    :cond_2
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v3, "subDescriptor.valueParameters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object v0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Lkotlin/g/k;->d(Lkotlin/g/h;Lkotlin/jvm/functions/Function1;)Lkotlin/g/h;

    move-result-object v0

    .line 41
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 40
    invoke-static {v0, v3}, Lkotlin/g/k;->a(Lkotlin/g/h;Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object v0

    .line 42
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    const-string v2, "$this$plus"

    .line 40
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "elements"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/g/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 3542
    invoke-static {p3}, Lkotlin/a/n;->p(Ljava/lang/Iterable;)Lkotlin/g/h;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {v2}, Lkotlin/g/k;->a([Ljava/lang/Object;)Lkotlin/g/h;

    move-result-object p3

    invoke-static {p3}, Lkotlin/g/k;->a(Lkotlin/g/h;)Lkotlin/g/h;

    move-result-object p3

    .line 64
    invoke-interface {p3}, Lkotlin/g/h;->a()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 44
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    const/4 p3, 0x1

    goto :goto_3

    :cond_6
    const/4 p3, 0x0

    :goto_3
    if-eqz p3, :cond_7

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 46
    :cond_7
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;->buildSubstitutor()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-nez p1, :cond_8

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 48
    :cond_8
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz p3, :cond_9

    move-object p3, p1

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v2, "erasedSuper.typeParameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 50
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 4071
    sget-object p3, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p3, Ljava/util/List;

    .line 50
    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setTypeParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 54
    :cond_9
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    invoke-virtual {p3, p1, p2, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object p1

    const-string p2, "DEFAULT.isOverridableByWithoutExternalConditions(erasedSuper, subDescriptor, false).result"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$a;->a:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-ne p1, v1, :cond_a

    .line 56
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 57
    :cond_a
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 35
    :cond_b
    :goto_4
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1
.end method
