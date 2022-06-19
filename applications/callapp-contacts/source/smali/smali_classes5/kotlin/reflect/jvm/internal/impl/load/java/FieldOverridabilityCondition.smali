.class public final Lkotlin/reflect/jvm/internal/impl/load/java/FieldOverridabilityCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;
    .locals 1

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->BOTH:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    return-object v0
.end method

.method public final isOverridable(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;
    .locals 1

    const-string p3, "superDescriptor"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "subDescriptor"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of p3, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-eqz p3, :cond_5

    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    if-nez p3, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p3

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 35
    :cond_1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 36
    :cond_2
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 36
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 32
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1
.end method
