.class public final Lkotlin/reflect/jvm/internal/impl/load/java/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/m;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/m;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a:Lkotlin/reflect/jvm/internal/impl/load/java/m;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->b:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->Y:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.util.ArrayList"

    const-string v2, "java.util.LinkedList"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V

    .line 32
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->aa:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.util.HashSet"

    const-string v2, "java.util.TreeSet"

    const-string v3, "java.util.LinkedHashSet"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V

    .line 33
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->ab:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.util.HashMap"

    const-string v2, "java.util.TreeMap"

    const-string v3, "java.util.LinkedHashMap"

    const-string v4, "java.util.concurrent.ConcurrentHashMap"

    const-string v5, "java.util.concurrent.ConcurrentSkipListMap"

    .line 35
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V

    .line 37
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.util.function.Function"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const-string v1, "java.util.function.UnaryOperator"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V

    .line 38
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "java.util.function.BiFunction"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    const-string v1, "java.util.function.BinaryOperator"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/m;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 49
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 41
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-direct {v4, v3}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    const-string v0, "classFqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;)V"
        }
    .end annotation

    .line 27
    check-cast p1, Ljava/lang/Iterable;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/m;->b:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 27
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
