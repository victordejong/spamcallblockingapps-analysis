.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 6

    .line 1043
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v0

    .line 1112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2056
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->l:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

    .line 1043
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 3028
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 1043
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fqName.asString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 1094
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1103
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1102
    check-cast v3, Ljava/lang/String;

    .line 1044
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    const-string v5, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v5

    .line 3112
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4047
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 1045
    invoke-static {v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_0

    .line 1102
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 1094
    check-cast v2, Ljava/lang/Iterable;

    .line 1046
    invoke-static {v2}, Lkotlin/a/ai;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
