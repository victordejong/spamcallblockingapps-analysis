.class public Lkotlin/reflect/jvm/internal/impl/load/java/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/y$c;,
        Lkotlin/reflect/jvm/internal/impl/load/java/y$b;,
        Lkotlin/reflect/jvm/internal/impl/load/java/y$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lkotlin/reflect/jvm/internal/impl/load/java/y$a;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/y$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/y$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->b:Lkotlin/reflect/jvm/internal/impl/load/java/y$a;

    const-string v0, "containsAll"

    const-string v1, "removeAll"

    const-string v2, "retainAll"

    .line 53
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lkotlin/a/ap;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "BOOLEAN.desc"

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    check-cast v3, Ljava/lang/String;

    .line 54
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "java/util/Collection"

    const-string v6, "Ljava/util/Collection;"

    .line 1031
    invoke-static {v4, v3, v6, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    .line 54
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 56
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 142
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 143
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 1044
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->b:Ljava/lang/String;

    .line 56
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 56
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->c:Ljava/util/List;

    .line 57
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 147
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 2044
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 57
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 57
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->d:Ljava/util/List;

    .line 149
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    new-array v0, v2, [Lkotlin/n;

    const-string v1, "Collection"

    .line 62
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "contains"

    const-string v7, "Ljava/lang/Object;"

    .line 3031
    invoke-static {v3, v6, v7, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    .line 63
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->FALSE:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 62
    invoke-static {v3, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    .line 64
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "remove"

    .line 4031
    invoke-static {v1, v6, v7, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v1

    .line 65
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->FALSE:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 64
    invoke-static {v1, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Map"

    .line 67
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "containsKey"

    .line 5031
    invoke-static {v8, v10, v7, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v8

    .line 68
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->FALSE:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 67
    invoke-static {v8, v9}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v0, v9

    .line 69
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "containsValue"

    .line 6031
    invoke-static {v8, v11, v7, v10}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v8

    .line 70
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->FALSE:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 69
    invoke-static {v8, v10}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v0, v10

    .line 71
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Ljava/lang/Object;Ljava/lang/Object;"

    .line 7031
    invoke-static {v8, v6, v4, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v8

    .line 75
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->FALSE:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 71
    invoke-static {v8, v11}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v8

    const/4 v11, 0x4

    aput-object v8, v0, v11

    .line 77
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "getOrDefault"

    .line 8031
    invoke-static {v8, v12, v4, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v4

    .line 81
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->MAP_GET_OR_DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 77
    invoke-static {v4, v8}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v0, v8

    .line 83
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "get"

    .line 9031
    invoke-static {v4, v12, v7, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v4

    .line 84
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->NULL:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 83
    invoke-static {v4, v13}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v4

    const/4 v13, 0x6

    aput-object v4, v0, v13

    .line 85
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10031
    invoke-static {v1, v6, v7, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v1

    .line 86
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->NULL:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 85
    invoke-static {v1, v4}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "List"

    .line 88
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 89
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v15

    const-string v4, "INT.desc"

    invoke-static {v15, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "indexOf"

    .line 11031
    invoke-static {v14, v13, v7, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v13

    .line 89
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->INDEX:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 88
    invoke-static {v13, v14}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v0, v14

    const/16 v13, 0x9

    .line 90
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "lastIndexOf"

    .line 12031
    invoke-static {v1, v8, v7, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v1

    .line 91
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/y$c;->INDEX:Lkotlin/reflect/jvm/internal/impl/load/java/y$c;

    .line 90
    invoke-static {v1, v8}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    aput-object v1, v0, v13

    .line 61
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    .line 95
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->e:Ljava/util/Map;

    .line 150
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/a/ai;->a(I)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 151
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 153
    check-cast v8, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 12044
    iget-object v13, v13, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->b:Ljava/lang/String;

    .line 151
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    :cond_3
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->f:Ljava/util/Map;

    .line 100
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/a/ap;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 101
    check-cast v0, Ljava/lang/Iterable;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 157
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 158
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 13044
    iget-object v13, v13, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 101
    invoke-interface {v1, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 159
    :cond_4
    check-cast v1, Ljava/util/List;

    .line 156
    check-cast v1, Ljava/lang/Iterable;

    .line 101
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->g:Ljava/util/Set;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 161
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 162
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 14044
    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->b:Ljava/lang/String;

    .line 102
    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 163
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 160
    check-cast v1, Ljava/lang/Iterable;

    .line 102
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->h:Ljava/util/Set;

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "java/util/List"

    const-string v8, "removeAt"

    .line 15031
    invoke-static {v1, v8, v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v0

    .line 109
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->i:Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 164
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    new-array v1, v14, [Lkotlin/n;

    const-string v7, "Number"

    .line 113
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v13

    const-string v14, "BYTE.desc"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "toByte"

    const-string v15, ""

    .line 16031
    invoke-static {v8, v14, v15, v13}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v8

    const-string v13, "byteValue"

    .line 113
    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v13

    invoke-static {v8, v13}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v8

    aput-object v8, v1, v5

    .line 114
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v8

    const-string v13, "SHORT.desc"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "toShort"

    .line 17031
    invoke-static {v5, v13, v15, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v5

    const-string v8, "shortValue"

    .line 114
    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v5

    aput-object v5, v1, v3

    .line 115
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "toInt"

    .line 18031
    invoke-static {v3, v8, v15, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    const-string v5, "intValue"

    .line 115
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    aput-object v3, v1, v9

    .line 116
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    const-string v8, "LONG.desc"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "toLong"

    .line 19031
    invoke-static {v3, v8, v15, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    const-string v5, "longValue"

    .line 116
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    aput-object v3, v1, v10

    .line 117
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    const-string v8, "FLOAT.desc"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "toFloat"

    .line 20031
    invoke-static {v3, v8, v15, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    const-string v5, "floatValue"

    .line 117
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    aput-object v3, v1, v11

    .line 118
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DOUBLE.desc"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "toDouble"

    .line 21031
    invoke-static {v3, v7, v15, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v3

    const-string v5, "doubleValue"

    .line 118
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 119
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-string v0, "CharSequence"

    .line 120
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/c/d;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/c/d;->getDesc()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CHAR.desc"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22031
    invoke-static {v0, v12, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/y$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    move-result-object v0

    const-string v3, "charAt"

    .line 121
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    .line 112
    invoke-static {v1}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    .line 126
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->j:Ljava/util/Map;

    .line 165
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/a/ai;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 167
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 168
    check-cast v3, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 22044
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->b:Ljava/lang/String;

    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 126
    :cond_6
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->k:Ljava/util/Map;

    .line 128
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 172
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 173
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 23044
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 128
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 174
    :cond_7
    check-cast v1, Ljava/util/List;

    .line 128
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->l:Ljava/util/List;

    .line 131
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 177
    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    new-instance v3, Lkotlin/n;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    .line 24044
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 178
    :cond_8
    check-cast v1, Ljava/util/List;

    .line 175
    check-cast v1, Ljava/lang/Iterable;

    .line 179
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 180
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 181
    check-cast v2, Lkotlin/n;

    .line 25028
    iget-object v3, v2, Lkotlin/n;->b:Ljava/lang/Object;

    .line 133
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 183
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 186
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_9
    check-cast v4, Ljava/util/List;

    .line 26027
    iget-object v2, v2, Lkotlin/n;->a:Ljava/lang/Object;

    .line 133
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->m:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->c:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/Set;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->g:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/Set;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->h:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic e()Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->i:Lkotlin/reflect/jvm/internal/impl/load/java/y$a$a;

    return-object v0
.end method

.method public static final synthetic f()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->k:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic g()Ljava/util/List;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->l:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic h()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y;->m:Ljava/util/Map;

    return-object v0
.end method
