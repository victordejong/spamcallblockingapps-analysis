.class public final Lkotlin/reflect/jvm/internal/impl/load/java/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/f;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
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

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/f;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->a:Lkotlin/reflect/jvm/internal/impl/load/java/f;

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/n;

    .line 15
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->s:Lkotlin/reflect/jvm/internal/impl/c/c;

    const-string v2, "name"

    .line 2001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 15
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 16
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->s:Lkotlin/reflect/jvm/internal/impl/c/c;

    const-string v2, "ordinal"

    .line 3001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 16
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 17
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->P:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "size"

    .line 4001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 17
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 18
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 5001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 18
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->g:Lkotlin/reflect/jvm/internal/impl/c/c;

    const-string v2, "length"

    .line 6001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 19
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 20
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "keys"

    .line 7001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "keySet"

    .line 20
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "values"

    .line 8001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    .line 21
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 22
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->T:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "entries"

    .line 9001
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "entrySet"

    .line 22
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    .line 26
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 41
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Map$Entry;

    .line 27
    new-instance v4, Lkotlin/n;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 40
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 45
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 46
    check-cast v3, Lkotlin/n;

    .line 9028
    iget-object v4, v3, Lkotlin/n;->b:Ljava/lang/Object;

    .line 28
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 48
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 51
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 10027
    iget-object v3, v3, Lkotlin/n;->a:Ljava/lang/Object;

    .line 28
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->c:Ljava/util/Map;

    .line 30
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 31
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->d:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 31
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 58
    check-cast v1, Ljava/lang/Iterable;

    .line 31
    invoke-static {v1}, Lkotlin/a/n;->j(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    const-string v0, "name1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    .line 1071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->d:Ljava/util/Set;

    return-object v0
.end method

.method public static c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/f;->e:Ljava/util/Set;

    return-object v0
.end method
