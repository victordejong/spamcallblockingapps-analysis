.class public final Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContract()Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;
    .locals 1

    .line 117
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;->CONFLICTS_ONLY:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$a;

    return-object v0
.end method

.method public final isOverridable(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;
    .locals 8

    const-string v0, "superDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz v0, :cond_7

    .line 1065
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1070
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    const-string v4, "subDescriptor.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 1074
    :cond_1
    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v3

    .line 1078
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isHiddenToOvercomeSignatureClash()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    instance-of v5, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move-object v7, p1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isHiddenToOvercomeSignatureClash()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_1
    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_8

    .line 1080
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isHiddenToOvercomeSignatureClash()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 1086
    :cond_4
    instance-of v4, p3, Lkotlin/reflect/jvm/internal/impl/load/java/b/d;

    if-eqz v4, :cond_7

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_7

    .line 1092
    move-object v4, v3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    .line 1104
    :cond_6
    instance-of p3, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    if-eqz p3, :cond_8

    if-eqz v5, :cond_8

    .line 1105
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p3

    if-eqz p3, :cond_8

    const/4 p3, 0x2

    .line 1106
    invoke-static {v0, v2, v2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v3

    const-string v4, "superDescriptor.original"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    :cond_7
    :goto_2
    const/4 v1, 0x0

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 44
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 47
    :cond_9
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;

    invoke-virtual {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 48
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1

    .line 51
    :cond_a
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/resolve/ExternalOverridabilityCondition$b;

    return-object p1
.end method
