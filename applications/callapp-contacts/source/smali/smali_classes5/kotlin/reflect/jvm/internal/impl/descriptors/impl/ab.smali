.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field private final b:Lkotlin/reflect/jvm/internal/impl/c/b;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V
    .locals 1

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-void
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

    .line 7036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 6
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

    .line 46
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 1148
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->e()I

    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 46
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 47
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 3063
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 3101
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4084
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    .line 47
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/c$b;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 47
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 49
    :cond_1
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-interface {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 52
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    const-string v2, "subFqName.shortName()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    const-string v3, "name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6045
    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/c/e;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    goto :goto_1

    .line 6037
    :cond_3
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ab;->b:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v5, "fqName.child(name)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object v1

    .line 6038
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->e()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v1

    .line 54
    :goto_1
    invoke-static {v2, v4}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_5
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
