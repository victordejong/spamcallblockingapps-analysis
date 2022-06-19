.class public final Lkotlin/reflect/jvm/internal/impl/resolve/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 3

    .line 74
    :goto_0
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/a/n;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 68
    :cond_1
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, v0, v3, p4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/jvm/functions/Function2;Z)Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    .line 70
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result p2

    if-ne p1, p2, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/jvm/functions/Function2;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    .line 123
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p2

    .line 127
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-nez v0, :cond_1

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/b;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Z)Z

    move-result p1

    return p1

    .line 128
    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/b;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z

    move-result p0

    return p0
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/b;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, p3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;ZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;ZZ)Z
    .locals 5

    .line 32
    instance-of p4, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p4, :cond_0

    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p4, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1056
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 34
    :cond_0
    instance-of p4, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p4, :cond_1

    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p4, :cond_1

    .line 35
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 36
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 1063
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/resolve/b$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b$c;

    check-cast p4, Lkotlin/jvm/functions/Function2;

    .line 1059
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ZLkotlin/jvm/functions/Function2;)Z

    move-result p1

    return p1

    .line 40
    :cond_1
    instance-of p4, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz p4, :cond_7

    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    if-eqz p4, :cond_7

    .line 41
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 42
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 45
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    const-string v0, "a"

    .line 1079
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 1088
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1089
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->isExpect()Z

    move-result v0

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->isExpect()Z

    move-result v3

    if-ne v0, v3, :cond_6

    .line 1090
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_6

    .line 1092
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v0

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    :cond_4
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, p2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 1098
    :cond_5
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/b$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/b$a;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v3, v4, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/jvm/functions/Function2;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1100
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/b$b;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/b;ZLkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    invoke-static {p4, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object p3

    const-string p4, "fun areCallableDescriptorsEquivalent(\n        a: CallableDescriptor,\n        b: CallableDescriptor,\n        allowCopiesFromTheSameDeclaration: Boolean,\n        distinguishExpectsAndNonExpects: Boolean = true,\n        ignoreReturnType: Boolean = false,\n        kotlinTypeRefiner: KotlinTypeRefiner\n    ): Boolean {\n        if (a == b) return true\n        if (a.name != b.name) return false\n        if (distinguishExpectsAndNonExpects && a is MemberDescriptor && b is MemberDescriptor && a.isExpect != b.isExpect) return false\n        if (a.containingDeclaration == b.containingDeclaration) {\n            if (!allowCopiesFromTheSameDeclaration) return false\n            if (a.singleSource() != b.singleSource()) return false\n        }\n\n        // Distinct locals are not equivalent\n        if (DescriptorUtils.isLocal(a) || DescriptorUtils.isLocal(b)) return false\n\n        if (!ownersEquivalent(a, b, { _, _ -> false }, allowCopiesFromTheSameDeclaration)) return false\n\n        val overridingUtil = OverridingUtil.create(kotlinTypeRefiner) eq@{ c1, c2 ->\n            if (c1 == c2) return@eq true\n\n            val d1 = c1.declarationDescriptor\n            val d2 = c2.declarationDescriptor\n\n            if (d1 !is TypeParameterDescriptor || d2 !is TypeParameterDescriptor) return@eq false\n\n            areTypeParametersEquivalent(d1, d2, allowCopiesFromTheSameDeclaration) { x, y -> x == a && y == b }\n        }\n\n        return overridingUtil.isOverridableBy(a, b, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n                && overridingUtil.isOverridableBy(b, a, null, !ignoreReturnType).result == OverrideCompatibilityInfo.Result.OVERRIDABLE\n\n    }"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 1111
    invoke-virtual {p3, p1, p2, p4, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v0, v3, :cond_6

    .line 1112
    invoke-virtual {p3, p2, p1, p4, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne p1, p2, :cond_6

    return v1

    :cond_6
    :goto_0
    return v2

    .line 48
    :cond_7
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz p3, :cond_8

    instance-of p3, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz p3, :cond_8

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 50
    :cond_8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
