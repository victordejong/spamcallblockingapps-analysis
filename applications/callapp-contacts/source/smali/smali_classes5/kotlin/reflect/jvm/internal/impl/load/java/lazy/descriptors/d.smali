.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 44
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "kotlinScopes"

    const-string v4, "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 40
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 42
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 1127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 44
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;
    .locals 0

    .line 37
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    return-object p0
.end method

.method private final a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 3

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->e:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 0

    .line 37
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    return-object p0
.end method


# virtual methods
.method public final getClassifierNames()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/i;->n([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/j;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7042
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 85
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->getClassifierNames()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 55
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object v0

    .line 58
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    array-length v3, v0

    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 58
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 112
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->isExpect()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v4

    :cond_3
    return-object v1
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 5
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

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    .line 132
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 74
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v0

    .line 133
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 74
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 136
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 68
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    .line 127
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 68
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 128
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 68
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 131
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 63
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    .line 122
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 63
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 123
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 63
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 126
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getFunctionNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 137
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 76
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getFunctionNames()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 139
    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    check-cast v1, Ljava/util/Set;

    .line 5042
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 77
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->getFunctionNames()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final getVariableNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a()[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 142
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 80
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getVariableNames()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 144
    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_0
    check-cast v1, Ljava/util/Set;

    .line 6042
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    .line 81
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->getVariableNames()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 7112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8058
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 104
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-static {v0, p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/a/a;->a(Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/a/a/b;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void
.end method
