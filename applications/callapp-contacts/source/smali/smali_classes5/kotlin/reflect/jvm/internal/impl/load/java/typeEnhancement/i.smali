.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

.field private static final c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 34
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NULLABLE:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 36
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    .line 255
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    const-string v1, "Object"

    .line 42
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Predicate"

    .line 43
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Function"

    .line 44
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Consumer"

    .line 45
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiFunction"

    .line 46
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiConsumer"

    .line 47
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UnaryOperator"

    .line 48
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stream/Stream"

    .line 49
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Optional"

    .line 50
    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;

    invoke-direct {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;-><init>()V

    const-string v11, "Iterator"

    .line 53
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v12, v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 54
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$a;

    invoke-direct {v11, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$a;-><init>(Ljava/lang/String;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const-string v13, "forEachRemaining"

    invoke-virtual {v12, v13, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v11, "Iterable"

    .line 58
    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 258
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v12, v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 59
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$g;

    invoke-direct {v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const-string v0, "spliterator"

    invoke-virtual {v12, v0, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Collection"

    .line 63
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v11, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$h;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$h;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v12, "removeIf"

    invoke-virtual {v11, v12, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$i;

    invoke-direct {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$i;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v12, "stream"

    invoke-virtual {v11, v12, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 71
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$j;

    invoke-direct {v0, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$j;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v8, "parallelStream"

    invoke-virtual {v11, v8, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "List"

    .line 75
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v8, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$k;

    invoke-direct {v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$k;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v7, "replaceAll"

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Map"

    .line 80
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v8, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$l;

    invoke-direct {v0, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$l;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v11, "forEach"

    invoke-virtual {v8, v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 84
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$m;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$m;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v11, "putIfAbsent"

    invoke-virtual {v8, v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 89
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$n;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$n;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v11, "replace"

    invoke-virtual {v8, v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 95
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$o;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$o;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v11, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 101
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$p;

    invoke-direct {v0, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$p;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 104
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$q;

    invoke-direct {v0, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v7, "compute"

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 111
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$r;

    invoke-direct {v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v7, "computeIfAbsent"

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 116
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$s;

    invoke-direct {v0, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v7, "computeIfPresent"

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 121
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$t;

    invoke-direct {v0, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v7, "merge"

    invoke-virtual {v8, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 262
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 129
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$u;

    invoke-direct {v7, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$u;-><init>(Ljava/lang/String;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "empty"

    invoke-virtual {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 132
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;

    invoke-direct {v7, v1, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "of"

    invoke-virtual {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 136
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$w;

    invoke-direct {v7, v1, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$w;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "ofNullable"

    invoke-virtual {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 140
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$x;

    invoke-direct {v7, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$x;-><init>(Ljava/lang/String;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v8, "get"

    invoke-virtual {v0, v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 143
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$y;

    invoke-direct {v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$y;-><init>(Ljava/lang/String;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const-string v9, "ifPresent"

    invoke-virtual {v0, v9, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "ref/Reference"

    .line 148
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v7, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$z;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$z;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v8, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 264
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 155
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$aa;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$aa;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v7, "test"

    invoke-virtual {v0, v7, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "BiPredicate"

    .line 160
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v2, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 161
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$ab;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$ab;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v7, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 266
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 168
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$b;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$b;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v4, "accept"

    invoke-virtual {v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 267
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 173
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$c;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$c;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 268
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 179
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$d;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$d;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v3, "apply"

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 269
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v0, v10, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 185
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$e;

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$e;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "Supplier"

    .line 191
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;

    invoke-direct {v2, v10, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$f;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i$f;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v8, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l$a;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 1252
    iget-object v0, v10, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/l;->a:Ljava/util/Map;

    .line 41
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->d:Ljava/util/Map;

    return-void
.end method

.method public static final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/j;",
            ">;"
        }
    .end annotation

    .line 41
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/i;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;

    return-object v0
.end method
