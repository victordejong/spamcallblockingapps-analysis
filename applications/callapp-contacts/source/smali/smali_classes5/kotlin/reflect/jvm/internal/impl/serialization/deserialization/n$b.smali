.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/c/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1053
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;

    .line 2040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;

    .line 3036
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1053
    check-cast v0, Ljava/lang/Iterable;

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 1064
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 1054
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->e()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h$b;

    .line 3086
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a()Ljava/util/Set;

    move-result-object v4

    .line 1054
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1065
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 1063
    check-cast v1, Ljava/lang/Iterable;

    .line 1066
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 1067
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1068
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 1055
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1069
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 1066
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method
