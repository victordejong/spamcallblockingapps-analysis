.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/HashMap<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/c/c;",
        "Lkotlin/reflect/jvm/internal/impl/resolve/c/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 6

    .line 1067
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1068
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    .line 1069
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v3

    const-string v4, "byInternalName(partInternalName)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 2015
    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 1071
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b$a;->a:[I

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v2, 0x2

    if-eq v4, v2, :cond_1

    goto :goto_0

    .line 1076
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1073
    :cond_2
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v2

    const-string v5, "byInternalName(header.multifileClassName ?: continue@kotlinClasses)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method
