.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;
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
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 92
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 2061
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 3061
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 1093
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 1095
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1097
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 3076
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 1097
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;

    .line 1098
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;)Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    move-result-object v3

    .line 1099
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/b/f;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 4060
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 4112
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5051
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 1101
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/d/p;

    move-object v5, v3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-interface {v4, v2, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/p;Lkotlin/reflect/jvm/internal/impl/descriptors/as;)V

    .line 1102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v0
.end method
