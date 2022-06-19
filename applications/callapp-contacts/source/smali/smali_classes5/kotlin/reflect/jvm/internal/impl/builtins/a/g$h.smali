.class final Lkotlin/reflect/jvm/internal/impl/builtins/a/g$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/utils/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/utils/b$c<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$h;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 5

    .line 231
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 1235
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "it.typeConstructor.supertypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$h;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    .line 1346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1355
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1354
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 1236
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v2

    :goto_1
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v4, :cond_2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_0

    .line 1354
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1358
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 1346
    check-cast v1, Ljava/lang/Iterable;

    return-object v1
.end method
