.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 293
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1296
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object v2

    invoke-interface {v2, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1297
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-virtual {v2, p1, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)V

    .line 1299
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1300
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1302
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 2060
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2112
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3062
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->r:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;

    .line 1302
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 4060
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 1302
    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/k;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
