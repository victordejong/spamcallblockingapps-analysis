.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 6

    .line 1046
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    .line 1108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1117
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1116
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    .line 1047
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v4

    .line 2112
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3048
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    .line 1047
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-virtual {v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1116
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1120
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 1108
    check-cast v2, Ljava/lang/Iterable;

    .line 1045
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/utils/h;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 1122
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method
