.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;
.super Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    .line 39
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    .line 40
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/Set<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            "+",
            "Ljava/util/Collection<",
            "+TR;>;>;)",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 123
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$1;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/utils/b$c;

    .line 128
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;

    invoke-direct {v2, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/utils/b$d;

    .line 122
    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;

    return-object p1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 3

    .line 149
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->isReal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 151
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "this.overriddenDescriptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 176
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    const-string v2, "it"

    .line 151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 175
    check-cast v0, Ljava/lang/Iterable;

    .line 151
    invoke-static {v0}, Lkotlin/a/n;->l(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    return-object p1
.end method


# virtual methods
.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            ")",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3076
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 54
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->b()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->m(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 4040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 55
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$b;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    return-object p1
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected final a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 66
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 5113
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 5114
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {v0, p2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 69
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 6040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 71
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 6060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 6112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 7050
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 7060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 7112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 73
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v6

    move-object v1, p2

    move-object v3, p1

    .line 67
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "resolveOverridesForStaticMembers(\n            name,\n            functionsFromSupertypes,\n            result,\n            ownerDescriptor,\n            c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9040
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 78
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p2

    const-string v0, "createEnumValueOfMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 79
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10040
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 79
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p2

    const-string v0, "createEnumValuesMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 85
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1;

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$computeNonDeclaredProperties$propertiesFromSupertypes$1;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v0

    .line 89
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 93
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    .line 12040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 95
    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 12060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 12112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 13050
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 13060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 13112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 14065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 97
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v7

    move-object v2, p1

    move-object v4, p2

    .line 91
    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "resolveOverridesForStaticMembers(\n                    name,\n                    propertiesFromSupertypes,\n                    result,\n                    ownerDescriptor,\n                    c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 101
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 155
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 102
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object v3

    .line 159
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 162
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 166
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 170
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    .line 15040
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 105
    move-object v6, v2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 15060
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 15112
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 16050
    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 16060
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 16112
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 17065
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 106
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    .line 104
    invoke-static/range {v3 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object v2

    const-string v3, "resolveOverridesForStaticMembers(\n                    name, it.value, result, ownerDescriptor, c.components.errorReporter,\n                    c.components.kotlinTypeChecker.overridingUtil\n                )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 172
    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 174
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 169
    check-cast v0, Ljava/util/Collection;

    .line 101
    invoke-interface {p2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected final b(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 46
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->m(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 2040
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 47
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->getFunctionNames()Ljava/util/Set;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    .line 3036
    sget-object p2, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p2, Ljava/util/Set;

    .line 47
    :cond_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->l()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Lkotlin/reflect/jvm/internal/impl/c/e;

    const/4 v0, 0x0

    .line 49
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j;->b:Lkotlin/reflect/jvm/internal/impl/c/e;

    aput-object v1, p2, v0

    invoke-static {p2}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object p1
.end method

.method protected final bridge synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 18040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    .line 37
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method protected final synthetic c()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;
    .locals 3

    .line 18043
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j$a;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/jvm/functions/Function1;)V

    .line 37
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
