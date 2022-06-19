.class public final Lkotlin/reflect/jvm/internal/impl/resolve/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/java/a/g;)V
    .locals 1

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    .line 28
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 4

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;->SOURCE:Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;

    if-nez v1, :cond_0

    .line 33
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->s()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 37
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 38
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_JAVA_LOADER:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    :goto_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p1

    :cond_3
    return-object v2

    :cond_4
    if-nez v0, :cond_5

    return-object v2

    .line 44
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/c/b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->d()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v3, "fqName.parent()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    if-nez v0, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method
