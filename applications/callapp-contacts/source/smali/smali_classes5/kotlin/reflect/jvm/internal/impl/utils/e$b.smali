.class final Lkotlin/reflect/jvm/internal/impl/utils/e$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/utils/e;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/g;Lkotlin/reflect/jvm/internal/impl/utils/g;Ljava/util/Map;ZLkotlin/reflect/jvm/internal/impl/utils/g;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/utils/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/e;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1042
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 2034
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/utils/e;->b:Lkotlin/reflect/jvm/internal/impl/utils/g;

    .line 1042
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 2035
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/utils/e;->c:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-eqz v1, :cond_0

    .line 1044
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/utils/g;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "under-migration:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/e$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 2036
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/utils/e;->d:Ljava/util/Map;

    .line 1078
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/utils/g;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/utils/g;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    :cond_1
    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 1081
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
