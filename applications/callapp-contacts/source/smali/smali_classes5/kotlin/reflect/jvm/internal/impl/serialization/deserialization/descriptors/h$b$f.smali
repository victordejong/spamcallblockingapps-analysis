.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 15421
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;->k(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;)Ljava/util/List;

    move-result-object v1

    .line 15513
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    .line 15514
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15515
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 15513
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v4

    .line 16079
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 15513
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 16608
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 15421
    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15516
    :cond_0
    check-cast v2, Ljava/util/Set;

    .line 15421
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
