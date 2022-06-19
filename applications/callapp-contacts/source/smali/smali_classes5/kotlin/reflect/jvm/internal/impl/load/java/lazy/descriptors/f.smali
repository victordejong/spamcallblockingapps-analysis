.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;
.super Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;
.source "SourceFile"


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field final b:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

.field private final i:Z

.field private final j:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    check-cast p5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-direct {p0, p1, p5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    .line 66
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 67
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    .line 68
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->i:Z

    .line 1127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 83
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$f;

    invoke-direct {p3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 2127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 796
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$i;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 3127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 800
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$g;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->k:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 4127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 804
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;

    invoke-direct {p3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$j;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->l:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 64
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 2

    .line 42076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 41197
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 41893
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 41894
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 41895
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    .line 41197
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;)Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41896
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 41893
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 490
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 950
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 951
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 491
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 952
    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 954
    :cond_0
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;"
        }
    .end annotation

    .line 288
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v0, "identifier(getterName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 913
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 914
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 289
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 291
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, p2

    :cond_2
    if-eqz v0, :cond_0

    :cond_3
    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;"
        }
    .end annotation

    .line 273
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 274
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/h;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/h;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 6066
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 276
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-static {p1, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p1

    return-object p1

    .line 281
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;"
        }
    .end annotation

    .line 446
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->isSuspend()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 448
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v2, "descriptor.name"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 936
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 937
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 449
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_3
    return-object v1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 0

    .line 244
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p0

    .line 245
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setName(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 246
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setSignatureChange()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 247
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 248
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;"
        }
    .end annotation

    .line 463
    check-cast p2, Ljava/lang/Iterable;

    .line 941
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 942
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 463
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getInitialSignatureDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v3

    if-nez v3, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    return-object p0

    .line 466
    :cond_4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setHiddenToOvercomeSignatureClash()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/k;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;
    .locals 10

    .line 44066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 45060
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 43685
    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    .line 46060
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 46112
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 47054
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 43687
    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/4 v4, 0x0

    .line 43683
    invoke-static {v0, v1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    move-result-object v1

    const-string v2, "createJavaConstructor(\n            classDescriptor,\n            c.resolveAnnotations(constructor), /* isPrimary = */\n            false,\n            c.components.sourceElementFactory.source(constructor)\n        )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47060
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 43692
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/d/y;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p0, v2, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p0

    .line 43693
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/k;->e()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;

    move-result-object v2

    .line 43695
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v5

    const-string v6, "classDescriptor.declaredTypeParameters"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Collection;

    .line 43696
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/k;->i()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 43968
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 43969
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 43970
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/d/x;

    .line 47113
    iget-object v9, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 43696
    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43971
    :cond_0
    check-cast v7, Ljava/util/List;

    .line 43968
    check-cast v7, Ljava/lang/Iterable;

    .line 43695
    invoke-static {v5, v7}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 47207
    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;->a:Ljava/util/List;

    .line 43698
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/k;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p1

    invoke-virtual {v1, v6, p1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;

    .line 43699
    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasStableParameterNames(Z)V

    .line 48207
    iget-boolean p1, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;->b:Z

    .line 43700
    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasSynthesizedParameterNames(Z)V

    .line 43702
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 49112
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 50051
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 43704
    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    invoke-interface {p0, v3, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;Lkotlin/reflect/jvm/internal/impl/descriptors/j;)V

    return-object v1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/load/java/d/g;
    .locals 0

    .line 64
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    return-object p0
.end method

.method private final a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;Z)V"
        }
    .end annotation

    .line 9066
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 10060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 10112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 11050
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 11060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 11112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 12065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 370
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p1

    .line 368
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object p2

    const-string p3, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, result, ownerDescriptor, c.components.errorReporter,\n            c.components.kotlinTypeChecker.overridingUtil\n        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 374
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 376
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    .line 932
    new-instance p4, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p4, Ljava/util/Collection;

    .line 933
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 934
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 379
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    const-string v2, "resolvedOverride"

    if-nez v1, :cond_1

    .line 380
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    :goto_1
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 935
    :cond_2
    check-cast p4, Ljava/util/List;

    .line 932
    check-cast p4, Ljava/util/Collection;

    .line 377
    invoke-interface {p1, p4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/j;ILkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/j;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/q;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")V"
        }
    .end annotation

    .line 779
    move-object/from16 v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 782
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    .line 783
    invoke-interface/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    .line 785
    invoke-static/range {p5 .. p5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    const-string v0, "makeNotNullable(returnType)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    invoke-interface/range {p4 .. p4}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->k()Z

    move-result v7

    if-nez p6, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 790
    :cond_0
    invoke-static/range {p6 .. p6}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    :goto_0
    move-object v12, p0

    move-object v10, v0

    .line 33060
    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 33112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 34054
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 791
    move-object/from16 v2, p4

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 778
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v13

    move/from16 v3, p3

    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    move-object v0, p1

    .line 777
    invoke-interface {p1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)V"
        }
    .end annotation

    .line 567
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 568
    invoke-direct {p0, v0, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 571
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 396
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 12428
    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-eqz v6, :cond_1

    .line 12430
    move-object v8, v6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 12431
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    const-string v9, "identifier(nameInJava)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-object/from16 v10, p1

    .line 12432
    invoke-static {v9, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v9

    .line 12434
    move-object v11, v9

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v6, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 12435
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v9, v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v10, p1

    const/4 v6, 0x0

    .line 397
    :goto_1
    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 13414
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v6

    if-nez v6, :cond_2

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 14472
    :cond_2
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    const-string v9, "overridden.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 14944
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 14473
    invoke-static {v11, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 14472
    :goto_3
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-nez v9, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    .line 14475
    :cond_5
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v8

    .line 14478
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getValueParameters()Ljava/util/List;

    move-result-object v11

    const-string v12, "overridden.valueParameters"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    .line 14946
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 14947
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 14948
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 14478
    new-instance v14, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v15

    const-string v7, "it.type"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result v7

    invoke-direct {v14, v15, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/b/l;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)V

    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 14949
    :cond_6
    check-cast v12, Ljava/util/List;

    .line 14946
    check-cast v12, Ljava/util/Collection;

    .line 14479
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v7

    const-string v9, "override.valueParameters"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/Collection;

    move-object v9, v6

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 14477
    invoke-static {v12, v7, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/k;->a(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object v7

    .line 14476
    invoke-interface {v8, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 14482
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setSignatureChange()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 14483
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 14484
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    :goto_5
    if-nez v7, :cond_7

    goto/16 :goto_2

    .line 13418
    :cond_7
    invoke-direct {v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_9

    goto/16 :goto_2

    .line 13419
    :cond_9
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v7, v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v7

    .line 400
    :goto_7
    invoke-static {v2, v7}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 404
    invoke-direct {v0, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 3

    .line 262
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;Z)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;->b()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v0

    const-string v2, "DEFAULT.isOverridableByWithoutExternalConditions(superDescriptor, this, true).result"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v0, v2, :cond_0

    .line 265
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;

    invoke-virtual {v0, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 6

    .line 158
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "function.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/w;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 871
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 872
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 159
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 873
    instance-of v4, v1, Ljava/util/Collection;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 874
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 160
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$h;

    invoke-direct {v5, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$h;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "function.name.asString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    return v3

    .line 172
    :cond_8
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 173
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 174
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v3
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 1

    .line 255
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    :cond_0
    const-string v0, "if (superDescriptor.isRemoveAtByIndex) subDescriptor.original else subDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;
    .locals 3

    .line 42200
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 42897
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 42898
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 42201
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42202
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_0

    .line 42201
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42899
    :cond_3
    check-cast p1, Ljava/util/List;

    .line 42897
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    .line 647
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 959
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 960
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 648
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/a/a/d;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 961
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 962
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 963
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    .line 648
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 964
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 648
    check-cast v3, Ljava/lang/Iterable;

    .line 965
    invoke-static {v1, v3}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 967
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 958
    check-cast v1, Ljava/lang/Iterable;

    .line 649
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;"
        }
    .end annotation

    .line 298
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/t;->a:Lkotlin/reflect/jvm/internal/impl/load/java/t;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/t;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(JvmAbi.setterName(name.asString()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 918
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 919
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 299
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 301
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->r(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v3

    const-string v4, "descriptor.valueParameters"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    return-object v1
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 18

    move-object/from16 v7, p0

    .line 50052
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result v0

    .line 50053
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->j()Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 50069
    :cond_0
    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 50058
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    .line 50070
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50071
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 50072
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 50058
    iget-object v4, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/4 v9, 0x1

    .line 50057
    invoke-static {v8, v2, v9, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    move-result-object v10

    const-string v2, "createJavaConstructor(\n            classDescriptor, Annotations.EMPTY, /* isPrimary = */ true, c.components.sourceElementFactory.source(jClass)\n        )"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    if-eqz v0, :cond_a

    .line 50060
    move-object v12, v10

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;

    .line 50073
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->t()Ljava/util/Collection;

    move-result-object v0

    .line 50074
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50076
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v3, 0x2

    invoke-static {v2, v9, v1, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v14

    .line 50078
    check-cast v0, Ljava/lang/Iterable;

    .line 50307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50309
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50310
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    .line 50078
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/u;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50311
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50313
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50316
    :cond_2
    new-instance v0, Lkotlin/n;

    invoke-direct {v0, v2, v3}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50317
    iget-object v2, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 50078
    check-cast v2, Ljava/util/List;

    .line 50318
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 50078
    move-object v15, v0

    check-cast v15, Ljava/util/List;

    .line 50080
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    sget-boolean v3, Lkotlin/x;->a:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    const-string v1, "There can\'t be more than one method named \'value\' in annotation class: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 50081
    :cond_5
    :goto_2
    invoke-static {v2}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    if-eqz v16, :cond_7

    .line 50083
    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->l()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v0

    .line 50085
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/f;

    if-eqz v2, :cond_6

    .line 50086
    new-instance v1, Lkotlin/n;

    .line 50319
    iget-object v2, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50320
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 50087
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/f;

    invoke-virtual {v2, v0, v14, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/load/java/d/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 50321
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50322
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 50088
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/f;->d()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v0

    invoke-virtual {v3, v0, v14}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 50086
    invoke-direct {v1, v2, v0}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 50091
    :cond_6
    new-instance v2, Lkotlin/n;

    .line 50323
    iget-object v3, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50324
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 50091
    invoke-virtual {v3, v0, v14}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    .line 50325
    :goto_3
    iget-object v0, v1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 50084
    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 50326
    iget-object v0, v1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 50084
    move-object v6, v0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 50093
    move-object v1, v13

    check-cast v1, Ljava/util/List;

    move-object v2, v12

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/j;ILkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    :cond_7
    if-eqz v16, :cond_8

    const/16 v16, 0x1

    goto :goto_4

    :cond_8
    const/16 v16, 0x0

    .line 50097
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v17, v0, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    .line 50327
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50328
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 50098
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->l()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v2

    invoke-virtual {v1, v2, v14}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    .line 50099
    move-object v1, v13

    check-cast v1, Ljava/util/List;

    move-object v2, v12

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    add-int v3, v0, v16

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/j;ILkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    move/from16 v0, v17

    goto :goto_5

    .line 50102
    :cond_9
    check-cast v13, Ljava/util/List;

    goto :goto_6

    .line 50061
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 50062
    :goto_6
    invoke-virtual {v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasSynthesizedParameterNames(Z)V

    .line 50329
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v1, "classDescriptor.visibility"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50330
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/r;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50331
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string v1, "PROTECTED_AND_PACKAGE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50064
    :cond_b
    invoke-virtual {v10, v13, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;

    .line 50065
    invoke-virtual {v10, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasStableParameterNames(Z)V

    .line 50066
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 50334
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 50335
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 50336
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 50067
    iget-object v1, v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    move-object v2, v10

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;Lkotlin/reflect/jvm/internal/impl/descriptors/j;)V

    .line 50068
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v10
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 5

    .line 185
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 187
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 877
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 886
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 885
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 188
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 885
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 889
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 191
    check-cast v1, Ljava/lang/Iterable;

    .line 890
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 891
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 192
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_4
    return v2
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z
    .locals 5

    .line 675
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v3

    const-string v4, "builtinWithErasedParameters.original"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 0

    .line 64
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-object p0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)Z"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 311
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    .line 312
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p2

    if-nez v0, :cond_1

    return v1

    .line 315
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p2, :cond_3

    .line 317
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 7

    .line 206
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 900
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 901
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 210
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 902
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 903
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 210
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/load/java/x;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 211
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_5

    .line 213
    invoke-static {p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v1

    .line 215
    check-cast v4, Ljava/lang/Iterable;

    .line 905
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 906
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 215
    move-object v6, v1

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/w;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    return v5

    :cond_6
    return v2
.end method

.method public static final synthetic d(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 0

    .line 64
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->k:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-object p0
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/load/java/b/g;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "+",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/b/g;"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 609
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 611
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->at_()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const/4 v2, 0x1

    if-nez p2, :cond_2

    goto :goto_1

    .line 616
    :cond_2
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v3

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sget-boolean v3, Lkotlin/x;->a:Z

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Different accessors modalities when creating overrides for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25066
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 617
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "for getter is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    .line 617
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but for setter is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    goto :goto_2

    .line 618
    :cond_4
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    .line 617
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 616
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 621
    :cond_5
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/e;

    .line 26066
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 621
    invoke-direct {v2, v3, v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/e;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    .line 623
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 26071
    sget-object v3, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v3, Ljava/util/List;

    .line 623
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/e;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    .line 626
    move-object p1, v2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 627
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v10

    move-object v5, p1

    .line 625
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    move-result-object v3

    .line 629
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 26227
    iput-object v0, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 630
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/e;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    const-string v0, "createGetter(\n            propertyDescriptor, getterMethod.annotations, /* isDefault = */false,\n            /* isExternal = */ false, /* isInline = */ false, getterMethod.source\n        ).apply {\n            initialSignatureDescriptor = getterMethod\n            initialize(propertyDescriptor.type)\n        }"

    .line 628
    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 634
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "setterMethod.valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-eqz v0, :cond_6

    .line 636
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 637
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v11

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v12

    move-object v5, p1

    .line 635
    invoke-static/range {v5 .. v12}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/y;

    move-result-object v1

    .line 639
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 27227
    iput-object p2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    goto :goto_3

    .line 634
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "No parameter found for "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 643
    :cond_7
    :goto_3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    invoke-virtual {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    return-object v2
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 5

    .line 220
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v2, "name"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 909
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 910
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 223
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->isSuspend()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return v4

    :cond_3
    return v1
.end method

.method private final e()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .line 653
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->i:Z

    if-eqz v0, :cond_0

    .line 28066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 653
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 29060
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 29112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 30065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 656
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getKotlinTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v0

    .line 30066
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 656
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;->refineSupertypes(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private final e(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Lkotlin/reflect/jvm/internal/impl/descriptors/as;
    .locals 6

    .line 228
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "valueParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 230
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    :goto_1
    move-object v4, v3

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/c;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/c;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    .line 5060
    :goto_3
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 229
    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/k;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_5

    return-object v3

    .line 235
    :cond_5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v3

    .line 236
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getValueParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/a/n;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v3, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setValueParameters(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 237
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object p1

    .line 238
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 239
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;->setSuspend(Z)V

    :cond_6
    return-object p1
.end method


# virtual methods
.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;)Ljava/util/Set;
    .locals 3
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

    .line 852
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->getFunctionNames()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 853
    :cond_0
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 35076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 853
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 36066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 854
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 982
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 983
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 855
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getVariableNames()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 984
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 986
    :cond_1
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/Set;

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

    .line 849
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->k:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
    .locals 1

    .line 34066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 830
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/q;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodTypeParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 31112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 32049
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

    .line 32066
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    .line 663
    invoke-interface/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;

    move-result-object p1

    const-string p2, "c.components.signaturePropagator.resolvePropagatedSignature(\n            method, ownerDescriptor, returnType, null, valueParameters, methodTypeParameters\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;

    .line 32080
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v1, :cond_0

    const/4 p3, 0x4

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->a(I)V

    :cond_0
    const-string p3, "propagated.returnType"

    .line 667
    invoke-static {v1, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32085
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->b:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 32090
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->c:Ljava/util/List;

    if-nez v3, :cond_1

    const/4 p3, 0x5

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->a(I)V

    :cond_1
    const-string p3, "propagated.valueParameters"

    .line 667
    invoke-static {v3, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32095
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->d:Ljava/util/List;

    if-nez v4, :cond_2

    const/4 p3, 0x6

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->a(I)V

    :cond_2
    const-string p3, "propagated.typeParameters"

    .line 667
    invoke-static {v4, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32099
    iget-boolean v5, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->f:Z

    .line 32104
    iget-object v6, p1, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->e:Ljava/util/List;

    if-nez v6, :cond_3

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j$a;->a(I)V

    :cond_3
    const-string p1, "propagated.errors"

    .line 668
    invoke-static {v6, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    .line 666
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p2
.end method

.method protected final a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 10
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

    .line 321
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object v6

    .line 323
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a:Lkotlin/reflect/jvm/internal/impl/load/java/e;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/e;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 324
    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    .line 923
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 924
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 324
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 926
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 927
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 329
    invoke-direct {p0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 928
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 926
    check-cast v1, Ljava/util/Collection;

    .line 327
    invoke-direct {p0, p1, p2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Z)V

    return-void

    .line 335
    :cond_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v8

    .line 339
    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    .line 6071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 339
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 7066
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 339
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 8060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 8112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 9065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 340
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v5

    move-object v0, p2

    .line 338
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object v9

    const-string v0, "resolveOverridesForNonStaticMembers(\n            name, functionsFromSupertypes, emptyList(), ownerDescriptor, ErrorReporter.DO_NOTHING,\n            c.components.kotlinTypeChecker.overridingUtil\n        )"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v9

    move-object v4, p1

    .line 344
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 351
    move-object v4, v8

    check-cast v4, Ljava/util/Collection;

    .line 352
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v0, p0

    .line 350
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 356
    check-cast v6, Ljava/lang/Iterable;

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 930
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 356
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 931
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 929
    check-cast v0, Ljava/util/Collection;

    .line 356
    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v0, v8}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 358
    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Z)V

    return-void
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)V
    .locals 10
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

    .line 532
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 15578
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    if-eqz v0, :cond_0

    .line 15579
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 17060
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 16585
    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v3

    .line 17066
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 16588
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v5

    const/4 v6, 0x0

    .line 16589
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    .line 18060
    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 18112
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 19054
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 16589
    move-object v9, v0

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v8, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/4 v9, 0x0

    .line 16587
    invoke-static/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    move-result-object v2

    const-string v3, "create(\n            ownerDescriptor, annotations, modality, method.visibility.toDescriptorVisibility(),\n            /* isVar = */ false, method.name, c.components.sourceElementFactory.source(method),\n            /* isStaticFinal = */ false\n        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16593
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;

    move-result-object v3

    const-string v4, "createDefaultGetter(propertyDescriptor, Annotations.EMPTY)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16594
    invoke-virtual {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;)V

    .line 19060
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 16596
    move-object v5, v2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v6, v0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/d/y;

    const/4 v7, 0x0

    .line 19204
    invoke-static {v4, v5, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v4

    .line 16596
    invoke-static {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 20071
    sget-object v4, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v4, Ljava/util/List;

    .line 16597
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    .line 16598
    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 15579
    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Set;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 539
    :cond_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v2

    .line 541
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/i$b;->a()Lkotlin/reflect/jvm/internal/impl/utils/i;

    move-result-object v3

    .line 543
    move-object v4, v2

    check-cast v4, Ljava/util/Set;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$d;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, p2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    .line 545
    check-cast v2, Ljava/lang/Iterable;

    const-string v4, "$this$minus"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "elements"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21054
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v2, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    .line 21055
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 21056
    invoke-static {v4}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    .line 21057
    :cond_2
    instance-of v5, v2, Ljava/util/Set;

    if-eqz v5, :cond_5

    .line 21058
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 21151
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21058
    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21152
    :cond_4
    move-object v2, v5

    check-cast v2, Ljava/util/Set;

    goto :goto_1

    .line 21059
    :cond_5
    new-instance v4, Ljava/util/LinkedHashSet;

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 21060
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 21061
    move-object v2, v4

    check-cast v2, Ljava/util/Set;

    .line 545
    :goto_1
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$e;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v2, v4, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Ljava/util/Set;Ljava/util/Collection;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V

    .line 552
    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 22066
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 23060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 23112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 24050
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 24060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 24112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 25065
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->u:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 556
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getOverridingUtil()Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    .line 550
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/a/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "resolveOverridesForNonStaticMembers(\n                name,\n                propertiesFromSupertypes + propertiesOverridesFromSuperTypes,\n                result,\n                ownerDescriptor,\n                c.components.errorReporter,\n                c.components.kotlinTypeChecker.overridingUtil\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/load/java/b/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z

    move-result p1

    return p1
.end method

.method protected final synthetic b(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 3

    const-string v0, "kindFilter"

    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 39075
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "ownerDescriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 39866
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39867
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 39076
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getFunctionNames()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 39868
    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 39077
    :cond_0
    check-cast v1, Ljava/util/LinkedHashSet;

    .line 40076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 39078
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 41076
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 39079
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->c()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 39080
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 64
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method protected final bridge synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 39066
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 64
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method protected final b(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 1
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

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final synthetic c()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;
    .locals 3

    .line 39072
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f$a;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;Lkotlin/jvm/functions/Function1;)V

    .line 64
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 35061
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 835
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->l:Lkotlin/reflect/jvm/internal/impl/f/h;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    :goto_0
    if-nez v0, :cond_2

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->l:Lkotlin/reflect/jvm/internal/impl/f/h;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p1

    :cond_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object v0
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
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 840
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

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
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 845
    invoke-super {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37060
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 37112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 38058
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 38066
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 860
    invoke-static {v0, p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/a/a;->a(Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/a/a/b;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 863
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->h:Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "Lazy Java member scope for "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
