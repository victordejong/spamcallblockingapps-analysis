.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ai;


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final b:Lkotlin/reflect/jvm/internal/impl/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/a<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;)V
    .locals 4

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k$a;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 1035
    new-instance v2, Lkotlin/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lkotlin/e;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Lazy;

    .line 31
    invoke-direct {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 1127
    iget-object p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 34
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->b()Lkotlin/reflect/jvm/internal/impl/f/a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->b:Lkotlin/reflect/jvm/internal/impl/f/a;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;
    .locals 3

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3046
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/n;

    .line 37
    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/n;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->b:Lkotlin/reflect/jvm/internal/impl/f/a;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;

    invoke-direct {v2, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, p1, v2}, Lkotlin/reflect/jvm/internal/impl/f/a;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3050
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3062
    :cond_0
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->c:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    if-nez p1, :cond_1

    .line 3071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 27
    :cond_1
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    move-result-object p1

    invoke-static {p1}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
