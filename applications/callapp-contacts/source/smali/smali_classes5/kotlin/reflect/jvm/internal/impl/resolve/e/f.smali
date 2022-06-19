.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/f;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;)V
    .locals 1

    const-string v0, "workerScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

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

    .line 45
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

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

    .line 29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v0, :cond_2

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    :cond_2
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    goto :goto_1

    :cond_3
    move-object p2, v0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    .line 29
    :goto_1
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p2
.end method

.method public final synthetic getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 2

    const-string v0, "kindFilter"

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 1153
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i()I

    move-result v0

    .line 2113
    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2115
    :cond_0
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    invoke-direct {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;-><init>(ILjava/util/List;)V

    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    .line 3071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    goto :goto_2

    .line 1035
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1056
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 1065
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1066
    :cond_3
    move-object p1, p2

    check-cast p1, Ljava/util/List;

    .line 27
    :goto_2
    check-cast p1, Ljava/util/Collection;

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

    .line 43
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

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

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getVariableNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/f;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    const-string v1, "Classes from "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
