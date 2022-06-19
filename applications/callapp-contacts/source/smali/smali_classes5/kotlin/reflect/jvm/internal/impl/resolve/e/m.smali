.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "givenSubstitutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 32
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p1

    const-string p2, "givenSubstitutor.substitution"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/a;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->buildSubstitutor()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 36
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/m$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m$a;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->d:Lkotlin/Lazy;

    return-void
.end method

.method private final a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">(",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 63
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1077
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/a;->c(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 65
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_2
    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">(TD;)TD;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->c:Ljava/util/Map;

    .line 45
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->c:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 47
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/av;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/av;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->b:Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/av;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 109
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " substitution fails"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    const-string v0, "Unknown descriptor in scope: "

    .line 51
    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 45
    :cond_4
    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/e/m;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 0

    .line 30
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p0
.end method


# virtual methods
.method public final getClassifierNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getClassifierNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p1
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->d:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final getFunctionNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getFunctionNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getVariableNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/m;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getVariableNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 1

    .line 30
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$b;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    return-void
.end method
